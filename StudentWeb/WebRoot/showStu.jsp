<%@page import="com.gaoxin.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'showStu.jsp' starting page</title>

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
    <table>
    	<tr>
    		<th>学号</th><th>姓名</th><th>性别</th><th>班级号</th><th>学院</th>
    	</tr>
    	<tr>
    		<%
    			UserOperate uo = new UserOperate();
				Vector<Student> students =uo.showStu();
				Student student = new Student();
				for(int i=0;i<students.size();i++){
						student = (Student)students.get(i);
				
    			%>
    			<tr>
   				<td><%=student.getId() %></td>
   				<td><%=student.getName() %></td>
   				<td><%=student.getGender() %></td>
   				<td><%=student.getClassNo() %></td>
   				<td><%=student.getDept() %></td>
   			</tr>
    			
    			<%
    			}
    		 %>
    	</tr>
    </table>
  </body>
</html>
