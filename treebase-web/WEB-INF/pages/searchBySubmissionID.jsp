<%@ include file="/common/taglibs.jsp"%>

<title><fmt:message key="search.by.submission.id"/></title>
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

<h2 tag="heading"><fmt:message key="search.by.submission.id"/></h2>
<form method="post"  id="dataForm">

<fieldset>
<legend>Search for submissions by identifiers
	<!--
	Popup
<a href="#" class="openHelp" onclick="openHelp('searchBySubmissionID')"><img class="iconButton" src="<fmt:message key="icons.help"/>" /></a>
-->
</legend>

<table border="0" cellpadding="3" cellspacing="3">


	<tr>
        <th style="vertical-align: top;"><fmt:message key="submission.accession"/>:</th>
        <td>
        	<input type="radio" name="identifierType" value="TB2" checked="checked"/>TreeBASE2 Submission ID<br/>
        	<input type="radio" name="identifierType" value="TB1"/>TreeBASE1 Legacy Study ID<br/>
        	<input type="radio" name="identifierType" value="TB0"/>TreeBase2 Study ID
        </td>
    </tr>
  	<tr>
		<th></th>
		<th align="left">
			<input class="styled-textbox" type="text" name="submissionaccession"  maxlength = "25"/>
		</th>
	</tr>
	<tr>
    	<th></th>
    	<td>
	        <input class="styled-button" type="submit" name="Submit" value="<fmt:message key="button.submit"/>" />
	        <!--input type="reset" name="Reset" value="<fmt:message key="button.reset"/>" /-->
	        <input class="styled-button" type="submit" name="_cancel" value="<fmt:message key="button.cancel"/>"/>
        </td>
    </tr>
  	
</table>
</fieldset>
</form>