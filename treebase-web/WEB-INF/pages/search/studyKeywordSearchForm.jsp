<%@ include file="/common/taglibs.jsp"%>
<%
	java.util.LinkedHashMap searchOptions = new java.util.LinkedHashMap();
	searchOptions.put("studyID", "Study ID");
	searchOptions.put("legacyStudyID", "Legacy Study ID");
	searchOptions.put("authorKeyword", "Author");
	searchOptions.put("titleKeyword", "Title");
	searchOptions.put("abstractKeyword", "Abstract");
	searchOptions.put("citationKeyword", "Entire citation");
	searchOptions.put("textKeyword", "All text");
	searchOptions.put("doiKeyword", "DOI");
	
	pageContext.setAttribute("searchOptions", searchOptions);

%>
  <form id="searchSimple" method="post">
  <fieldset class="search-fieldset">
  For study IDs with values less than 3000, please search using the &quot;Legacy Study ID&quot; button.<br>
  Search: <input type="hidden" name="formName" value="searchKeyword"/>
	  <div class="search-group">
		  <div class="search-spacing">
		  <p>Filter on:</p>
			<select class="search-select" name="searchButton">
				<c:forEach var="options" items="${searchOptions}">
					<option value="${options.key}" <c:if test="${options.key == searchButton}">selected="selected"</c:if> />
						${options.value}
					</option>
				</c:forEach>
			</select>
		  <p>Search for:</p>
		  <input class="search-input" type="text" style="width:150px" name="searchTerm" id="keyword" value="${searchTerm}"/>
		<button id="search-button" type="submit" name="submit" >Search</button>
	  </div>
	  </div>
    </fieldset>
    <jsp:include page="querySearchBox.jsp"/>
  </form>
