package com.skcoe18.core.http.servlet.test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;

public class PocReadFile {

	public static void main(String[] args) {
		ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
		URL resource = classLoader.getResource("./com/skcoe18/core/http/servlet/test/aa.txt");
		System.out.println(resource);
		File file = new File(resource.getPath());
		System.out.println(file.getName());
		InputStream f = PocReadFile.class.getResourceAsStream("aa.txt");
		try {

			BufferedReader in=new BufferedReader(new InputStreamReader(f));

			String str;
			while ((str = in.readLine()) != null) {
				System.out.println(str);
			}
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}

}
