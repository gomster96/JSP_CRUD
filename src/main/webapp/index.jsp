<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.Student" %>
<%@ page import = "member.StudentDAO" %>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<h1>JSP CRUD Example</h1>
	<%
	ArrayList<Student> list = StudentDAO.getAllRecords();
	%>
	<ul>
	<% for(Student s : list){
		%>
		<li>
			<div><%= s.getId() %></div>
			<div><%= s.getName() %></div>
			<div><%= s.getNumber() %></div>
			<div><%= s.getAge() %></div>
			<a href="update.jsp?id=<%= s.getId()%>">수정 </a>
			<a href="delete.jsp?id=<%= s.getId()%>">삭제 </a> 		
		</li>
		<%
	}
	%>
	</ul>
</body>
</html>