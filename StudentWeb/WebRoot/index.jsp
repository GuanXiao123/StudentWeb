<%@ page import="java.util.Date" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

	<script language = "JavaScript">
	
	function clock(){
		
		
		
	
	}	
	
	
	</script>


  </head>
  
  <body>
    <div id="left">
    	<div class = "operate">
    		<ul>
    			<li>
    				<a href = "./addStu.jsp"><input type = "button" name = "add" value = "增加学生数据"/></a>
    			</li>
    			<li>
    				<a href = "./delStu.jsp"><input type = "button" name = "add" value = "删除学生数据"/></a>
    			</li>
    			<li>
    				<a href = "./updateStu.jsp"><input type = "button" name = "add" value = "修改学生数据"/></a>
    			</li>
    			<li>
    				<a href = "./showStu.jsp"><input type = "button" name = "add" value = "查询学生数据"/></a>
    			</li>
    		</ul>
    	</div>
    </div>
    
    <div id="right">
    
   		<p><%=str %>,现在的时间是<%=date.getHours()+"时"+date.getMinutes()+"分"+date.getSeconds()+"秒" %></p>
    	
    	<% if(date.getHours() > 12){
    		  str = "下午好";
    	}else{
    		str = "上午好";
    	}

    	 %>
    	
    <%! Date date = new Date();
    	String str = "";
    	
     %>	
    
    </div>
  </body>
</html>
