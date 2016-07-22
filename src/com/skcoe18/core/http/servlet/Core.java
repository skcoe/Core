package com.skcoe18.core.http.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.json.JSONException;
import org.json.JSONObject;

import com.skcoe18.core.http.servlet.util.FileUtil;







/**
 * Servlet implementation class Core
 */
public class Core extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = -3771010014411058093L;
	private static Logger log = Logger.getLogger(Core.class.getName());
	/**
     * Default constructor. 
     */
    public Core() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  doProcess( request,  response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doProcess( request,  response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)  {
		JSONObject resp=new JSONObject();
		String sessionId=request.getSession().getId();
		String service="";
		try { resp.put("sessionid", sessionId); } catch (JSONException e) { }
		log.info("SessionID: "+sessionId);
		
		
		String c= request.getParameter("c");//application/json
		JSONObject input=null;
		try {
			if(c!=null&&!"".equals(c)){
				 input=new JSONObject(c);
			}
			
		} catch (JSONException e) {
			try { 
				resp.put("msg", "Input ERR: "+e.getMessage());
				resp.put("status", "error");
			} catch (JSONException e1) {}
		}
		if(input!=null){
			try {
				//set Default service
				//service="LOAD_FILE";
				
				service=input.getString("service");
				log.info("service: "+service);
				if("LOAD_APP".equals(service)){
					ServletContext sc = getServletContext();
					ApplicationContext app_ctx = ApplicationContext.getContext(sc);

					File config_file = app_ctx.getAppConfigFile();
					if (config_file != null)
						config_file.setLastModified(System.currentTimeMillis());
					app_ctx.reload();
					
					PrintWriter writer  = response.getWriter();
					resp.put("msg", "");
					resp.put("data", "");
					resp.put("status", "sucess");
					writer.write(resp.toString());
				}else if("JSON".equals(service)){
					response.setContentType("application/json");
					response.setCharacterEncoding("UTF-8");
					PrintWriter writer  = response.getWriter();
					resp.put("msg", "");
					resp.put("data", "");
					resp.put("status", "sucess");
					writer.write(resp.toString());
				}else if("LOAD_FILE_APP".equals(service)){
					loadfileV2( input, response);
				}else{
					resp.put("msg", "ERROR SERVICE : "+service);
					resp.put("status", "error");
				}

			} catch (IOException e) {
				try {
					resp.put("msg", "ERROR SERVICE : "+service+" : "+e.getMessage());
					resp.put("status", "error");
				} catch (JSONException e1) {}
				
			} catch (JSONException e) {
				try {
					resp.put("msg", "ERROR SERVICE : "+service+" : "+e.getMessage());
					resp.put("status", "error");
				} catch (JSONException e1) {}
			}

		}else{
			try { 
				resp.put("msg", "Input ERR. ");
				resp.put("status", "error");
			} catch (JSONException e1) {}
		}
		




	}
	
	private String getPathFile(String id){
		String p="D:/ext-lib/js/h.js";
		if("containerAppType".equals(id)){
			p="C:/Users/SK/git/Core/WebContent/JsAndCss/JS/container/appType.js";
		}
		
		
		return p;
		
		
	}
	
	private void loadfileV1(JSONObject input,HttpServletResponse response) throws JSONException, IOException{
		// reads input file from an absolute path
		String filePath = getPathFile(input.getString("id"));
		
		File downloadFile = new File(filePath);
		FileInputStream inStream = new FileInputStream(downloadFile);

		// if you want to use a relative path to context root:
		String relativePath = getServletContext().getRealPath("");
		log.info("relativePath = " + relativePath);

		// obtains ServletContext
		ServletContext context = getServletContext();

		// gets MIME type of the file
		String mimeType = context.getMimeType(filePath);
		if (mimeType == null) {        
			// set to binary type if MIME mapping not found
			mimeType = "application/octet-stream";
		}
		log.info("MIME type: " + mimeType);

		// modifies response
		response.setContentType(mimeType);
		response.setContentLength((int) downloadFile.length());

		// forces download
		String headerKey = "Content-Disposition";
		String headerValue = String.format("attachment; filename=\"%s\"", downloadFile.getName());
		response.setHeader(headerKey, headerValue);

		// obtains response's output stream
		OutputStream outStream = response.getOutputStream();

		byte[] buffer = new byte[4096];
		int bytesRead = -1;

		while ((bytesRead = inStream.read(buffer)) != -1) {
			outStream.write(buffer, 0, bytesRead);
		}

		inStream.close();
		outStream.close(); 
		
	}


	private void loadfileV2(JSONObject input,HttpServletResponse response) throws JSONException, IOException{
		// reads input file from an absolute path
		log.info("loadfileV2");
		String id=input.getString("id");
		//FileUtil.getfile(FileUtil.getfileName(id));
		//String filePath = getPathFile(id);

		//File downloadFile = new File(filePath);
		//FileInputStream inStream = new FileInputStream(downloadFile);

		StringBuffer sb= new StringBuffer();
		sb.append("var app={");
		//Set ID
		sb.append( "id:'"+id+"'");
		sb.append( ",buildHTML:function(){");
		//Set BuildHTML
		//sb.append( "$('#'+this.id).empty();console.log(JSON.stringify(this.data));var s4=appCore.getContent(this.data);$('#'+this.id).append(s4);");
		sb.append(FileUtil.getfile(FileUtil.getfileName(id,"buildHTML")));
		sb.append( "},buildCSS:function(){");
		//Set buildCSS
		//sb.append( "alert('buildCSS');");
		sb.append(FileUtil.getfile(FileUtil.getfileName(id,"buildCSS")));
		sb.append( "},buildEvent:function(){");
		
		//Set buildEvent
		//sb.append( "alert('buildEvent'); $('span' ).on( 'click' , function() { console.log(this);  console.log($(this).attr('row')); });");
		sb.append(FileUtil.getfile(FileUtil.getfileName(id,"buildEvent")));
		sb.append( "},data:");
		
		//set Data
		//sb.append("{'classEx':'panel-danger','title':'panel-title','content':'Panel content','type':'appCore.screen.appType','typeContent':'S',id:'containerAppType','data':[{'classEx':'panel-danger','title':'panel-title(app)','content':'Panel content','type':'appCore.content.panel','typeContent':'B','id':'appDiagram'},{'classEx':'panel-danger','title':'panel-title3','content':'Panel content','type':'appCore.content.panel','typeContent':'B','id':'B'},{'classEx':'panel-danger','title':'panel-title(app)','content':'Panel content','type':'appCore.content.panel','typeContent':'B','id':'B'},{'classEx':'panel-danger','title':'panel-title3','content':'Panel content','type':'appCore.content.panel','typeContent':'B','id':'B'},{'classEx':'panel-danger','title':'panel-title(app)','content':'Panel content','type':'appCore.content.panel','typeContent':'B','id':'B'},{'classEx':'panel-danger','title':'panel-title(app)','content':'Panel content','type':'appCore.content.panel','typeContent':'B','id':'B'},{'classEx':'panel-danger','title':'panel-title(app)','content':'Panel content','type':'appCore.content.panel','typeContent':'B','id':'B'},{'classEx':'panel-danger','title':'panel-title(app)','content':'Panel content','type':'appCore.content.panel','typeContent':'B','id':'B'},{'classEx':'panel-danger','title':'panel-title3','content':'Panel content','type':'appCore.content.panel','typeContent':'B','id':'B'}],'layout':'appCore.content.layout.l1'}");
		String str=FileUtil.getfile(FileUtil.getfileName(id,"buildData"));
		if(str==null || "".equals(str)){
			sb.append("{}");
		}else{
			sb.append(str);
		}
		
		sb.append( ",load:function(){");
		sb.append( "this.buildHTML();this.buildCSS();this.buildEvent();");
		sb.append( "}};");
		
		//sb.append("var app={id:'containerAppType',buildHTML:function(){$('#'+this.id).empty();console.log(JSON.stringify(this.data));var i=appCore.getContent(this.data);$('#'+this.id).append(i)},buildCSS:function(){},buildEvent:function(){},data:item2,load:function(){alert('test');this.buildHTML();this.buildCSS();this.buildEvent();}};");

		// modifies response
		response.setContentType("application/javascript");
		response.setContentLength((int) sb.length());

		// forces download
		String headerKey = "Content-Disposition";
		String headerValue = String.format("attachment; filename=\"%s\"", "FileName");
		response.setHeader(headerKey, headerValue);

		// obtains response's output stream
		OutputStream outStream = response.getOutputStream();

		/*byte[] buffer = new byte[4096];
		int bytesRead = -1;

		while ((bytesRead = inStream.read(buffer)) != -1) {
			outStream.write(buffer, 0, bytesRead);
		}*/

		outStream.write(sb.toString().getBytes());

		//inStream.close();
		outStream.close(); 
	}
	
	


}
