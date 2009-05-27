package org.cipres.treebase.dao.admin;

import java.util.Collection;
import java.util.List;

import org.cipres.treebase.dao.AbstractDAOTest;
import org.cipres.treebase.domain.admin.Person;
import org.cipres.treebase.domain.admin.PersonHome;

/**
 * The class <code>PersonDAOTest</code> contains tests for the class
 * {@link <code>PersonDAO</code>}
 * 
 * @pattern JUnit Test Case
 * 
 * @generatedBy CodePro at 6/2/06 4:20 PM
 * 
 * @author Jin Ruan
 * 
 * @version $Revision$
 */
@SuppressWarnings("unchecked")
public class PersonDAOTest extends AbstractDAOTest {

	private PersonHome mPersonHome;

	// Note: cannot have constructor.
	// Note: getter/setter have to be public for autowire.

	// public PersonDAOTest(String name) {
	// super();
	// }
	//

	/**
	 * Return the PersonHome field.
	 * 
	 * @return PersonHome mPersonHome
	 */
	public PersonHome getPersonHome() {
		return mPersonHome;
	}

	/**
	 * Set the PersonHome field.
	 */
	public void setPersonHome(PersonHome pNewPersonHome) {
		mPersonHome = pNewPersonHome;
	}

	/**
	 * Run the void delete(Person) method test
	 */
	public void testDelete() {
		String testName = "CreateAndDelete";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

		// 1. create a new Person:
		String newName = testName + " test " + Math.random();
		Person p = new Person();
		p.setFirstName("testF");
		p.setLastName("testLD");

		String email = "test@cipres.treebase.org";
		p.setEmailAddressString(email);

		PersonHome fixture = getPersonHome();
		fixture.store(p);

		// force commit immediately, important:
		setComplete();
		endTransaction();
		logger.info("person created: " + p.getLastName() + "id = " + p.getId());

		// 2. verify
		String sqlStr = "select count(*) from Person where person_id=" + p.getId();
		int count = jdbcTemplate.queryForInt(sqlStr);
		assertTrue(count == 1);

		// 3. delete
		// fixture.delete(testRole);
		fixture.deletePersist(p);
		setComplete();

		// 4. verify delete:
		int countVerify = jdbcTemplate.queryForInt(sqlStr);
		assertTrue(countVerify == 0);

		if (logger.isInfoEnabled()) {
			logger.info(testName + " - end "); //$NON-NLS-1$
		}
	}

	/**
	 * Run the Person findByID(Long) method test
	 */
	public void testFindByID() {
		String testName = "findByID";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

		// 1. find a valid id first:
		List<String> ids = jdbcTemplate.queryForList("select person_id from person", String.class);

		if (ids.size() > 0) {
			assertTrue("Empty Person table.", ids.size() > 0);

			// 2. find by user name:
			PersonHome fixture = getPersonHome();
			Long anId = Long.parseLong(ids.get(0));

			Person result = fixture.findPersistedObjectByID(Person.class, anId);

			// 3. verify
			assertTrue("Result is null", result != null);
			assertTrue("Result id does not match.", result.getId().equals(anId));

			if (logger.isInfoEnabled()) {
				logger.info(testName + " verified id =" + anId);
			}
		}

	}

	/**
	 * Run the Person findByExactMatch(Person) method test
	 */
	public void testFindByExactMatch() throws Exception {
		String testName = "findByExactMatch";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

		// 1. find a valid person first:
		Person p = (Person) loadObject(Person.class);

		assertTrue("Empty Person table.", p != null);

		// 2. create a new person object and test:
		Person newP = new Person();
		newP.setEmailAddressString(p.getEmailAddressString());
		newP.setFirstName(p.getFirstName());
		newP.setLastName(p.getLastName());

		PersonHome fixture = getPersonHome();
		Person result = fixture.findByExactMatch(newP);

		// 3. verify
		assertTrue(result != null);
		assertTrue(result.getLastName().equals(result.getLastName()));

		// Notes: this is a dangerous verification. Let's see if it works:
		assertTrue(result.getId().equals(p.getId()));

		if (logger.isInfoEnabled()) {
			logger.info(testName + " verified id =" + p.getId() + " lastname =" + p.getLastName());
		}

	}

