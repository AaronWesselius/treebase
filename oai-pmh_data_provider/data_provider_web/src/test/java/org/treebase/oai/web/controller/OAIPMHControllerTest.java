package org.treebase.oai.web.controller;

import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.exception.ParseErrorException;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.springframework.test.AbstractTransactionalSpringContextTests;
import org.springframework.web.servlet.ModelAndView;
import org.treebase.oai.web.command.Identify;
import org.treebase.oai.web.command.OAIPMHCommand;



public class OAIPMHControllerTest extends AbstractTransactionalSpringContextTests {

	
	
	VelocityUtil vu= new VelocityUtil();; 
	
	//OAIPMHCommand command;
	 
	private OAIPMHController controller;		
	
    public void setController(OAIPMHController controller) {
		this.controller = controller;
	}

	private Identify identify;    
    
    public void setIdentify(Identify identify) {
		this.identify = identify;
	}
	
	// velocity utils for test only 
	class VelocityUtil{
	   VelocityEngine ve;
	   
	   VelocityUtil(){
		   ve = new VelocityEngine();
		   Properties p = new Properties();  
		   p.setProperty(Velocity.INPUT_ENCODING, "UTF-8");  
		   p.setProperty(Velocity.OUTPUT_ENCODING, "UTF-8");  
		   p.setProperty("file.resource.loader.class", 
				   "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");  

		   try {
			        ve.init(p);
		       } catch (Exception e) {
			// TODO Auto-generated catch block
			   logger.info(e.getMessage());
		    } 
	   }
	   
	   String runTemplate(ModelAndView mav) {
		   StringWriter writer=null;
		   Template t=null;
		try {
			t = ve.getTemplate("\\"+mav.getViewName());
		
		   VelocityContext context = new VelocityContext();
   		   context.put("model", mav.getModel());
   		   writer= new StringWriter();
           t.merge(context, writer);
          
        } catch (ResourceNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseErrorException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace(); 
		}
		return writer.toString();
	   }
    }

	@Override
	protected String[] getConfigLocations() {
		return new String[]{"applicationContext.xml","top-servlet.xml",
				"classpath*:applicationContext-dao.xml","classpath*:applicationContext-service.xml"};
	}

	
	public void testIdentify() {
		
		OAIPMHCommand params=new OAIPMHCommand();
		params.setVerb("Identify");
		Map model=new HashMap();
		model.put("identify",identify );		
		ModelAndView mav=controller.Identify(params, model);
		String result=vu.runTemplate(mav);		
		this.assertNotNull(result);
		System.out.println("--------test Identify---------");
		System.out.print(result);
		
	}
	
	public void testListSet() {
		
		OAIPMHCommand params=new OAIPMHCommand();
		params.setVerb("ListSets");
		Map model=new HashMap();
		model.put("identify",identify );		
		ModelAndView mav=controller.ListSets(params, model);
		String result=vu.runTemplate(mav);		
		this.assertNotNull(result);
		System.out.println("---------test ListSet---------");
		System.out.print(result);
		
	}
	
	public void testListMetadataFormats() {
		
		OAIPMHCommand params=new OAIPMHCommand();
		params.setVerb("ListMetadataFormats");
		params.setIdentifier("treebase.org/study/TB2:s169");
		Map model=new HashMap();
		model.put("identify",identify );
		model.put("params", params);
		ModelAndView mav=controller.ListMetadataFormats(params, model);
		String result=vu.runTemplate(mav);		
		this.assertNotNull(result);
		System.out.println("---------test ListMetadataFormats---------");
		System.out.print(result);
		
	}
	
	public void testGetRecord() {
		
		OAIPMHCommand params=new OAIPMHCommand();
		params.setVerb("ListMetadataFormats");
		params.setIdentifier("treebase.org/study/TB2:s1225");
		params.setMetadataPrefix("oai_dc");
		Map model=new HashMap();
		model.put("identify",identify );
		model.put("params", params);
		ModelAndView mav=controller.GetRecord(params, model);
		String result=vu.runTemplate(mav);		
		this.assertNotNull(result);
		System.out.println("---------test getRecord---------");
		System.out.print(result);
		
	}
	
public void testListRecord() {
		
		OAIPMHCommand params=new OAIPMHCommand();
		params.setVerb("ListRecords");
		params.setFrom("2005-11-15T06:16:15Z");
		params.setUntil("2006-05-15T06:16:15Z");
		params.setMetadataPrefix("oai_dc");
		Map model=new HashMap();
		model.put("identify",identify );
		model.put("params", params);
		ModelAndView mav=controller.ListRecords(params, model);
		String result=vu.runTemplate(mav);		
		this.assertNotNull(result);
		System.out.println("---------test ListRecord---------");
		System.out.print(result);
		
	}

public void testListIdentify() {
	
	OAIPMHCommand params=new OAIPMHCommand();
	params.setVerb("ListIdentifiers");
	params.setFrom("2005-11-15T06:16:15Z");
	params.setUntil("2006-05-15T06:16:15Z");
	params.setMetadataPrefix("oai_dc");
	Map model=new HashMap();
	model.put("identify",identify );
	model.put("params", params);
	ModelAndView mav=controller.ListIdentifiers(params, model);
	String result=vu.runTemplate(mav);		
	this.assertNotNull(result);
	System.out.println("---------test ListIdentifiers---------");
	System.out.print(result);
	
}

}
