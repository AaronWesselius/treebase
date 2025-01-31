<%@ include file="/common/taglibs.jsp"%>

<title><fmt:message key="user.management"/></title>
<!--
<content tag="heading"><fmt:message key="user.management"/></content>
-->
<body id="admin"/>

<div id="header-container">
	<h2><fmt:message key="user.management"/> or</h2>
	<a id="header-navigation" href="<c:url value="/admin/userManagement.html"/>">Go to Study Managment</a>
</div>

<div class="search-grid">
	<a class="search-button" href="<c:url value="/admin/adminSelectUsers.html"/>">Users</a>
	<a class="search-button" href="<c:url value="/admin/adminMergingUsers.html"/>">Merge Users</a>
	<a class="search-button" href="<c:url value="/admin/adminSelectPersons.html"/>">Select Persons</a>
	<a class="search-button" href="<c:url value="/admin/adminMergingPersons.html"/>">Merge Persons</a>
</div>


<script>
	// Get the current URL path
	const currentPath = window.location.pathname;

	// Select all the search buttons
	const buttons = document.querySelectorAll('.search-button');

	buttons.forEach(button => {
		// If the button's href matches the current path, add 'current' class
		if (button.getAttribute('href') === currentPath) {
			button.classList.add('current');
		}
	});
</script>

<form method="post"  id="dataForm">

<fieldset>
<h2>Search for users</h2>
	<p>This is a simple user management page. Search for users based on selected criteria. Users can be found edited and deleted here.</p>
<br/>
	<p>Search by: </p>
	<div>
		<input class="admin-radio" type="radio" name="userChoice" value="Email">
		<label>Email Address</label>
	</div>
	<div>
		<input class="admin-radio" type="radio" name="userChoice" value="Username" checked>
		<label>Username</label>
	</div>
	<div>
		<input class="admin-radio" type="radio" name="userChoice" value="LastName">
		<label>Last Name</label>
	</div>
	<br/>
	<p>Enter email, username or last name: </p>
	<div class="admin-input-container">
		<input class="admin-text" type="text" name="userInfo" size="20" placeholder="Enter information here">
	</div>
	<br/>
	<p>Filter on role: </p>
	<div id="admin-filter-role">
		<label>
			<input type="radio" name = "<fmt:message key="user.management.userchoice"/>" value = "User Role">
			User Role:
		</label>
		<select id="admin-select-role" name ="<fmt:message key="user.role"/>" style="width:150px">
			<c:forEach var="role" items="${userRoles}">
				<option value="${role}" <c:if test="${type eq 'Associate Editor'}">selected</c:if> >
					<c:out value="${role}"/>
				</option>
			</c:forEach>
		</select>
		<input class="styled-button-bigger" type="reset" name="Reset" value="<fmt:message key="button.admin.reset"/>" />
	</div>
	<br/>
	<input class="styled-button" type="submit" name="Submit" value="<fmt:message key="button.submit"/>" />
		<!--<input type="submit" name="_cancel" value="<fmt:message key="button.cancel"/>"/> -->
</fieldset>
</form>


<script>
	function updatePlaceholder() {
		// Get the selected radio button
		const selectedOption = document.querySelector('input[name="userChoice"]:checked').value;

		// Get the input field
		const inputField = document.querySelector('.admin-text');

		// Update the placeholder based on the selected option
		if (selectedOption === "Email") {
			inputField.placeholder = "Enter Email Address here";
		} else if (selectedOption === "Username") {
			inputField.placeholder = "Enter Username here";
		} else if (selectedOption === "LastName") {
			inputField.placeholder = "Enter Last Name here";
		}
	}

	// Initialize placeholder on page load based on the default checked radio button
	document.addEventListener("DOMContentLoaded", updatePlaceholder);
</script>