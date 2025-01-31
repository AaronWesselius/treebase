<%@page import="org.cipres.treebase.TreebaseUtil"%>
<% String purlBase = TreebaseUtil.getPurlBase(); %>

<div class="gutter">
	<h1>Journals</h1>
	<p>In addition to providing a digital library, TreeBASE serves the
	scientific community by offering journal editors and reviewers special
	advanced anonymous access to submitted data. This access improves the
	quality of the review process because reviewers can inspect and evaluate
	the data, and in turn that also improves the quality of data in
	TreeBASE. Below is a list of journals that recommend or require
	submission to TreeBASE as an integral part of their publication
	policies. We encourage other journals and scientific societies to do the
	same because archiving and sharing of scientific data is critical for
	promoting subsequent reuse of published data, leveraging the cumulative
	knowledge of science, and maximizing the impact of scientific
	publications on future research.</p>


	<p><b>Journal Hyperlink</b></p>

	<p><b>PhyloWS URL to Studies in TreeBASE</b><br/>
	(note: add &quot;&amp;format=rss1&quot; to the end of each URL to use
	it in your favorite RSS reader)</p>

	<br/>
	<div class="grid-system">

	<!-- Card for Aliso Journal -->
	<div class="journal-card">
		<a href="http://www.rsabg.org/scientific-publications" title="Aliso">
			<img class="journal" src="images/journal_files/aliso.jpg" alt="Aliso"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">Aliso</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Aliso%22"
			   title="Find records in TreeBASE for articles published in Aliso">
				Find records in TreeBASE for articles published in Aliso
			</a>
		</div>
	</div>

	<!-- Card for American Journal of Botany -->
	<div class="journal-card">
		<a href="http://www.amjbot.org/" title="American Journal of Botany">
			<img class="journal" src="images/journal_files/image022.gif" alt="AJB"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">American Journal of Botany</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22American%20Journal%20of%20Botany%22"
			   title="Find records in TreeBASE for articles published in the American Journal of Botany">
				Find records in TreeBASE for articles published in American Journal of Botany
			</a>
		</div>
	</div>

	<!-- Card for American Naturalist -->
	<div class="journal-card">
		<a href="http://www.asnamnat.org/" title="American Naturalist">
			<img class="journal" src="images/journal_files/amnat.gif" alt="American Naturalist"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">American Naturalist</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22American%20Naturalist%22"
			   title="Find records in TreeBASE for articles published in the American Naturalist">
				Find records in TreeBASE for articles published in American Naturalist
			</a>
		</div>
	</div>

	<!-- Card for Applications in Plant Sciences -->
	<div class="journal-card">
		<a href="http://botany.org/APPS/" title="Applications in Plant Sciences">
			<img class="journal" src="images/journal_files/apps.jpg" alt="APS"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">Applications in Plant Sciences</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Applications%20in%20Plant%20Sciences%22"
			   title="Find records in TreeBASE for articles published in Applications in Plant Sciences">
				Find records in TreeBASE for articles published in Applications in Plant Sciences
			</a>
		</div>
	</div>

	<!-- Card for Aquatic Biology -->
	<div class="journal-card">
		<a href="http://www.int-res.com/journals/ab/ab-home" title="Aquatic Biology">
			<img class="journal" src="images/journal_files/ab.jpg" alt="AB"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">Aquatic Biology</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Aquatic%20Biology%22"
			   title="Find records in TreeBASE for articles published in the Aquatic Biology">
				Find records in TreeBASE for articles published in Aquatic Biology
			</a>
		</div>
	</div>

	<!-- Card for Basic and Applied Ecology -->
	<div class="journal-card">
		<a href="http://www.elsevier.com/locate/baae" title="Basic and Applied Ecology">
			<img class="journal" src="images/journal_files/baae.jpg" alt="Basic and Applied Ecology"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">Basic and Applied Ecology</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Basic%20and%20Applied%20Ecology%22"
			   title="Find records in TreeBASE for articles published in Basic and Applied Ecology">
				Find records in TreeBASE for articles published in Basic and Applied Ecology
			</a>
		</div>
	</div>

	<!-- Card for Biology Letters -->
	<div class="journal-card">
		<a href="http://rsbl.royalsocietypublishing.org" title="Biology Letters">
			<img class="journal" src="images/journal_files/bl.jpg" alt="BL"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">Biology Letters</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Biology%20Letters%22"
			   title="Find records in TreeBASE for articles published in the Biology Letters">
				Find records in TreeBASE for articles published in Biology Letters
			</a>
		</div>
	</div>

	<!-- Card for The Bryologist -->
	<div class="journal-card">
		<a href="http://www.bioone.org/loi/bryo" title="The Bryologist">
			<img class="journal" src="images/journal_files/bry.jpg" alt="Bryologist"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">The Bryologist</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22The%20Bryologist%22"
			   title="Find records in TreeBASE for articles published in The Bryologist">
				Find records in TreeBASE for articles published in The Bryologist
			</a>
		</div>
	</div>

	<!-- Card for Cryptogamie Algologie -->
	<div class="journal-card">
		<a href="http://www.cryptogamie.com/pagint_en/editeur/revues.php" title="Cryptogamie Algologie">
			<img class="journal" src="images/journal_files/fd_algo.gif" alt="Cryptogamie Algologie"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">Cryptogamie Algologie</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Cryptogamie%20Algologie%22"
			   title="Find records in TreeBASE for articles published in Cryptogamie Algologie">
				Find records in TreeBASE for articles published in Cryptogamie Algologie
			</a>
		</div>
	</div>

	<!-- Card for Cryptogamie Bryologie -->
	<div class="journal-card">
		<a href="http://www.cryptogamie.com/pagint_en/editeur/revue_bryo.php" title="Cryptogamie Bryologie">
			<img class="journal" src="images/journal_files/fd_bryo.gif" alt="Cryptogamie Bryologie"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">Cryptogamie Bryologie</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Cryptogamie%20Bryologie%22"
			   title="Find records in TreeBASE for articles published in Cryptogamie Bryologie">
				Find records in TreeBASE for articles published in Cryptogamie Bryologie
			</a>
		</div>
	</div>

	<!-- Card for Cryptogamie Mycologie -->
	<div class="journal-card">
		<a href="http://www.cryptogamie.com/pagint_en/editeur/revue_bryo.php" title="Cryptogamie Mycologie">
			<img class="journal" src="images/journal_files/fd_myco.gif" alt="Cryptogamie Mycologie"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">Cryptogamie Mycologie</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Cryptogamie%20Mycologie%22"
			   title="Find records in TreeBASE for articles published in Cryptogamie Mycologie">
				Find records in TreeBASE for articles published in Cryptogamie Mycologie
			</a>
		</div>
	</div>

	<!-- Card for European Journal of Plant Pathology -->
	<div class="journal-card">
		<a href="http://www.springer.com/life+sciences/plant+sciences/journal/10658" title="European Journal of Plant Pathology">
			<img class="journal" src="images/journal_files/ejpp.gif" alt="European Journal of Plant Pathology"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">European Journal of Plant Pathology</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22European%20Journal%20of%20Plant%20Pathology%22"
			   title="Find records in TreeBASE for articles published in the European Journal of Plant Pathology">
				Find records in TreeBASE for articles published in European Journal of Plant Pathology
			</a>
		</div>
	</div>

	<!-- Card for Evolution -->
	<div class="journal-card">
		<a href="http://www.wiley.com/bw/journal.asp?ref=0014-3820" title="Evolution">
			<img class="journal" src="images/journal_files/image001.gif" alt="Evolution"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">Evolution</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3DEvolution"
			   title="Find records in TreeBASE for articles published in Evolution">
				Find records in TreeBASE for articles published in Evolution
			</a>
		</div>
	</div>

	<!-- Card for Evolutionary Applications -->
	<div class="journal-card">
		<a href="http://onlinelibrary.wiley.com/journal/10.1111/(ISSN)1752-4571" title="Evolutionary Applications">
			<img class="journal" src="images/journal_files/image002.jpg" alt="Evolutionary Applications"/>
		</a>
		<div class="journal-cardbody">
			<h3 class="journal-header">Evolutionary Applications</h3>
			<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Evolutionary+Applications%22"
			   title="Find records in TreeBASE for articles published in Evolutionary Applications">
				Find records in TreeBASE for articles published in Evolutionary Applications
			</a>
		</div>
	</div>

		<!-- Card for Journal of Heredity -->
		<div class="journal-card">
			<a href="http://jhered.oxfordjournals.org/" title="Journal of Heredity">
				<img class="journal" src="images/journal_files/jh.gif" alt="Journal of Heredity"/>
			</a>
			<div class="journal-cardbody">
				<h3 class="journal-header">Journal of Heredity</h3>
				<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Journal%20of%20Heredity%22"
				   title="Find records in TreeBASE for articles published in the Journal of Heredity">
					Find records in TreeBASE for articles published in the Journal of Heredity
				</a>
			</div>
		</div>

		<!-- Card for Journal of Neurochemistry -->
		<div class="journal-card">
			<a href="http://onlinelibrary.wiley.com/journal/10.1111/(ISSN)1471-4159" title="Journal of Neurochemistry">
				<img class="journal" src="images/journal_files/jn.jpg" alt="JN"/>
			</a>
			<div class="journal-cardbody">
				<h3 class="journal-header">Journal of Neurochemistry</h3>
				<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Journal%20of%20Neurochemistry%22"
				   title="Find records in TreeBASE for articles published in the Journal of Neurochemistry">
					Find records in TreeBASE for articles published in the Journal of Neurochemistry
				</a>
			</div>
		</div>

		<!-- Card for Journal of Paleontology -->
		<div class="journal-card">
			<a href="http://www.journalofpaleontology.org/" title="Journal of Paleontology">
				<img class="journal" src="images/journal_files/jp.jpg" alt="JP"/>
			</a>
			<div class="journal-cardbody">
				<h3 class="journal-header">Journal of Paleontology</h3>
				<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Journal%20of%20Paleontology%22"
				   title="Find records in TreeBASE for articles published in the Journal of Paleontology">
					Find records in TreeBASE for articles published in the Journal of Paleontology
				</a>
			</div>
		</div>

		<!-- Card for Methods in Ecology and Evolution -->
		<div class="journal-card">
			<a href="http://www.methodsinecologyandevolution.org" title="Methods in Ecology and Evolution">
				<img class="journal" src="images/journal_files/mee.jpg" alt="MEE"/>
			</a>
			<div class="journal-cardbody">
				<h3 class="journal-header">Methods in Ecology and Evolution</h3>
				<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Methods%20in%20Ecology%20and%20Evolution%22"
				   title="Find records in TreeBASE for articles published in Methods in Ecology and Evolution">
					Find records in TreeBASE for articles published in Methods in Ecology and Evolution
				</a>
			</div>
		</div>

		<!-- Card for Molecular Ecology -->
		<div class="journal-card">
			<a href="http://www.blackwellpublishing.com/journal.asp?ref=0962-1083" title="Molecular Ecology">
				<img class="journal" src="images/journal_files/image021.jpg" alt="Molecular Ecology"/>
			</a>
			<div class="journal-cardbody">
				<h3 class="journal-header">Molecular Ecology</h3>
				<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Molecular+Ecology%22"
				   title="Find records in TreeBASE for articles published in Molecular Ecology">
					Find records in TreeBASE for articles published in Molecular Ecology
				</a>
			</div>
		</div>

		<!-- Card for Molecular Ecology Resources -->
		<div class="journal-card">
			<a href="http://www.wiley.com/bw/journal.asp?ref=1755-098X" title="Molecular Ecology Resources">
				<img class="journal" src="images/journal_files/mer.gif" alt="Molecular Ecology Resources"/>
			</a>
			<div class="journal-cardbody">
				<h3 class="journal-header">Molecular Ecology Resources</h3>
				<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Molecular%20Ecology%20Resources%22"
				   title="Find records in TreeBASE for articles published in the Molecular Ecology Resources">
					Find records in TreeBASE for articles published in Molecular Ecology Resources
				</a>
			</div>
		</div>

		<!-- Card for Muelleria -->
		<div class="journal-card">
			<a href="http://www.rbg.vic.gov.au/science/information-and-resources/science-publications/muelleria" title="Muelleria">
				<img class="journal" src="images/journal_files/image015.jpg" alt="Muelleria"/>
			</a>
			<div class="journal-cardbody">
				<h3 class="journal-header">Muelleria</h3>
				<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3DMuelleria"
				   title="Find records in TreeBASE for articles published in Muelleria">
					Find records in TreeBASE for articles published in Muelleria
				</a>
			</div>
		</div>

		<!-- Card for Mycologia -->
		<div class="journal-card">
			<a href="http://www.msafungi.org/" title="Mycologia">
				<img class="journal" src="images/journal_files/image005.gif" alt="Mycologia"/>
			</a>
			<div class="journal-cardbody">
				<h3 class="journal-header">Mycologia</h3>
				<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3DMycologia"
				   title="Find records in TreeBASE for articles published in Mycologia">
					Find records in TreeBASE for articles published in Mycologia
				</a>
			</div>
		</div>

		<!-- Card for Mycological Progress -->
		<div class="journal-card">
			<a href="http://www.springer.com/life+sciences/plant+sciences/journal/11557" title="Mycological Progress">
				<img class="journal" src="images/journal_files/image006.jpg" alt="Mycological Progress"/>
			</a>
			<div class="journal-cardbody">
				<h3 class="journal-header">Mycological Progress</h3>
				<a href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Mycologial%20Progress%22"
				   title="Find records in TreeBASE for articles published in Mycological Progress">
					Find records in TreeBASE for articles published in Mycological Progress
				</a>
			</div>
		</div>



	</div>

	<br/>


	<p><b>Other Journals with a Significant Presence in TreeBASE</b>: <a
		href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Annals%20of%20the%20Missouri%20Botanical%20Garden%22"
		title="Annals of the Missouri Botanical Garden">Annals of the
	Missouri Botanical Garden</a>; <a
		href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Biological+Journal+of+the+Linnean+Society%22"
		title="Biological Journal of the Linnean Society">Biological
	Journal of the Linnean Society</a>; <a
		href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22BMC+Evolutionary+Biology%22"
		title="BMC Evolutionary Biology">BMC Evolutionary Biology</a>; <a
		href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Canadian+Journal+of+Botany%22"
		title="Canadian Journal of Botany">Canadian Journal of Botany</a>; <a
		href="<%=purlBase%>study/find?query=prism.publicationName%3D%3DCladistics"
		title="Cladistics">Cladistics</a>; <a
		href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Fungal+Diversity%22"
		title="Fungal Diversity">Fungal Diversity</a>; <a
		href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22International+Journal+of+Plant+Sciences%22"
		title="International Journal of Plant Sciences">International
	Journal of Plant Sciences</a>; <a
		href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Journal+of+Phycology%22"
		title="Journal of Phycology">Journal of Phycology</a>; <a
		href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Molecular+Biology+and+Evolution%22"
		title="Molecular Biology and Evolution">Molecular Biology and
	Evolution</a>; <a
		href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Molecular+Phylogenetics+and+Evolution%22"
		title="Molecular Phylogenetics and Evolution">Molecular
	Phylogenetics and Evolution</a>; <a
		href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Plant+Systematics+and+Evolution%22"
		title="Plant Systematics and Evolution">Plant Systematics and
	Evolution</a>; <a
		href="<%=purlBase%>study/find?query=prism.publicationName%3D%3D%22Proceeding+of+the+National+Academy+of+Sciences+of+the+United+States+of+America%22"
		title="Proceeding of the National Academy of Sciences of the United States of America">
	Proceeding of the National Academy of Sciences of the United States of
	America</a>; <a
		href="<%=purlBase%>study/find?query=prism.publicationName%3D%3DZootaxa"
		title="Zootaxa">Zootaxa</a></p>

</div>