<%@page import="com.javaex.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%



request.setCharacterEncoding("utf-8");
String no2= request.getParameter("no2");
int no2I=Integer.parseInt(no2);
String password = request.getParameter("password");


GuestDao dao = new GuestDao();
dao.delete2(password,no2I);





response.sendRedirect("gb?a=deleteform&no2="+no2);

%>
</body>
</html>