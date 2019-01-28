<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:choose>
	<c:when test="${empty param.r }">
		<c:set var="row" value="3"/>
	</c:when>
	<c:otherwise>
		<c:set var="row" value="${param.r }"/>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${empty param.c }">
		<c:set var="col" value="3"/>
	</c:when>
	<c:otherwise>
		<c:set var="col" value="${param.c }"/>
	</c:otherwise>
</c:choose>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1px" cellspacing="0" cellpadding="5px">
	
		<c:forEach begin="1" end="${row }" step="1" var="i">
			<tr>
				<c:forEach begin="1" end="${col }" step="1" var="j">
						<td>cell(${i },${j })</td>
				</c:forEach>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>