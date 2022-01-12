<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.Student" %>
<%@ page import = "member.StudentDAO" %>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="list.css" rel="stylesheet" type="text/css">

</head>
<body>
	<h1>JSP CRUD Example</h1>
	<div id="add-student">
		<a  href="addform.jsp">학생기록 추가</a>
	</div>
	
	<%
	ArrayList<Student> list = StudentDAO.getAllRecords();
	%>
	<ul>
	<% for(Student s : list){
		%>
		<li class="data-list">
			<div><%= s.getId() %></div>
			<div><%= s.getName() %></div>
			<div><%= s.getNumber() %></div>
			<div><%= s.getAge() %></div>
			<a href="updateform.jsp?id=<%= s.getId()%>">수정 </a>
			<a href="delete_ok.jsp?id=<%= s.getId()%>">삭제 </a> 		
		</li>
		<%
	}
	%>
	</ul>
</body>
</html>