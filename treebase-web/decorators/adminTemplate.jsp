<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!-- This is modified from Ashton Treebase_Forms/form_example.xml  -->
  
<%@include file="/common/taglibs.jsp" %>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head><%@ include file="/common/meta.jsp" %>

<title>TreeBASE-<decorator:title/></title>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value='/styles/styles.css'/>" />
<link rel="stylesheet" type="text/css" media="all" href="<c:url value='/styles/navigation.css'/>" />
<link rel="stylesheet" type="text/css" media="all" href="<c:url value='/styles/templategrid.css'/>" />
<link rel="stylesheet" type="text/css" media="all" href="<c:url value='/styles/displaytag.css'/>" />
<link rel="stylesheet" type="text/css" media="all" href="<c:url value='/styles/treebase.css'/>" />
<link rel="stylesheet" type="text/css" media="all" href="<c:url value='/styles/menuExpandable.css'/>" />
<link rel="stylesheet" type="text/css" media="all" href="<c:url value='/styles/messages.css'/>" />
<script type="text/javascript" src="/treebase-web/scripts/prototype/prototype.js"></script>
<script type="text/javascript" src="/treebase-web/scripts/prototype/prototype-1.6.0.3.js"></script>
<script type="text/javascript" src="/treebase-web/scripts/script.aculo.us/effects.js"></script>
<script type="text/javascript" src="/treebase-web/scripts/script.aculo.us/controls.js"></script>
<script type="text/javascript" src="<c:url value='/scripts/menuExpandable.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/common.js'/>"></script>


<decorator:head/>
</head>
	
<body <decorator:getProperty property="body.id" writeEntireProperty="true"/>>
<% if( isOldMSIE ){ %>
<c:import url="/common/updateBrowser.jsp"/>
<% } %>
<!-- BEGIN SIDEBAR LEFT -->
<div id="sidebarLeft"><c:import url="/common/sidebarLeft.jsp"/></div>
<!--  BEGIN HEADER -->
<div id="header"><jsp:include page="/common/header.jsp"/></div>
<!-- BEGIN WRAP -->
<div id="wrap">
	<!-- BEGIN RIGHT COLUMN -->
	<div id="content" class="content-admin">
		<div class="gutter">
		<h2><decorator:getProperty property="page.heading"/></h2>
		<%@ include file="/common/messages.jsp" %>
		<decorator:body/>
		</div>
	</div>
	<!-- BEING FOOTER -->
	<div id="footer"><c:import url="/common/footer.jsp" /></div>
</div> <!-- END WRAP -->
<jsp:include page="/common/googleAnalytics.jsp"/>
</body>
</html>