<%@ include file="/common/taglibs.jsp"%>
<title><fmt:message key="person.merge"/></title>
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
<h2><fmt:message key="person.merge"/></h2>

<p>The person records are referenced by user accounts and citation author/editor records.
Merge the person records would affect the following:
</p>
<br>* If there are user accounts associated with the source and the target person record, 
then merge the source user account to the target user account. 
<br>* For all citation author/editor records, replace the source person with the target person record.
<br>* Delete the source person record.

<p>Please provide the source &amp; target person record ids.
</p>

<form method="post">
<input type="hidden" name="_page" value="0"/>

<fieldset>
<legend>Merging two person records</legend>

<table border="0" cellpadding="3" cellspacing="3">
	<tr>
        <th>Source <fmt:message key="person.id"/> :</th>
        <td>  	   	
        	<input class="styled-textbox" type="text" name="sourcepersonid"/>
        </td>
    </tr>
    <tr>
        <th>Target <fmt:message key="person.id"/> :</th>
        <td>  	   	
        	<input class="styled-textbox" type="text" name="targetpersonid" size="20" />
        </td>
    </tr>               
  	<tr>
    	<th></th>
    	<td>
	         <input class="styled-button" type="submit" name="_target1" value="<fmt:message key="button.next"/>" />
	        <input class="styled-button" type="submit" name="_cancel" value="<fmt:message key="button.cancel"/>"/>
        </td>
    </tr>  	
</table>
</fieldset>
</form>