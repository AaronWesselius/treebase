<%@ include file="/common/taglibs.jsp"%>

<title><fmt:message key="search.taxon"/></title>
<body id="s-taxon"/>

<div id="wrap">
		<jsp:include page="/common/search-nav.jsp"/>
<div id="s-clear"></div>

<script type="text/javascript">
  //<![CDATA[
    // These are the mappings from inferred search term types to search predicates for this scope
    var predicates = {
      'integer' : [ 'tb.identifier.ncbi', 'tb.identifier.ubio', 'tb.identifier.taxon', 'tb.identifier.taxon.tb1' ],
      'id' : [ 'tb.identifier.taxon', 'tb.identifier.taxon.tb1' ],
      'word' : [ 'tb.title.taxon', 'tb.title.taxonLabel', 'tb.title.taxonVariant' ],
      'doi' : [ 'prism.doi' ] // this doesn't work yet, we have no search on doi
    };
    
 	// purlBase is assigned in /common/search-nav.jsp
    var phyloWSURI = purlBase + 'taxon/find?query=';
  //]]>
</script>

<c:set var="searchType" value="taxon" scope="request"/>

<%--jsp:include page="taxonSearchForm.jsp"/ --%>

<fieldset>
	<legend>
	  	Taxon search
		<!--
		Popup
		<a href="#" class="openHelp" onclick="openHelp('taxonSearchTextSearch')">
			<img class="iconButton" src="<fmt:message key="icons.help"/>" />
		</a>
		-->
	</legend>
	<p>Use "Taxon Label" if you are searching on text that appears in the labels on the OTUs of trees or the labels on the rows of a data matrix. Currently, only Taxon Labels that map to a Taxon Variant record are searchable; in future we will fix this to allow searches on unmapped Taxon Labels. </p><p>Use "Taxon Variant" if you are searching on alternative expressions of a taxon, such as synonyms or a name that includes the author. For example, search on Taxon Variant <i>Hibiscus manihot</i> to find the taxon <i>Abelmoschus manihot</i>; or search on Taxon Variant "<i>Homo sapiens</i> Linnaeus, 1758" to find the taxon <i>Homo sapiens</i>.</p><p>Use "Taxon" to search on TreeBASE's canonical list of taxa -- for each set of synonymous Taxon Variant names we have selected one name to serve as the Taxon. </p>
	<br/>
	<jsp:include page="simpleSearchForm.jsp"/>
</fieldset>

<div id="s-clear"></div>

<jsp:include page="searchMessages.jsp"/>

<c:if test="${not empty taxonSearchResults && ! taxonSearchResults.isTrivial}">
  <c:set var="items" value="items"/>
  <c:if test="${taxonSearchResults.count == 1 }"><c:set var="items" value="item"/></c:if>
  <h3>Your search has yielded ${taxonSearchResults.count } ${items }:</h3>
</c:if>

<jsp:include page="searchResultsList.jsp"/> 

</div>