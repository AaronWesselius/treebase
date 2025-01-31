<%@ include file="/common/taglibs.jsp"%>

<title><fmt:message key="search.matrix"/></title>
<body id="s-matrix"/>

<div id="wrap">
		<jsp:include page="/common/search-nav.jsp"/>

<div id="s-clear"></div>

<script type="text/javascript">
  //<![CDATA[
    // These are the mappings from inferred search term types to search predicates for this scope
    var predicates = {
      'integer' : [ 'tb.identifier.matrix', 'tb.identifier.matrix.tb1', 'tb.ntax.matrix', 'tb.nchar.matrix' ],
      'id' : [ 'tb.identifier.matrix', 'tb.identifier.matrix.tb1' ],
      'word' : [ 'tb.title.matrix', 'tb.type.matrix' ],
      'doi' : [ 'prism.doi' ] // this doesn't work yet, we have no search on doi
    };
    
 	// purlBase is assigned in /common/search-nav.jsp
    var phyloWSURI = purlBase + 'matrix/find?query=';
  //]]>
</script>
<p>The Matrices search tab allows you to enter search terms related to the character matrix. Matrix ID can be entered either with the "M" prefix or without. For the number of taxa ("NTAX") and the number of characters ("NCHAR") you can use double dots to indicate range. For example, "5..10" means <em>between 5 and 10</em>, while "100.." means <em>greater than 100</em>. For Matrix "Type," the choices are: Unspecified, Allozyme, Amino Acid, Behavior, Combination, Karyotype, Matrix Representation, Morphological, Nucleic Acid, Restriction Site, and Secondary Chemistry.<br>Here is an example of an Advanced Search query statement:<li><b>All morphological matrices</b>:<br>tb.type.matrix = Morphological</p>

    <jsp:include page="matrixSimpleSearchForm.jsp"/>

<c:set var="searchType" value="matrix" scope="request"/>

<div id="s-clear"></div>

<jsp:include page="searchMessages.jsp"/> 

<c:if test="${not empty resultSet && ! resultSet.isTrivial }">
  <c:set var="items" value="items"/>
  <c:if test="${resultSet.count == 1 }"><c:set var="items" value="item"/></c:if>
  <h3>Your search has yielded ${resultSet.count } ${items }:</h3>
</c:if>

<jsp:include page="searchResultsList.jsp"/> 

</div>