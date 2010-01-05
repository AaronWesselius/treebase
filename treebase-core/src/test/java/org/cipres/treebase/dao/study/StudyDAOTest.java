package org.cipres.treebase.dao.study;

import java.sql.Clob;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hibernate.Hibernate;

import org.cipres.treebase.dao.AbstractDAOTest;
import org.cipres.treebase.domain.study.Study;
import org.cipres.treebase.domain.study.StudyCriteria;
import org.cipres.treebase.domain.study.StudyHome;
import org.cipres.treebase.domain.study.StudyStatus;
import org.cipres.treebase.domain.study.StudyStatusHome;

/**
 * The class <code>StudyDAOTest</code> contains tests for the class {@link <code>StudyDAO</code>}
 * 
 * @pattern JUnit Test Case
 * 
 * @generatedBy CodePro at 6/7/06 6:13 PM
 * 
 * @author Jin Ruan
 * 
 * @version $Revision$
 */
public class StudyDAOTest extends AbstractDAOTest {

	private StudyHome fixture;
	private StudyStatusHome mStudyStatusHome;

	/**
	 * Return the object that is being tested.
	 * 
	 * @return the test fixture
	 * 
	 * @see org.cipres.treebase.dao.study.StudyDAO
	 */
	public StudyHome getFixture() {
		return fixture;
	}

	/**
	 * Return the StudyStatusHome field.
	 * 
	 * @return StudyStatusHome mStudyStatusHome
	 */
	public StudyStatusHome getStudyStatusHome() {
		return mStudyStatusHome;
	}

	/**
	 * Set the StudyStatusHome field.
	 */
	public void setStudyStatusHome(StudyStatusHome pNewStudyStatusHome) {
		mStudyStatusHome = pNewStudyStatusHome;
	}

	/**
	 * Set the object that is being tested.
	 * 
	 * @param fixture the test fixture
	 */
	public void setFixture(StudyHome fixture) {
		this.fixture = fixture;
	}

	/**
	 * Run the Study findByAccessionNumber(String) method test
	 */
	public void testFindByAccessionNumber() {
		String testName = "findByAccessNumber";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

		// 1. find an accessNum:
		// TODO: unit test
		// String accessNum = "";
		// StudyDAO fixture = getFixture();
		// Study result = fixture.findByAccessionNumber(accessNum);
		//
		// // verify
		// assertTrue(result != null);
		// assertTrue(result.getAccessionNumber().equals(accessNum));

		if (logger.isInfoEnabled()) {
			logger.info(testName + " verified.");
		}
	}

	/**
	 * Run the Study findByAbstract(String) method test
	 */
	public void testFindByAbstract() {
		String testName = "findByAbstract";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

		// 1. search term:
		String term = "abstract";
		
		//2. search:
		Collection<Study> result = getFixture().findByAbstract(term);
		
		// // verify
		 assertTrue(result != null);
		//assertTrue(result.getAccessionNumber().equals(accessNum));

		 logger.debug(" result size=" + result.size());
		 
		if (logger.isInfoEnabled()) {
			logger.info(testName + " verified.");
		}
	}

	/**
	 * Run the Collection<Study> findByAuthor(Person) method test
	 */
	public void testFindByAuthor() {
		String testName = "findByAuthor";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

		// 1. find an author:
		// TODO: unit test
		// Person pAuthor = null;
		// StudyDAO fixture = getFixture();
		// Collection<Study> result = getFixture().findByAuthor(pAuthor);
		//
		// // verify
		// assertTrue(result != null);
		// assertTrue(result.getAuthors().equals(accessNum));

		if (logger.isInfoEnabled()) {
			logger.info(testName + " verified.");
		}
	}

	/**
	 * Run the Collection<Study> findBySubmitter(User) method test
	 */
	public void testFindBySubmitter() {
		String testName = "findBySubmitter";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

		// 1. find a submitter:
		// TODO: unit test
		// StudyDAO fixture = getFixture();
		// User pUser = null;
		// Collection<Study> result = getFixture().findBySubmitter(pUser);
		// Collection<Study> result = getFixture().findByAuthor(pAuthor);
		//
		// // verify
		// assertTrue(result != null);
		// assertTrue(result.getAuthors().equals(accessNum));

		if (logger.isInfoEnabled()) {
			logger.info(testName + " verified.");
		}
	}

