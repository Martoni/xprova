package net.xprova.propertylanguage;

import java.util.Arrays;
import java.util.Map;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.tree.ParseTree;

import net.xprova.propertylanguage.PropertyLanguageParser.AtomContext;
import net.xprova.propertylanguage.PropertyLanguageParser.PropertyContext;

public class PropertyBuilder {

	// these must be the same as their correspondents in grammar:
	public static final String NOT = "~";
	public static final String AND = "&";
	public static final String XOR = "^";
	public static final String OR = "|";
	public static final String EQ = "==";
	public static final String NEQ = "!=";
	public static final String LT = "<";
	public static final String GT = ">";
	public static final String LE = "<=";
	public static final String GE = ">=";
	public static final String IMPLY = "|->";
	public static final String IMPLY_NEXT = "|=>";
	public static final String LPAREN = "(";
	public static final String AT = "@";
	public static final String HASH = "#";
	public static final String DOUBLE_HASH = "##";
	public static final String ROSE = "$rose";
	public static final String FELL = "$fell";
	public static final String STABLE = "$stable";
	public static final String CHANGED = "$changed";
	public static final String ALWAYS = "$always";
	public static final String ONCE = "$once";
	public static final String NEVER = "$never";
	public static final String EVENTUALLY = "$eventually";
	public static final String UNTIL = "$until";
	public static final String WHEN = "$when";
	public static final String ANY = "$any";
	public static final String ALL = "$all";
	public static final String BITS = "$bits";

	public static final String[] comparisonOps = { EQ, NEQ, LT, GT, LE, GE };

	private static void rewriteSyntaticSugar(Property root) {

		// $until(x,y) into $never(x) |-> y

		if (root.name.equals(UNTIL)) {

			Property neverX = Property.build(NEVER).setChild(root.children.get(0));

			Property y = root.children.get(1);

			root.setChild(neverX).addChild(y).name = IMPLY;

		}

		// change (x |=> #n y) into (x |-> #n+1 y)

		if (root.name.equals(IMPLY_NEXT)) {

			root.name = IMPLY;

			root.children.get(1).delay -= 1;

		}

		// change (x |-> y) into (~x | y)

		if (root.name.equals(IMPLY)) {

			Property c1 = root.children.get(0);
			Property c2 = root.children.get(1);

			Property notC1 = Property.build(NOT).setChild(c1);

			root.setChild(notC1).addChild(c2).name = OR;

		}

		// change ($rose(x)) into (~x & #1 x)

		if (root.name.equals(ROSE)) {

			Property c1 = root.children.get(0);

			Property notC1 = Property.build(NOT).setChild(new Property(c1));

			notC1.delay += 1;

			root.setChild(c1).addChild(notC1).name = AND;

		}

		// change ($fell(x)) into (x & #1 ~x)

		if (root.name.equals(FELL)) {

			Property c1 = root.children.get(0);

			Property notC1 = Property.build(NOT).setChild(new Property(c1));

			c1.delay += 1;

			root.setChild(c1).addChild(notC1).name = AND;

		}

		// $stable(x) into ~(x ^ #1 x)

		if (root.name.equals(STABLE)) {

			Property c1 = new Property(root.children.get(0));
			Property c2 = new Property(root.children.get(0));

			c2.delay += 1;

			Property xorN = Property.build(XOR).addChild(c1).addChild(c2);

			root.setChild(xorN).name = NOT;

		}

		// $changed(x) into (x ^ #1 x)

		if (root.name.equals(CHANGED)) {

			Property c1 = new Property(root.children.get(0));
			Property c2 = new Property(root.children.get(0));

			c2.delay += 1;

			root.setChild(c1).addChild(c2).name = XOR;

		}

		// $never(x) into $always(~x)

		if (root.name.equals(NEVER)) {

			Property notChild = Property.build(NOT).setChildren(root.children);

			root.setChild(notChild).name = ALWAYS;

		}

		// $once(x) into ~$always(~x)

		if (root.name.equals(ONCE)) {

			Property notChild = Property.build(NOT).setChildren(root.children);

			Property always = Property.build(ALWAYS).setChild(notChild);

			root.setChild(always).name = NOT;

		}

		// $when(t, {x1, x2, ...}) into {$when(t, x1), $when(t, x2), ...}
		// same for other functions in group1 below

		final String[] group1 = { WHEN, UNTIL };

		if (Arrays.asList(group1).contains(root.name)) {

			Property t = root.children.get(0);

			Property expr = root.children.get(1);

			if (expr.name.equals("{")) {

				String oldRootName = root.name;

				root.setName("{").children.clear();

				for (Property x : expr.children) {

					Property when = Property.build(oldRootName).addChild(t).addChild(x);

					root.addChild(when);

				}

			}

		}

		// $always({x1, x2, ...}) into {$always(x1), $always(t, x2), ...}
		// same for other functions in group2 below

		final String[] group2 = { ROSE, FELL, STABLE, CHANGED, ALWAYS, NEVER, ONCE };

		if (Arrays.asList(group2).contains(root.name)) {

			Property expr = root.children.get(0);

			if (expr.name.equals("{")) {

				String oldRootName = root.name;

				root.setName("{").children.clear();

				for (Property x : expr.children) {

					Property when = Property.build(oldRootName).addChild(x);

					root.addChild(when);

				}

			}

		}

		// unwrap parenthesis around single child

		if (root.name.equals("(") && root.children.size() == 1) {

			Property c = root.children.get(0);

			int newDelay = root.delay + c.delay;

			root.copyFrom(c).delay(newDelay);

		}

		for (Property c : root.children)
			rewriteSyntaticSugar(c);

	}

