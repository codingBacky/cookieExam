<%@page import="kr.co.backy.util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%--
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	CookieBox cb = new CookieBox(request);
	if( !cb.exists("loginCheck") ){
		response.sendRedirect("./index.jsp");
	}
%>
	<h1>회원에게만 보여지는 페이지입니다.</h1>
</body>
</html>