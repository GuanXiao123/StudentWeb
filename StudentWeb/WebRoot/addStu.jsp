<%@page import="java.sql.Connection"%>
<%@page import="com.gaoxin.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addStu.jsp' starting page</title>
    
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
   	
   	<form action = "" method = "post">
   		<table>
   			<tr>
   				<th>学号</th><th>姓名</th><th>性别</th><th>班级号</th><th>院系</th>
   			</tr>
   			<tr>
   				<td><input type = "text" name = "stu_id" /></td>
   				<td><input type = "text" name = "stu_name" /></td>
   				<td><input type = "text" name = "stu_gender" /></td>
   				<td><input type = "text" name = "stu_classNo" /></td>
   				<td><input type = "text" name = "stu_dept" /></td>
   				
   			</tr>
   		
   		</table>
   		<input type = "submit" />
   	</form>

<%
	request.setCharacterEncoding("UTF-8");		//设置request格式为utf-8
	
	String stu_id = request.getParameter("stu_id");
	String stu_name = request.getParameter("stu_name");
	String stu_gender = request.getParameter("stu_gender");
	String stu_classNo = request.getParameter("stu_classNo");
	String stu_dept = request.getParameter("stu_dept");
	
	
	Student student = new Student();
	student.setId(stu_id);
	student.setName(stu_name);
	student.setGender(stu_gender);
	student.setClassNo(stu_classNo);
	student.setDept(stu_dept);
	
	
	
	UserOperate uo = new UserOperate();
	uo.addStu(student);
	
	
%>

	   	
  </body>
</html>
