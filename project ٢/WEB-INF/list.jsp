<%@ page language="java" contentType="text/html; charset=UTF- 8"
	pageEncoding="UTF-8" import="java.util.ArrayList"
	import="MODEL.cultures"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cultures</title> 
</head>
<body>

	<% 

ArrayList cultures_database = (ArrayList) request.getAttribute("cultures_database");
		out.println("<table border><tr><th>Words_In_Turkish</th><th>Words_In_Japanese</th></tr>");
for (Object ex : cultures_database){
	cultures e = (cultures) ex ;
	 String word_t = e.getWord1(); 
	 String word_j = e.getWord2();
     out.println("<tr><td>" + word_t + "</td><td>" + word_j +"</td></tr>");
}     
out.println("</table>");
%>
</body>
</html>