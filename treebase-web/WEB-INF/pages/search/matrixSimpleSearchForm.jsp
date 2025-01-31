<%@ include file="/common/taglibs.jsp"%>
<%
	java.util.LinkedHashMap searchOptions = new java.util.LinkedHashMap();
	searchOptions.put("matrixID", "Matrix ID");
	searchOptions.put("matrixTitle", "Title");
	searchOptions.put("matrixType", "Type");
	searchOptions.put("matrixNTAX", "NTAX");
	searchOptions.put("matrixNCHAR", "NCHAR");
	
	pageContext.setAttribute("searchOptions", searchOptions);
%> 
  <form id="searchSimple" method="post">
  <fieldset>
  	<input type="hidden" name="formName" value="matrixSimple"/>
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
			  <input  type=text class="search-input" style="width:150px" name="searchTerm" id="keyword" value="${searchTerm}"/>
			<button id="search-button" type="submit" name="submit" >Search</button>
			  <!--
					<a href="#" class="openHelp" onclick="openHelp('matrixSimpleSearchForm')">
						<img class="iconButton" src="<fmt:message key="icons.help"/>" />
					</a>
					-->
		  </div>
	  </div>
    </fieldset>
    <jsp:include page="querySearchBox.jsp"/>   
  </form>
