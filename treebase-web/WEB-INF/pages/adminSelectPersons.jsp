<%@ include file="/common/taglibs.jsp"%>

<title><fmt:message key="user.management"/></title>
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

<h2>Select Persons</h2>

<p>This is a simple person audit page. Search for potential duplicate person records based on selected criteria.</p>

<form method="post"  id="dataForm">

<fieldset>
<legend>Search for potential duplicate person records</legend>

<table border="0" cellpadding="3" cellspacing="3">

	<tr>
		<th align ="left">
			<input type="radio" name = "<fmt:message key="user.management.userchoice"/>" value = "firstAndLast" checked> With Same First and Last Name<br/>
			<input type="radio" name = "<fmt:message key="user.management.userchoice"/>" value = "lastOnly"> With Same Last Name<br/>
        </th>
    </tr>
    
  	<tr>
    	<th></th>
    	<td>
	        <input class="styled-button" type="submit" name="Submit" value="<fmt:message key="button.submit"/>" />
	        <input class="styled-button" type="submit" name="_cancel" value="<fmt:message key="button.cancel"/>"/>
        </td>
    </tr>
  	
</table>
</fieldset>
</form>