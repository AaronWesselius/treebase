<%@ taglib prefix="sitemesh-decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<div class="gutter">
	<div class="grid-system">
		<div class="grid-containerfourwide">
			<h1>Contact</h1>
		</div>
		<div class="grid-containertwowide">
			<div class="card">
				<div class="card-space">
					<img src="<c:url value='/images/icons/SVG/contact-email.svg'/>" alt="Bug">
				</div>
				<div class="content">
					<div class="title">
						<p>Help</p>
					</div>
					<div class="rest">
						<p>
							For questions about data submission and data content, please
							contact the TreeBASE helpdesk:
						</p>
					</div>
					<div class="contact">
						<p>
							<a href="mailto:&#104;&#x65;&#108;p&#64;treebas&#101;.&#111;&#x72;&#x67;">&#x68;el&#x70;&#x40;tr&#x65;eb&#x61;&#x73;&#101;.o&#x72;g</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="grid-containertwowide">
		</div>
		<div class="grid-containertwowide">
			<div class="card">
				<div class="card-space">
					<img src="<c:url value='/images/icons/CardImages/bug.svg'/>" alt="Bug">
				</div>
				<div class="content">
					<div class="title">
						<p>Bugs</p>
					</div>
					<div class="rest">
						<p>
							To report software bugs, browser conflicts, and ergonomic
							inefficiencies, please visit the <a
								href="https://github.com/TreeBASE/treebase/issues">Github issue tracker for TreeBASE</a>.
							If the problem you observed does not already appear in the list, please
							<a href="https://github.com/TreeBASE/treebase/issues/new">file a new report</a>. If you
							don't have a Github account yet, this may require you <a href="https://github.com/join">to
							create one</a>, which is very easy and can be done with minimal information.
						</p>
					</div>
					<div class="contact">
						<p>github.com/TreeBASE</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