	private static Property parseAST(ParseTree root, Map<String, Integer> identifiers) throws Exception {

		if (root.getChildCount() == 1) {

			if (root.getPayload() instanceof AtomContext) {

				String id = root.getText();

				if (isInteger(id)) {
					return Property.build(id);
				}

				Integer bits = identifiers.get(id);

				if (bits == null) {

					throw new Exception("unrecognized identifier: " + id);

				} else if (bits == 1) {

					return Property.build(root.getText());

				} else {

					// multiple bits, insert grouping operator

					Property g = Property.build("{");

					for (int i = 0; i < bits; i++) {

						String strChild = String.format("%s[%d]", id, i);

						g.addChild(Property.build(strChild));

					}

					return g;

				}

			} else {

				return parseAST(root.getChild(0), identifiers);

			}

		}

		if (root.getChildCount() == 2) {

			// NOT

			Property child = parseAST(root.getChild(1), identifiers);

			return Property.build(root.getChild(0).getText()).setChild(child);

		}

		String c0 = root.getChild(0).getText();
		String c1 = root.getChild(1).getText();

		final String[] funcs = { ROSE, FELL, STABLE, CHANGED, ALWAYS, NEVER, ONCE, ANY, ALL, BITS };

		if (Arrays.asList(funcs).contains(c0)) {

			Property child = parseAST(root.getChild(2), identifiers);

			return Property.build(c0).setChild(child);

		}

		if (AND.equals(c1) || XOR.equals(c1) || OR.equals(c1)) {

			Property result = Property.build(c1);

			for (int i = 0; i < root.getChildCount(); i += 2)
				result.addChild(parseAST(root.getChild(i), identifiers));

			return result;

		}

		if (DOUBLE_HASH.equals(c1)) {

			Property result = Property.build(AND);

			int cumDelay = 0;

			for (int i = 0; i < root.getChildCount(); i++) {

				ParseTree ci = root.getChild(i);

				if (ci.getPayload() instanceof Token) {

					Token pl = (Token) ci.getPayload();

					if (DOUBLE_HASH.equals(pl.getText())) {

						cumDelay += 1;

					} else {

						// token is NUM

						// mind the (-1): we've incremented cumDelay when
						// we processed the preceding DOUBLE_DASH so this
						// is to make the total increase due to ##n equal
						// to n

						cumDelay += Integer.valueOf(pl.getText()) - 1;

					}

				} else {

					// this is an identifier

					Property childNode = parseAST(ci, identifiers);

					childNode.delay -= cumDelay;

					result.addChild(childNode);

				}

			}

			return result;

		}

		final String[] twoOps = { EQ, NEQ, IMPLY, IMPLY_NEXT, LT, GT, LE, GE };

		if (Arrays.asList(twoOps).contains(c1)) {

			Property op1 = parseAST(root.getChild(0), identifiers);
			Property op2 = parseAST(root.getChild(2), identifiers);

			return Property.build(c1).addChild(op1).addChild(op2);

		}

		if (c0.equals(LPAREN)) {

			return parseAST(root.getChild(1), identifiers);

		}

		if (c0.equals(AT)) {

			Property expr = parseAST(root.getChild(2), identifiers);

			int delay = Integer.valueOf(c1);

			return Property.build(LPAREN).setChild(expr).delay(delay);

		}

		if (c0.equals(HASH)) {

			Property child = parseAST(root.getChild(2), identifiers);

			int delay = -Integer.valueOf(c1);

			return Property.build(LPAREN).setChild(child).delay(delay);

		}

		if (c0.equals(EVENTUALLY)) {

			if (root.getChildCount() == 6) {

				Property trigger = parseAST(root.getChild(2), identifiers);

				Property expr = parseAST(root.getChild(4), identifiers);

				return Property.build(EVENTUALLY).addChild(trigger).addChild(expr);

			} else if (root.getChildCount() == 4) {

				Property expr = parseAST(root.getChild(2), identifiers);

				return Property.build(EVENTUALLY).addChild(expr);

			}

		}

		if (c0.equals(UNTIL) | c0.equals(WHEN)) {

			Property trigger = parseAST(root.getChild(2), identifiers);

			Property expr = parseAST(root.getChild(4), identifiers);

			return Property.build(c0).addChild(trigger).addChild(expr);

		}

		System.out.println(root.getText());

		throw new Exception("error while traversing property AST");

	}

	private static boolean isInteger(String str) {

		return str.matches("\\d+(\\d+)?");
	}

	public static Property build(String str, Map<String, Integer> identifiers) throws Exception {

		// step 1: generate property AST

		ANTLRInputStream antlr = new ANTLRInputStream(str);

		PropertyLanguageLexer lexer1 = new PropertyLanguageLexer(antlr);

		CommonTokenStream tokenStream = new CommonTokenStream(lexer1);

		PropertyLanguageParser p1 = new PropertyLanguageParser(tokenStream);

		PropertyContext e = p1.property();

		// step 2: traverse AST to generate expression tree

		Property root = parseAST(e.getChild(0), identifiers);

		// step 3: process syntactic sugar

		rewriteSyntaticSugar(root);

		// step 4: normalise delays

		root.flattenDelays(0);

		root.addDelayRecur(-root.getMinDelay(0));

		root.groupDelays(identifiers);

		return root;

	}

}
