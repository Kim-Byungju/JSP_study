<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>파일 읽어오기</h3>
	<hr>
	
	<%
		/* FileReader fr = null;
		BufferedReader br = null;
		String line = null;
		
		try{
			fr = new FileReader("C:\\사용자\\admin\\바탕화면list.txt");
			br = new BufferedReader(fr);
			while((line=br.readLine()) != null){
				out.print(line);
				out.print("<br>");
			}
		} catch(IOException e){
			out.print(e.getMessage());
		} */
		 
	%>
	<h3>상대주소</h3>
	<%
	/* InputStream is = null;
	BufferedReader br2 = null;
	String line2 = null;
	String path2 = "./file/list.txt";
	URL url = null;
	try {
			url =  application.getResource(path2);
			is = (InputStream)url.openStream();
			br2 = new BufferedReader(new InputStreamReader(is));
			while((line2=br2.readLine()) != null){
				out.print(line2);
				out.print("<br>");
			}
	} catch(IOException e){
		out.print(e.getMessage());
	} */
	
	%>
	<h3>상대주소2</h3>
	<%
		FileReader fr2 = null;
		BufferedReader br3 = null;
		String line3 = null;
		String path = "./file/list.txt";
		String path3 = application.getRealPath(path);
		try{
			fr2 = new FileReader(path3);
			br3 = new BufferedReader(fr2);
			while((line3 = br3.readLine())!=null){
				out.print(line3);
				out.print("<br>");
			}
		} catch (IOException e) {
			out.print(e.getMessage());
		}
		
	%>
</body>
</html>