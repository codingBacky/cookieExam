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
	CookieBox cd = new CookieBox(request);
	Cookie cookie = cd.getCookie("loginCheck");
	cookie.setMaxAge(0);//쿠키삭제
	response.addCookie(cookie);
	response.sendRedirect("./memberPage.jsp");
%>
</body>
</html>