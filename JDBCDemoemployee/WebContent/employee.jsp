<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="layui/css/layui.css">
<link rel="stylesheet" href="css/index.css">
</head>
<body>
<div id="example2">
<%
	User user=(User)session.getAttribute("loginuser");
if(user==null){//用户信息为null就表示用户没有登陆
	response.sendRedirect("login.jsp");
}else{
%>
<div style="text-align:center">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div class="da">欢迎员工${loginuser.userName }进入此页面！</div>

<br><br>
<div style="text-align:center">
	<a href="EmployeeServlet?method=list" class="layui-btn layui-btn-radius layui-btn-normal">基础信息查看</a><br><br>
	<a href="AttendanceServlet?method=list" class="layui-btn layui-btn-radius layui-btn-normal">考勤信息查看</a><br><br>
	<a href="SalaryServlet?method=list" class="layui-btn layui-btn-radius layui-btn-normal">工资信息查看</a>
</div>
<%} %>
</div>
</body>
</html>