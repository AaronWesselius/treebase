<%@ include file="/common/taglibs.jsp"%>
<%@page import="org.cipres.treebase.TreebaseUtil"%>
<%@page import="java.util.Date" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.text.SimpleDateFormat" %>

<% String purlBase = TreebaseUtil.getPurlBase(); %>

<script type="text/javascript">
	var purlBase = '<%= purlBase %>';
</script>

<%
	Calendar cal = Calendar.getInstance();
	cal.add(Calendar.MONTH, -6);
	SimpleDateFormat isoFormat = new SimpleDateFormat("yyyy-MM-dd");
%>
<h1>Search</h1>
	<div class="search-grid">
		<a class="search-button" href="<c:url value="/search/studySearch.html"/>">Studies</a>
		<a class="search-button" href="<c:url value="/search/matrixSearch.html"/>">Matrix</a>
		<a class="search-button" href="<c:url value="/search/treeSearch.html"/>">Trees</a>
		<a class="search-button" href="<c:url value="/search/taxonSearch.html"/>">Taxon</a>
		<a class="search-button" href="<c:url value="/search/treeTopSearch.html"/>">TreeTop</a>
	</div>
	<a href="#" class="openHelp" style="background-color:transparent; border:none" onclick="openHelp('searchTabs')"></a>
	<a href="<%=purlBase%>study/find?query=prism.modificationDate%3E%22<%=isoFormat.format(cal.getTime())%>T05:00:00Z%22&format=rss1" style="background-color:transparent; border:none" target="_blank"></a>

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

	<!--
	<li id="st-taxonView"><a href="<c:url value="/search/taxonView.html"/>"><fmt:message key="search.nav.taxonViewTab"/></a></li>
	 -->

