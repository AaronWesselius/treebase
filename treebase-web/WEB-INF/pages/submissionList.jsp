<%@ include file="/common/taglibs.jsp"%>

<title><fmt:message key="submission.list.title"/></title>
<content tag="heading"><fmt:message key="submission.list.title"/></content>
<body id="submissions"/>

<form method="post" action="<c:url value='/user/submissionList.html'/>">
<c:url var="inProgressURL" value="/user/submissionList.html?method=inProgressSubmission" />
<c:url var="deletePageURL" value="/user/deleteStudy.html?" />
<c:url var="readyStateURL" value="/user/readyState.html?"/>

<fieldset>
<legend>Submissions
	<!--
<a href="#" class="openHelp" onclick="openHelp('submissionList')"><img class="iconButton" src="<fmt:message key="icons.help"/>" /></a>
-->
</legend>
	<p>This page lists all your submissions and the status of each. Under "Change Status" you can change an "in progress" submission to "ready" state, which means that it is ready to go public and it is flagged for TreeBASE staff to look over it. Once the submission is made public, you can return to your submission and make updates to the citation, for example. The pencil tool allows you to edit an existing submission and the red X button allows you to delete a submission. <b>Note that a submission can only be deleted if all matrices and tree blocks are first deleted separately</b>. </p>
	<p>Submissions can only be deleted after all trees and matrices are deleted first.<br>You can sort by clicking on the table head.</p>
	<display:table
	name="${submissionList}"
	requestURI=""
	defaultsort="1"
	class="submission-list"
	id="userList"
	cellspacing="3"
	cellpadding="3">

	<display:column
			title="Submission ID <svg width='12' height='12' viewBox='0 0 12 12' xmlns='http://www.w3.org/2000/svg'><path d='M2 4 L6 8 L10 4' stroke='#333' stroke-width='2' fill='none'/></svg>"
		class="submission-column"
		sortable="true"
		property="id"/>

	<display:column
		class="submission-column"
		property="study.name"
		title="Study Name  <svg width='12' height='12' viewBox='0 0 12 12' xmlns='http://www.w3.org/2000/svg'><path d='M2 4 L6 8 L10 4' stroke='#333' stroke-width='2' fill='none'/></svg>"
		sortable="true"/>

	<display:column
			class="submission-column"
		property="study.notes"
		title="Study Notes  <svg width='12' height='12' viewBox='0 0 12 12' xmlns='http://www.w3.org/2000/svg'><path d='M2 4 L6 8 L10 4' stroke='#333' stroke-width='2' fill='none'/></svg>"
		sortable="true"/>

	<display:column
			class="submission-column"
		property="study.studyStatus.description"
		title="Status  <svg width='12' height='12' viewBox='0 0 12 12' xmlns='http://www.w3.org/2000/svg'><path d='M2 4 L6 8 L10 4' stroke='#333' stroke-width='2' fill='none'/></svg>"
		sortable="true"/>

	  <display:column
			  class="submission-column"
	  	title="Change Status"
		sortable="false">
		<c:if test="${userList.study.studyStatus.description eq 'In Progress'}">
			<a href="<c:out value="${readyStateURL}"/><c:out value="submissionid="/><c:out value="${userList.id}" />" >Change to Ready State</a>
		</c:if>
	  </display:column>

	<display:column
		sortable="false"
		url="/user/summary.html"
		paramId="id"
		paramProperty="id"
		class="iconColumn"
		headerClass="iconColumn">
			<img
				class="iconButton"
				src="<fmt:message key="icons.edit"/>"
				title="<fmt:message key="study.update.title"/>"
				alt="<fmt:message key="study.update.title"/>"/>
		</display:column>

	  <display:column
		sortable="false"
		class="iconColumn"
		headerClass="iconColumn">
			<c:if test="${userList.study.studyStatus.description eq 'In Progress'}">
				<a href="<c:out value="${deletePageURL}"/><c:out value="submissionid="/><c:out value="${userList.id}" />" >
					<img
						class="iconButton"
						src="<fmt:message key="icons.delete"/>"
						title="<fmt:message key="study.delete"/>"
						alt="<fmt:message key="study.delete"/>"/>
				</a>
			</c:if>
	  </display:column>

	<display:footer>
		<tr>
			<td colspan="7" align="center"><b>Show Only </b>
				<select name="method" onChange="this.form.submit();">
					<option value="submissionsByUser">--- Please Select ---
						<c:forEach var="type" items="${submissiontypes}">
							<option value="${type.value}" <c:if test="${type.value == method}">selected="selected"</c:if>>
							<c:out value="${type.label}"/>
							</option>
						</c:forEach>
					</option>
				</select>
				-OR-
				<button type="button"
						onclick="location.href='<c:url value="/user/studyForm.html"/>?form=new'">
	        			<fmt:message key="button.new.submission"/>
	    		</button>
			</td>
		</tr>
	</display:footer>

	<display:setProperty name="basic.empty.showtable" value="true"/>

</display:table>
</fieldset>
<fieldset>
			<div align="center">		
            	<c:choose>
		   			<c:when test="${sessionScope.importStatus =='NOT FOUND'}"><c:out value="Sorry, we cannot find your data"/></c:when>
		   			<c:when test="${sessionScope.importStatus =='OK'}"><c:out value="Import finished"/></c:when>
		   			<c:when test="${sessionScope.importStatus =='FAILED'}"><c:out value="Sorry, One or more data file cannot parsed correctly, you may add your data via treebase interfaces"/></c:when>        
				</c:choose>	   	
		   	</div>		
</fieldset>			
</form>