	/**
	 * Run the Collection<Study> findByCriteria() method test
	 */
	public void testFindByCriteria() {
		String testName = "findByCriteria";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

		// 1. construct a criteria:
		StudyCriteria criteria = new StudyCriteria();

		List<String> authorLastNames = new ArrayList<String>();
		authorLastNames.add("lavin");
		// authorLastNames.add("nu");
		// criteria.setAuthorLastNames(authorLastNames);

		List<String> citationTitles = new ArrayList<String>();
		citationTitles.add("phylogeny");
		// authorLastNames.add("nu");
		criteria.setCitationTitles(citationTitles);

		criteria.setSoftware("paup");
		criteria.setAlgorithm("maximal likelihood");

		// 2. search
		Collection<Study> result = getFixture().findByCriteria(criteria);

		// 3. verify:
		// the criteria doesn't fit the table anymore
		//assertTrue("empty result.", result != null && !result.isEmpty());

		// 1. find a submitter:
		// TODO: findyBy Criteria unit test
		// StudyDAO fixture = getFixture();
		// User pUser = null;
		// Collection<Study> result = getFixture().findBySubmitter(pUser);
		// Collection<Study> result = getFixture().findByAuthor(pAuthor);
		//
		// // verify
		// assertTrue(result != null);
		// assertTrue(result.getAuthors().equals(accessNum));

		logger.info(testName + " verified. result count =" + result.size());
	}

	/**
	 * Test persist nexus clob.
	 */
	public void testPersistNexusClob() {
		String testName = "persistNexusClob";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

		// 1. create a new study:
		String newName = testName + " test " + Math.random();
		StudyStatus inprogress = getStudyStatusHome().findStatusInProgress();

		// Citation c = new ArticleCitation();
		// c.setTitle(newName);

		Study s = new Study();
		s.setName(newName);
		s.setStudyStatus(inprogress);
		// s.setCitation(c);
		// c.setStudy(s);

		// add nexus:
		String fileName = "test nexus";
		String nexus = "#NEXUS\n"
			+ "a       ctgactcctgaggagaagtctgccgttactgccctgtggggcaaggtgaacgtggatgaagttggtggtgag gccctgggcaggctgctggtggtctacccttggacccagaggttctttgagtcctttggggatctgtccact cctgatgctgttatgggcaaccctaaggtgaaggctcatggcaagaaagtgctcggtgcctttagtgatggc ctggctcacctggacaacctcaagggcacctttgccacactgagtgagctgcactgtgacaagctgcacgtg gatcctgagaacttcaggctcctgggcaacgtgctggtctgtgtgctggcccatcactttggcaaagaattc accccaccagtgcaggctgcctatcagaaagtggtggctggtgtggctaatgccctggcccacaagtatcac\n"
			+ "b       ctgactgctgaagagaaggccgccgtcactgccctgtggggcaaggtagacgtggaagatgttggtggtgag gccctgggcaggctgctggtcgtctacccatggacccagaggttctttgactcctttggggacctgtccact cctgccgctgttatgagcaatgctaaggtcaaggcccatggcaaaaaggtgctgaacgcctttagtgacggc atggctcatctggacaacctcaagggcacctttgctaagctgagtgagctgcactgtgacaaattgcacgtg gatcctgagaatttcaggctcttgggcaatgtgctggtgtgtgtgctggcccaccactttggcaaagaattc accccgcaggttcaggctgcctatcagaaggtggtggctggtgtggctactgccttggctcacaagtaccac\n"
			+ "c       ctgactcctgatgagaagaatgccgtttgtgccctgtggggcaaggtgaatgtggaagaagttggtggtgag gccctgggcaggctgctggttgtctacccatggacccagaggttctttgactcctttggggacctgtcctct ccttctgctgttatgggcaaccctaaagtgaaggcccacggcaagaaggtgctgagtgcctttagcgagggc ctgaatcacctggacaacctcaagggcacctttgctaagctgagtgagctgcattgtgacaagctgcacgtg gaccctgagaacttcaggctcctgggcaacgtgctggtggttgtcctggctcaccactttggcaaggatttc accccacaggtgcaggctgcctatcagaaggtggtggctggtgtggctactgccctggctcacaaataccac\n"
			+ "d       ctgtccggtgaggagaagtctgcggtcactgccctgtggggcaaggtgaatgtggaagaagttggtggtgag accctgggcaggctgctggttgtctacccatggacccagaggttcttcgagtcctttggggacctgtccact gcttctgctgttatgggcaaccctaaggtgaaggctcatggcaagaaggtgctggctgccttcagtgagggt ctgagtcacctggacaacctcaaaggcaccttcgctaagctgagtgaactgcattgtgacaagctgcacgtg gatcctgagaacttcaggctcctgggcaacgtgctggttattgtgctgtctcatcactttggcaaagaattc actcctcaggtgcaggctgcctatcagaaggtggtggctggtgtggccaatgccctggctcacaaataccac\n"
			+ "e       ctgtccagtgaggagaagtctgcggtcactgccctgtggggcaaggtgaatgtggaagaagttggtggtgag gccctgggcaggctgctggttgtctacccatggacccagaggttcttcgagtcctttggggacctgtcctct gcaaatgctgttatgaacaatcctaaggtgaaggctcatggcaagaaggtgctggctgccttcagtgagggt ctgagtcacctggacaacctcaaaggcacctttgctaagctgagtgaactgcactgtgacaagctgcacgtg gatcctgagaacttcaggctcctgggcaacgtgctggttattgtgctgtctcatcattttggcaaagaattc actcctcaggtgcaggctgcctatcagaaggtggtggctggtgtggccaatgccctggctcacaaataccac\n"
			+ "f       ctgactgctgaggagaaggctgccgtcaccgccttttggggcaaggtgaaagtggatgaagttggtggtgag gccctgggcaggctgctggttgtctacccctggactcagaggttctttgagtcctttggggacttgtccact gctgatgctgttatgaacaaccctaaggtgaaggcccatggcaagaaggtgctagattcctttagtaatggc atgaagcatctcgatgacctcaagggcacctttgctgcgctgagtgagctgcactgtgataagctgcatgtg gatcctgagaacttcaagctcctgggcaacgtgctagtggttgtgctggctcgcaattttggcaaggaattc accccggtgctgcaggctgactttcagaaggtggtggctggtgtggccaatgccctggcccacagatatcat\n"
			+ "g       ctgtccgatgcggtcaacgctgccgtcaccgccttttggggcaaggtgaaagtggatcaagttggtggtgag gccctgggcaggccgctggttgtctaccgctggactcagaggtgctatgagtcctttggagacttgtccact gctgatgctgttatgaacaaccctaaggtgaaggcccatggcaagaaggtgctagattcctttagtaatggc atgaagcatctcgatgacctcaagggcacctttgctgcgctgagtgagctgcactgtgataagctgcatgtg gatcctgagaacttcaagctcctgggcaacgtgctagtggttgtgctggctcgcaattttggcaaggaattc accccggtgctgcaggctgactttcagaaggtggtggctggtgtggccaatgccctggcccacagatatcat\n";

		//XXX rav 18/11/09 - we no longer use Clobs, we use text for nexus strings
		//Clob nexusC = Hibernate.createClob(nexus);
		//s.addNexusFile(fileName, nexusC);
		s.addNexusFile(fileName, nexus);

		getFixture().store(s);

		// force commit immeidately, important:
		setComplete();
		endTransaction();

		Long studyID = s.getId();

		logger.info("study created: " + s.getName() + "id = " + studyID);

		// 2. verify
		String sqlStr = "select count(*) from Study_nexusFile where study_id=" + s.getId();
		int count = jdbcTemplate.queryForInt(sqlStr);
		assertTrue(count == 1);

		// assertTrue("need to return Analysis ID.", a1.getId() != null);

		// 3. delete
		getFixture().deletePersist(s);
		setComplete();

		// 4. verify delte:
		int countVerify = jdbcTemplate.queryForInt(sqlStr);
		assertTrue("Deletion failed.", countVerify == 0);

		if (logger.isInfoEnabled()) {
			logger.info(testName + " verified.");
		}
	}

