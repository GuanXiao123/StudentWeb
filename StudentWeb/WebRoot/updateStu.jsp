<%@page import="java.sql.Connection"%>
<%@page import="com.gaoxin.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修改学生信息</title>

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
    <form action = "updateStu.jsp" method = "post">
   		<table>
   			<tr>
   			要修改的学生学号为
   			<td><input type = "text" name = id /> </td> 
   			
   			</tr>
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
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");		//id为要修改的学生的学号
	
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
	uo.updateStu(student, id);
%>
    
  </body>
</html>
