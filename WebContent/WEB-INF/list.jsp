<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.javaex.dao.GuestDao" %>
        <%@ page import="com.javaex.vo.GuestVo" %>
    
        <%@ page import="java.util.List" %>
        <%@ page import="java.util.ArrayList" %>
    
    <%List<GuestVo> guestList = (List<GuestVo>) request.getAttribute("guestList");  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
//입력


<form action="gb?a=add" method="post">
<table border=1>
<tr>
<td>이름</td>
<td><input type="text" name="name"></td>
<td>비밀번호</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td colspan="4" ><textarea row="4" cols="70" name="content"></textarea></td>
</tr>
<tr>
<td><input type="submit" value="확인"></td>
</tr>
</table>
</form>


//출력

<%
 
 for(GuestVo vo :guestList ){
 	
	//out.print(vo.getLastName()+vo.getFirstname()+vo.getEmail()+"<br>");
	
 
%>
<table border=1>
<tr>
<td><%=vo.getNo() %></td>
 <td><%=vo.getName() %></td>
<td><%=vo.getRegDate() %></td>
 <td><a href="gb?a=deleteform&no2=<%=vo.getNo()%>">삭제</a></td> 
</tr>
<tr>
<td><textarea row="4" cols="70"><%=vo.getContent() %> </textarea></td> 
</tr>
</table>
<% } %>
</body>
</html>