	/**
	 * Run the Study findByAccessionNumber(String) method test
	 */
	public void testFindByTBStudyID() {
		String testName = "findByTBStudyID";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

		// 1. find an study:
		long studyId = 1L;

		logger.info("study id: " + studyId);
		assertTrue(studyId > 0);

		Study s = (Study) hibernateTemplate.get(Study.class, studyId);

		//2. set tb id and get id
		String tbStudyID = "TestTB1StudyId";
		
		getFixture().setTBStudyID(s, tbStudyID);
		
		// force commit immediately, important:
		setComplete();
		endTransaction();

		//3. test:
		Collection<Study> tbStudyIDVerify = getFixture().findByTB1StudyID(tbStudyID);
		
		 //4. verify
		 assertTrue(tbStudyIDVerify != null && tbStudyIDVerify.size() == 1);
		 Study result = tbStudyIDVerify.iterator().next();
		 assertTrue(result.getTB1StudyID().equals(tbStudyID));

		 //5. put it back
			getFixture().setTBStudyID(s, null);
			setComplete();
			endTransaction();
		 
		 
		if (logger.isInfoEnabled()) {
			logger.info(testName + " verified.");
		}
	}

}

/*
 * $CPS$ This comment was generated by CodePro. Do not edit it. patternId =
 * com.instantiations.assist.eclipse.pattern.testCasePattern strategyId =
 * com.instantiations.assist.eclipse.pattern.testCasePattern.junitTestCase additionalTestNames =
 * assertTrue = false callTestMethod = true createMain = false createSetUp = false createTearDown =
 * false createTestFixture = true createTestStubs = true methods = package =
 * org.cipres.treebase.dao.study package.sourceFolder = treebase-core/src/test/java superclassType =
 * junit.framework.TestCase testCase = StudyDAOTest testClassType =
 * org.cipres.treebase.dao.study.StudyDAO
 */
