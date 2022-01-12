<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.Student" %>
<%@ page import = "member.StudentDAO" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student Info</title>
 <link href="editform.css" rel="stylesheet" type="text/css">
</head>
<body>
	<% 	int id = Integer.parseInt(request.getParameter("id"));
		Student s = StudentDAO.findById(id); 
	%>
	<h1>Edit Form</h1>
	<form action="update_ok.jsp" method="post">
		<input type="hidden" name="id" value="<%= s.getId() %>"/>
		<div> 이름 </div>
		<input type="text" name="name" value="<%= s.getName() %>"/>
		<div> 학번 </div>
		<input type="text" name="number" value="<%= s.getNumber() %>"/>
		<div> 나이 </div>
		<input type="text" name="age" value="<%= s.getAge() %>"/>
		<input type="submit" value=" 수정 "/>
	</form>

</body>
</html>