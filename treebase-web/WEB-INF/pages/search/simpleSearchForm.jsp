
	<form onsubmit="return TreeBASE.redirect(phyloWSURI + escape($('expanded').value));">
		<p>Search:</p>
		<input type="text" id="query" onchange="return TreeBASE.expandQuery();" class="search-input" />
		<br/>
		<!--
		<input type="radio" name="join" onclick="TreeBASE.expandQuery(); return true;" id="all" value="and"/> All
		<input type="radio" name="join" onclick="TreeBASE.expandQuery(); return true;" value="or" checked="checked"/> Any<br/>
		-->
		<p>Filter:</p>
		<div class="taxon-filter" onclick="document.getElementById('all').click();">
			<input type="radio" name="join" onclick="TreeBASE.expandQuery(); return true;" id="all" value="and"/>
			<p>Find results that contain <strong>ALL</strong> the terms you entered</p>
		</div>
		<div class="taxon-filter" onclick="document.querySelector('input[value=or]').click();">
			<input type="radio" name="join" onclick="TreeBASE.expandQuery(); return true;" value="or" checked="checked"/>
			<p>Find results that contain <strong>ANY</strong> of the terms you entered.</p>
		</div>
		<br/>

		<input id="search-button" type="submit" onclick="return TreeBASE.redirect(phyloWSURI + escape($('expanded').value));" value="Go"/><br/>
		<a onclick="TreeBASE.collapseExpand('hidden','block',this)" id="expander" class="advanced-search-text">
			<img src="http://www.treebase.org/treebase-web/images/plus.gif"/>
		  	Advanced search
		</a>
		<div id="hidden" style="display:none;width:100%;height:1000px">
			<br/>
			<p>Use "Taxon Label" if you are searching on text that appears in the labels on the OTUs of trees or the labels on the rows of a data matrix. Currently, only Taxon Labels that map to a Taxon Variant
				record are searchable; in future we will fix this to allow searches on unmapped Taxon Labels.</p><br/>
			<p>Use "Taxon Variant" if you are searching on alternative expressions of a taxon, such as synonyms or a name that includes the author. For example, search on Taxon Variant Hibiscus manihot to find the taxon Abelmoschus manihot; or search on Taxon Variant "Homo sapiens Linnaeus, 1758"
				to find the taxon Homo sapiens.</p><br/>
			<p>Use "Taxon" to search on TreeBASE's canonical list of taxa -- for each set of synonymous Taxon Variant names we have
				selected one name to serve as the Taxon.</p><br/>
			<textarea id="expanded" style="width:500px;height:300px">
			</textarea><br/>
		</div>
	</form>