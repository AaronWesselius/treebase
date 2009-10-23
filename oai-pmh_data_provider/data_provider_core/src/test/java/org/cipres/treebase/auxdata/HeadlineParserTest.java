package org.cipres.treebase.auxdata;

import junit.framework.TestCase;

public class HeadlineParserTest extends TestCase {

	static final int STRING = java.io.StreamTokenizer.TT_WORD,
	EOL = java.io.StreamTokenizer.TT_EOL;	
	Token t[] = { new Token('>'), new Token("STUDY"), 
			new Token('['), new Token(1.0), new Token(']'), 
			new Token(EOL) };
	LazyList<Token> tok1 = new LazyList<Token> (t);

	public void testParse() {
		RDParserResult res = (new HeadlineParser()).Parse(tok1);
		assertTrue(res.success());
		assertSame(ValueHeadline.class, res.value().getClass());
		ValueHeadline vh = (ValueHeadline) res.value();
		assertEquals("STUDY", vh.label);
		assertEquals(1, vh.index);
	}
	
	public void testHeadline_Parser() {
		assertNotNull(new HeadlineParser());
	}

}
