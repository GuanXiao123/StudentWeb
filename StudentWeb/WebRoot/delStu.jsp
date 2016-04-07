<%@page import="java.sql.Connection"%>
<%@page import="com.gaoxin.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'delStu.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action = "delStu.jsp" method = "post">
   		<table>
   			<tr>
   			要删除的学生学号为
   			<td><input type = "text" name = id /> </td> 
   			</tr>

   		</table>
   		<input type = "submit" />
   	</form>
 	
   	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");		//id为要修改的学生的学号

	UserOperate uo = new UserOperate();
	uo.deleteStu(id);
%>
    
  </body>
</html>
