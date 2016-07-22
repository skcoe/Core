package com.skcoe18.core.http.servlet.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import org.apache.log4j.Logger;

import com.skcoe18.core.http.servlet.Core;

public class FileUtil {
	private static String homePath="D:\\fileApp\\";
	private static Logger log = Logger.getLogger(Core.class.getName());
	public  static String getfile(String fileNameload)  {
		String sCode="";
		//String homePath="D:\\Varako2\\DOC\\84 true mail plus\\เตรียม Data Migrate\\Data";
		//String homePath="D:\\Varako2\\DOC\\84 true mail plus\\เตรียม Data Migrate\\ServiceCodeMicro";
		String pathFile=homePath+fileNameload;
		File file = new File(pathFile);
		if (file.isFile()) {
			log.debug("fileName:"+file.getName());
			BufferedReader br=null;
			FileReader fr=null;
			try {
				fr =new FileReader(file);
				br = new BufferedReader(fr);

				
				String sCurrentLine;
				while ((sCurrentLine = br.readLine()) != null) {
					if(sCurrentLine!=null && !"".equals(sCurrentLine)){
						sCode=sCode+sCurrentLine.trim();
					}
					
				}
				
			} catch (FileNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				try { if(fr!=null)fr.close(); } catch (IOException e) { }
				try { if(br!=null)br.close(); } catch (IOException e) { }
			}
		}else{
			log.debug("001:not found file : "+homePath+fileNameload);
		}
		return sCode;
		

	}
	public static String getfileName(String id,String type) {
		
		return id+"_"+type+".js";
		
	}
}
