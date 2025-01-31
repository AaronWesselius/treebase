<%@ include file="/common/taglibs.jsp"%>

<title><fmt:message key="user.management"/></title>

<body id="admin"/>

<div id="header-container">
	<h2><fmt:message key="study.management"/> or</h2>
	<a id="header-navigation" href="<c:url value="/admin/adminSelectUsers.html"/>">Go to User Managment</a>
</div>

<div class="search-grid">
	<a class="search-button" href="<c:url value="/admin/userManagement.html"/>">For a User</a>
	<a class="search-button" href="<c:url value="/admin/readyStateStudies.html"/>">Ready State Studies</a>
	<a class="search-button" href="<c:url value="/admin/searchBySubmissionID.html"/>">Search Submission</a>
	<a class="search-button" href="<c:url value="/admin/selectStudies.html"/>">Select Studies</a>
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

<h2 tag="heading"><fmt:message key="select.studies"/></h2>

<p>Select the type of studies you want to view.</p>

<form method="post"  id="dataForm">

<fieldset>
<table border="0" cellpadding="3" cellspacing="3">
    <tr>
        <th>Study type:</th>
        <td>
        	<select id="admin-select-role"  name ="<fmt:message key="user.management.studytype"/>" class="styled-select">
        		<c:forEach var="type" items="${studyStatusTypes}">
        			<option value="${type}" <c:if test="${type eq 'Ready'}">selected</c:if> > 
        				<c:out value="${type}"/>
        			</option>
        		</c:forEach>
        	</select>
        	
        </td>
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