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
	<a href="adduserform.jsp">not using</a>
	<a href="list.jsp">list</a>
	
	
	<%
	
	ArrayList<Student> list = StudentDAO.getAllRecords();
	list.forEach(el->{
		System.out.println(el.getName());
	});
	Student student = new Student("haha",1, 2);
	StudentDAO.save(student);
	list = StudentDAO.getAllRecords();
	list.forEach(el->{
		System.out.println(el.getName());
	});
	%>
	<ul>
	<% for(Student s : list){
		%>
		<li>
			<div><%= s.getId() %></div>
			<div><%= s.getName() %></div>
			<div><%= s.getNumber() %></div>
			<div><%= s.getAge() %></div>
			<a href="update.jsp?id=${s.getId()}">수정 </a>
			<a href="delete.jsp?id=${s.getId()}">삭제 </a> 		
		</li>
		<%
	}
	%>
	</ul>
</body>
</html>