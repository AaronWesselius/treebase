package org.cipres.treebase.domain.nexus;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

import junit.framework.Assert;

import org.cipres.treebase.Constants;
import org.cipres.treebase.dao.AbstractDAOTest;
import org.cipres.treebase.domain.study.Study;
import org.cipres.treebase.domain.taxon.TaxonLabelHome;
import org.cipres.treebase.domain.taxon.TaxonLabelSet;
import org.cipres.treebase.domain.tree.PhyloTree;
import org.cipres.treebase.domain.tree.TreeBlock;
import org.cipres.treebase.domain.nexus.nexml.NexmlDocumentWriter;
import org.nexml.model.DocumentFactory;
import org.nexml.model.Document;

public class NexmlSerializationTest extends AbstractDAOTest  {
	private TaxonLabelHome mTaxonLabelHome;

	public void testSerializeStudy() {
		long studyId = 1787;
		Study study = (Study)loadObject(Study.class, studyId);
		Document doc = DocumentFactory.safeCreateDocument();
		NexmlDocumentWriter conv = new NexmlDocumentWriter(study,getTaxonLabelHome(),doc);
		String xml = conv.fromTreeBaseToXml(study).getXmlString();		
		System.out.println(xml);
		Assert.assertNotNull(xml);
	}
	
	public void testSerializeTree() {
		long treeId = 4816;
		Document doc = DocumentFactory.safeCreateDocument();		
		PhyloTree tree = (PhyloTree)loadObject(PhyloTree.class,treeId);
		TaxonLabelSet tls = tree.getTreeBlock().getTaxonLabelSet();
		NexusDataSet nds = new NexusDataSet();
		nds.getTaxonLabelSets().add(tls);
		TreeBlock treeBlock = new TreeBlock();
		treeBlock.setTaxonLabelSet(tls);
		treeBlock.addPhyloTree(tree);
		nds.getTreeBlocks().add(treeBlock);
		NexmlDocumentWriter conv = new NexmlDocumentWriter(tree.getStudy(),getTaxonLabelHome(),doc);
		String xml = conv.fromTreeBaseToXml(nds).getXmlString();
		System.out.println(xml);
		Assert.assertNotNull(xml);
	}
	
	/**
	 * Return the TaxonLabelHome field.
	 * 
	 * @return TaxonLabelHome mTaxonLabelHome
	 */
	public TaxonLabelHome getTaxonLabelHome() {
		return mTaxonLabelHome;
	}

	/**
	 * Set the TaxonLabelHome field.
	 */
	public void setTaxonLabelHome(TaxonLabelHome pNewTaxonLabelHome) {
		mTaxonLabelHome = pNewTaxonLabelHome;
	}	
}
