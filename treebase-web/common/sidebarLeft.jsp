<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ include file="/common/taglibs.jsp"%>

	<!--De gebruikte nav-->
<div id="navcontainer">
	<ul id="navlist" class="navText">
		<li>
			<a class="nav-text" href="<c:url value='/home.html'/>">
				<div class="navblock">
					<img class="iconsvg" src="<c:url value='/images/icons/SVG/homeIcon.svg'/>" alt="<fmt:message key='nav.search.treebase'/>">
					<span>Home</span>
				</div>
			</a>
		</li>
		<%if(request.isUserInRole("Admin") || request.isUserInRole("Associate Editor")){%>
			<li class="admin-part">
				<a class="nav-text" href="<c:url value='/admin/administrationPage.html'/>">
					<div class="navblock">
						<img class="iconsvg" src="<c:url value='/images/icons/SVG/admin.svg'/>" alt="<fmt:message key='nav.admin.header'/>">
						<span class="navlistHeading"><fmt:message key="nav.admin"/></span>
					</div>
				</a>
				<ul class="innerNavlist">
					<li><a class="nav-text" href="<c:url value="/admin/userManagement.html"/>"><div class="innernavBlock"><span class="innernavText"><fmt:message key="nav.admin.study"/></span></div></a></li>
					<li><a class="nav-text" href="<c:url value="/admin/adminSelectUsers.html"/>"><div class="innernavBlock"><span class="innernavText"><fmt:message key="nav.admin.user"/></span></div></a></li>
				</ul>
			</li>
		<% } %>
		<li>
			<a class="nav-text" href="<c:url value='/search/studySearch.html'/>">
				<div class="navblock">
					<img class="iconsvg" src="<c:url value='/images/icons/SVG/searchIcon.svg'/>" alt="<fmt:message key='nav.search.treebase'/>">
					<span><fmt:message key="nav.search.treebase"/></span>
				</div>
			</a>
		</li>
		<li>
			<div class="navblock">
				<img class="iconsvg" src="<c:url value='/images/icons/SVG/uploadIcon.svg'/>" alt="<fmt:message key='nav.search.treebase'/>">
				<span class="navlistHeading"><fmt:message key="nav.submit"/></span>
			</div>
			<ul class="innerNavlist">
				<li><a class="nav-text" href="<c:url value="/submitTutorial.html"/>"><div class="innernavBlock"><span class="innernavText"><fmt:message key="nav.submittutorial"/></span></div></a></li>
				<li><a class="nav-text" href="<c:url value="/user/studyForm.html?form=new"/>"><div class="innernavBlock"><span class="innernavText"><fmt:message key="nav.submit"/></span></div></a></li>
				<li><a class="nav-text" href="<c:url value="/user/submissionList.html"/>"><div class="innernavBlock"><span class="innernavText"><fmt:message key="nav.submissions"/></span></div></a></li>
			</ul>
		</li>
		<li>
			<div class="navblock">
				<img class="iconsvg" src="<c:url value='/images/icons/SVG/documentIcon.svg'/>" alt="<fmt:message key='nav.search.treebase'/>">
				<span class="navlistHeading"><fmt:message key="nav.documentation"/></span>
			</div>
			<ul class="innerNavlist">
				<li><a class="nav-text" href="<c:url value="/technology.html"/>"><div class="innernavBlock"><span class="innernavText"><fmt:message key="nav.technology"/></span></div></a></li>
				<li><a class="nav-text" href="<c:url value="/urlAPI.html"/>"><div class="innernavBlock"><span class="innernavText"><fmt:message key="nav.dataaccess"/></span></div></a></li>
			</ul>
		</li>
		<li>
			<div class="navblock">
				<img class="iconsvg" src="<c:url value='/images/icons/SVG/infoIcon.svg'/>" alt="<fmt:message key='nav.search.treebase'/>">
				<span class="navlistHeading"><fmt:message key="nav.about"/></span>
			</div>
			<ul class="innerNavlist">
				<li><a class="nav-text" href="<c:url value="/about.html"/>"><div class="innernavBlock"><span class="innernavText"><fmt:message key="nav.overview"/></span></div></a></li>
				<li><a class="nav-text" href="<c:url value="/people.html"/>"><div class="innernavBlock"><span class="innernavText"><fmt:message key="nav.people"/></span></div></a></li>
				<li><a class="nav-text" href="<c:url value="/partnership.html"/>"><div class="innernavBlock"><span class="innernavText"><fmt:message key="nav.partnerships"/></span></div></a></li>
				<li><a class="nav-text" href="<c:url value="/reference.html"/>"><div class="innernavBlock"><span class="innernavText"><fmt:message key="nav.references"/></span></div></a></li>
			</ul>
		</li>
		<li>
			<a class="nav-text" href="<c:url value="/dataMan.html"/>">
				<div class="navblock">
					<img class="iconsvg" src="<c:url value='/images/icons/SVG/dataIcon.svg'/>" alt="<fmt:message key='nav.search.treebase'/>">
					<span><fmt:message key="nav.dataman"/></span>
				</div>
			</a>
		</li>
		<li>
			<a class="nav-text" href="<c:url value="/journal.html"/>">
				<div class="navblock">
					<img class="iconsvg" src="<c:url value='/images/icons/SVG/documentIcon.svg'/>" alt="<fmt:message key='nav.search.treebase'/>">
					<span><fmt:message key="nav.journals"/></span>
				</div>
			</a>
		</li>
		<li>
			<a class="nav-text" href="<c:url value="/contact.html"/>">
				<div class="navblock">
					<img class="iconsvg" src="<c:url value='/images/icons/SVG/contactIcon.svg'/>" alt="<fmt:message key='nav.search.treebase'/>">
					<span><fmt:message key="nav.contact"/></span>
				</div>
			</a>
		</li>
	</ul>
</div>
<div id="closenav">
	<button id="close-nav-button"></button>
</div>
<script>
	// Select the button and navigation container elements
	const closeButton = document.getElementById('close-nav-button');
	const navContainer = document.getElementById('navcontainer');

	// Add click event listener to the button
	closeButton.addEventListener('click', () => {
		// Toggle the 'hidden' class on the nav container
		navContainer.classList.toggle('hidden');

		// Change the triangle direction based on visibility
		if (navContainer.classList.contains('hidden')) {
			closeButton.style.borderRight = 'none';
			closeButton.style.borderLeft = '10px solid black'; // Triangle pointing right
		} else {
			closeButton.style.borderLeft = 'none';
			closeButton.style.borderRight = '10px solid black'; // Triangle pointing left
		}
	});
</script>

