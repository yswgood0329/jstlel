<%@page import="jstlel.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserVo vo1 = new UserVo();
	vo1.setNo(1);
	pageContext.setAttribute("vo1", vo1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Scope Test</h1>
	Application Scope : ${applicationScope.vo4.no } <br/>
	Session Scope : ${sessionScope.vo3.no }<br/>
	Request Scope : ${requestScope.vo2.no }<br/>
	page scope: ${pageScope.vo1.no }
	
	<h1>Scope Test2</h1>
	Application Scope : ${vo4.no } <br/>
	Session Scope : ${vo3.no }<br/>
	Request Scope : ${vo2.no }<br/>
	page scope: ${vo1.no }
	
	
</body>
</html>