	/**
	 * Run the Collection<Person> findByLastName(String) method test
	 */
	public void testFindByLastName() {
		String testName = "findByLastName";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

		// 1. find a valid username first:
		List<String> lastNames = jdbcTemplate.queryForList(
			"select lastname from person",
			String.class);

		if (lastNames.size() > 0) {
			assertTrue("Empty Person table.", lastNames.size() > 0);

			// 2. find by last name:
			PersonHome fixture = getPersonHome();
			String lastName = lastNames.get(0);
			Collection<Person> results = fixture.findByLastName(lastName);

			// 3. verify
			assertTrue(results != null && !results.isEmpty());

			for (Person person : results) {
				assertTrue(person.getLastName().equalsIgnoreCase(lastName));
			}

			if (logger.isInfoEnabled()) {
				logger.info(testName + " verified lastname =" + lastName);
			}
		}

	}
	
	/**
	 * Run the List<String> findCompleteEmailAddress(String) method test
	 */
	public void testFindCompleteEmailAddress() {
		String testName = "findCompleteEmailAddress";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

		// 1. find a valid email address:
		List<String> emails = jdbcTemplate.queryForList(
			"select email from person where email is not null",
			String.class);

		if (emails.size() > 0) {
			assertTrue("Empty Person table.", emails.size() > 0);

			// 2. find:
			PersonHome fixture = getPersonHome();
			String partialMatch = "Te";
			Collection<String> results = fixture.findCompleteEmailAddress(partialMatch);

			// 3. verify
			assertTrue(results != null && !results.isEmpty());

			for (String anEmail : results) {
				assertTrue(anEmail.toLowerCase().startsWith(partialMatch.toLowerCase()));
			}

			if (logger.isInfoEnabled()) {
				logger.info(testName + " verified partialmatch size =" + results.size());
			}
		}

	}
	
	/**
	 * Run the List<Person> findDuplicateWithFirstAndLastNames method test
	 */
	public void testFindDuplicateWithFirstAndLastNames() {
		String testName = "findDuplicateWithFirstAndLastNames";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

			// 2. test:
			PersonHome fixture = getPersonHome();
			Collection<Person> results = fixture.findDuplicateWithFirstAndLastNames();

			// 3. verify
			assertTrue(results != null && !results.isEmpty());

			for (Person person : results) {
				//assertTrue(person.getLastName().equalsIgnoreCase(lastName));
				logger.debug(person.getLastName() + " " + person.getFirstName() + " id=" + person.getId());
			}

			if (logger.isInfoEnabled()) {
				logger.info(testName + " verified size =" + results.size());
			}
		}
	
	/**
	 * Run the List<Person> findDuplicateWithFirstAndLastNames method test
	 */
	public void testFindDuplicateWithLastNames() {
		String testName = "findDuplicateWithLastNames";
		if (logger.isInfoEnabled()) {
			logger.info("\n\t\tRunning Test: " + testName);
		}

			// 2. test:
			PersonHome fixture = getPersonHome();
			Collection<Person> results = fixture.findDuplicateWithLastNames();

			// 3. verify
			assertTrue(results != null && !results.isEmpty());

			for (Person person : results) {
				//assertTrue(person.getLastName().equalsIgnoreCase(lastName));
				logger.debug(person.getLastName() + " " + person.getFirstName() + " id=" + person.getId());
			}

			if (logger.isInfoEnabled()) {
				logger.info(testName + " verified size =" + results.size());
			}
		}	
	
}

/*
 * $CPS$ This comment was generated by CodePro. Do not edit it. patternId =
 * com.instantiations.assist.eclipse.pattern.testCasePattern strategyId =
 * com.instantiations.assist.eclipse.pattern.testCasePattern.junitTestCase additionalTestNames =
 * assertTrue = false callTestMethod = true createMain = false createSetUp = false createTearDown =
 * false createTestFixture = true createTestStubs = false methods =
 * delete(QPerson;),findByID(QLong;),findByLastName(QString;) package =
 * org.cipres.treebase.dao.admin package.sourceFolder = treebase-core/src/test/java superclassType =
 * org.springframework.test.AbstractSpringContextTests testCase = PersonDAOTest testClassType =
 * org.cipres.treebase.dao.admin.PersonDAO
 */