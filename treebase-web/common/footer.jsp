<%@ include file="/common/taglibs.jsp" %>

<div id="footer-view">

	<!-- Flexbox Container -->
	<div class="footer-section">

		<!-- Contact Email Section -->
		<div class="footer-part">
			<div class="contact-footer">
				<p class="footer-header">Get in contact: </p>
				<a id="email-text" href="mailto:help@treebase.org">help@treebase.org</a>
			</div>
			<a href="https://twitter.com/treebase">
				<img class="contact-svg" src="<c:url value='/images/icons/SVG/twitterx.svg'/>" alt="Twitter">
			</a>
			<a href="https://github.com/TreeBASE">
				<img class="contact-svg" src="<c:url value='/images/icons/SVG/github.svg'/>" alt="GitHub">
			</a>
			<br>
		</div>

		<!-- Mendeley Section -->
		<div id="middle-footer-part">
			<a href="http://www.mendeley.com/groups/734351/treebase/" title="All publications in TreeBASE on Mendeley">
				<img class="extra-svg" src="<c:url value='/images/icons/SVG/mendeley.svg'/>" alt="GitHub">
			</a>
			<a href="http://wokinfo.com/products_tools/multidisciplinary/dci/" title="Covered by Data Citation Index">
				<img class="extra-svg" src="<c:url value='/images/DCI_button.png'/>" alt="Data Citation Index" />
			</a>
		</div>
	</div>

	<!-- Copyright Notice -->
	<p class="copyright">
		&copy; 2009, Phyloinformatics Research Foundation. All rights reserved.
	</p>
</div>
