package com.system.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class SUtil {
	public static final Pattern SCRIPTS = Pattern.compile("<(?i)script[^>]*>.*?</(?i)script>", Pattern.DOTALL);
	
	public boolean CheckNumber(String str) {
		char check;

		if (str.equals("")) {
			// 문자열이 공백인지 확인
			return false;
		}

		try
		{
			Double.parseDouble(str);
		}catch(NumberFormatException e)
		{
			return false;
		}
		return true;
	}
	
	public int getHaxStringTOInt(String data)
	{
		return Integer.parseInt( data, 16 );	
	}
	public String getIntTOHax(int data)
	{
		return Integer.toHexString( data );
	}	
	public static String analyticsString = "-1";
	public static void parameterLog(Log log, HttpServletRequest request)
	{
		log.debug(" log.isDebugEnabled() \t:  " + log.isDebugEnabled());
		//System.out.println("log.isDebugEnabled() : " + log.isDebugEnabled());
		if (log.isDebugEnabled()) {
			log.debug(" getMethod GET OR POST URI \t:  "
					+ request.getRequestURI());

			Set<String> keySet = request.getParameterMap().keySet();
			Iterator<String> iterator = keySet.iterator();
			while (iterator.hasNext()) {
				String key = iterator.next();
				String value = request.getParameter(key);
				log.debug("key : " + key + ", value : " + value);
			}
		}
	}
	
	public String getDate ( int iDay ) 
	{
	    Calendar temp=Calendar.getInstance ( );    
	    temp.add ( Calendar.DAY_OF_MONTH, iDay );
	     
	    int nYear = temp.get ( Calendar.YEAR );
	    int nMonth = temp.get ( Calendar.MONTH ) + 1;
	    int nDay = temp.get ( Calendar.DAY_OF_MONTH );
	     
	    StringBuffer sbDate=new StringBuffer ( );
	    sbDate.append ( nYear+"-" );
	     
	    if ( nMonth < 10 ) 
	        sbDate.append ( "0" );
	        sbDate.append ( nMonth+"-" );
	 
	    if ( nDay < 10 ) 
	        sbDate.append ( "0" );
	        sbDate.append ( nDay+"" );
	 
	    return sbDate.toString ( );
	}	
	
	public static String getTagDel_script(String data)
	{
		Matcher m;
		m = SCRIPTS.matcher(data);
		String str = m.replaceAll("");
		return str;
	}
	
	public static String getLangAge(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("ssion_langage");
		if(user_id == null)
		{
			user_id = "kr";
			session.setAttribute("ssion_langage", "kr");
		}else if(user_id.equals("-1") || user_id.equals(""))
		{
			user_id = "kr";
			session.setAttribute("ssion_langage", "kr");			
		}
		return user_id;
	}
	public static String getUserId(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("ssion_user_id")  +"";
		return user_id;
	}
	public static String getUserName(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("ssion_user_name")  +"";
		return user_id;
	}
	public static String getUserLevel(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String level = (String)session.getAttribute("ssion_level");
		return level;
	}
	public  String getLoginCheck(HttpServletRequest request)
	{	// 리턴갑은 로그인시 "okok"
		HttpSession session = request.getSession();
		String login = (String)session.getAttribute("ssion_login");
		return login;
	}
	public static String StringReplace(String str){       
		final int CNT_SYS_DATE = 13;				// 파일명 앞에 붙은 시스템 시간
		final int LMT_CNT_FN = 30 + CNT_SYS_DATE;	// DB에 들어갈 한 개의 파일명 최대길이 
		final int ERR_CNT_FN = 5;
		int pos = str.lastIndexOf( "." );
		String ext = str.substring( pos + 1 );

		String match = "[^\uAC00-\uD7A3xfe0-9a-zA-Z\\s]";
	    str =str.replaceAll(match, "");
	    
	    if (str.length() > LMT_CNT_FN) {
	    	str = str.substring(0, LMT_CNT_FN);

	    } else if(str.length() > ERR_CNT_FN) {
	    	str = str.substring(0, str.length()-3);
	    }
	    return str+"."+ext;
	}
	
		
	public static String setFileUpload(MultipartHttpServletRequest multipartRequest, String drv)
	{
		Iterator<String> itr =  multipartRequest.getFileNames();
		String fnames="";
		
		
		
	    while (itr.hasNext())
	    { //받은 파일들을 모두 돌린다.
	    	String fname="";
	    	MultipartFile mpf = multipartRequest.getFile(itr.next());
		    String originFileName = mpf.getOriginalFilename();
		    
		    System.out.println("---nks : multipartRequest.getAttributeNames() : " + mpf.getName());
		    
		    
		    if(originFileName.equals(""))
		    {
		    	continue;
		    }
		    
		     //System.out.println("FILE_INFO: "+originFileName); //받은 파일 리스트 출력
			 File desti = new File(drv);
		  	 if(!desti.exists())
			 {
				desti.mkdirs();
				//System.out.println("file path mkdir : " + drv);
			 }
		  	 //System.out.println("fileupload : " + drv);
		  	 
		  	 if( mpf.getName().indexOf("TITLE") > -1)
		  	 {
		  		long time = System.currentTimeMillis();
			  	if(!originFileName.equals(""))
			  	{
			  		fname = "titleimage_"+time+"_"+originFileName;	
			  	} 
		  	 }else
		  	 {
		  		long time = System.currentTimeMillis();
			  	if(!originFileName.equals(""))
			  	{
			  		fname = time+"_"+originFileName;	
			  	}	 
		  	 }
		  	

		  	fname = StringReplace(fname);
		  	
		  	fname = fname.trim(); 
		  	String rname = "";
		  	for(int i = 0; i < fname.length(); i++)
		  	{
		  		if(fname.charAt(i) != ' ')
		  		{
		  			rname += fname.charAt(i);
		  		}
		  	}
		  	fname = rname;
		  	System.out.println("fname = "+fname);
		  	File file = new File(drv+fname);
			
			if(! file.exists()) 
			{
				try {
					file.createNewFile();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					//System.out.println(e);
					e.printStackTrace();
				} 
			}else 
			{
				file.delete();
				try {
					file.createNewFile();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					//System.out.println(e);
					e.printStackTrace();
				} 
			}
			try {
				mpf.transferTo(file);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				//System.out.println(e);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				//System.out.println(e);
			} 
			try {
				fname = URLEncoder.encode(fname, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				//System.out.println(e);
			}
			
			fnames += fname + ",";
        }
	    if(fnames.length() > 0)
	    {
	    	fnames = fnames.substring(0, fnames.length()-1);
	    }
	    return fnames;
	}


	// str을 암호화하여 rst리턴
		public static String getEncryption ( String str ) {
			AES256Cipher aesChipher = new AES256Cipher();
			String rst = "";
			try {
				rst = aesChipher.AES_Decode(str);
			} catch (InvalidKeyException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (NoSuchPaddingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvalidAlgorithmParameterException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalBlockSizeException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (BadPaddingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rst;
		}
		
	// str을 암호화하여 rst리턴
	public static String doEncryption ( String str ) {
		AES256Cipher aesChipher = new AES256Cipher();
		String rst = "";
		try {
			rst = aesChipher.AES_Encode(str);
		} catch (InvalidKeyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvalidAlgorithmParameterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalBlockSizeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (BadPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rst;
	}
	
	public static String getSHA256(String str){

		String SHA = ""; 

		try{

			MessageDigest sh = MessageDigest.getInstance("SHA-256"); 

			sh.update(str.getBytes()); 

			byte byteData[] = sh.digest();

			StringBuffer sb = new StringBuffer(); 

			for(int i = 0 ; i < byteData.length ; i++){

				sb.append(Integer.toString((byteData[i]&0xff) + 0x100, 16).substring(1));

			}

			SHA = sb.toString();

			

		}catch(NoSuchAlgorithmException e){
			e.printStackTrace(); 
			SHA = null; 
		}
		return SHA;

	}

	public static String getFileRead(String filePath)
	{
		BufferedReader reader;
		String dataFull = "";
		
		try{
			FileInputStream fis = new FileInputStream(new File(filePath)); 

			InputStreamReader isr = new InputStreamReader(fis,"UTF-8"); 

			BufferedReader br = new BufferedReader(isr);	

			while(true){
				String str = br.readLine();
				if(str == null)
				{
					break;
				}
				dataFull += str + "\n";
				System.out.println(str);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return dataFull;
	}
	public static void setFileWrite(String filePath, String fileData)
	{
		
		File file = new File(filePath);
		if(!file.isDirectory())
		{
			file.mkdirs();
		}
		
		/** 파일 쓰기 */
		try {  
			BufferedWriter writer = new BufferedWriter( new OutputStreamWriter(new FileOutputStream(filePath), "UTF8"));
			writer.write(fileData); 
			writer.close();  
		}
		catch (FileNotFoundException e)
		{
			e.printStackTrace();
		} 
		catch (IOException e) 
		{
			e.printStackTrace(); 
		}

	}

	public static String getYEARMONTHDate()
	{
	    Date today = new Date();
        
	    SimpleDateFormat date = new SimpleDateFormat("yyyy-MM");

	    return date.format(today);
	    
	}
	public static String getNowDate()
	{
	    Date today = new Date();
        
	    SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");

		
	    return date.format(today);
	    
	}
	public static String getNowTime()
	{
	    Date today = new Date();
        
	    SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss");
	    return time.format(today);
	}
	
	public static String getNowDateTime()
	{
		
		return getNowDate() + " " + getNowTime();
	}

	
}
