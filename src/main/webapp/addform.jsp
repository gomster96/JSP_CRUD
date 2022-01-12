<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.Student" %>
<%@ page import = "member.StudentDAO" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student Info</title>
 <link href="editform.css" rel="stylesheet" type="text/css">
</head>
<body>

	<h1>Add Form</h1>
	<form action="add_ok.jsp" method="post">
		<div> 이름 </div>
		<input type="text" name="name" placeholder="이름을 입력해주세요."/>
		<div> 학번 </div>
		<input type="text" name="number" placeholder="학번을 입력해주세요."/>
		<div> 나이 </div>
		<input type="text" name="age" placeholder="나이를 입력해주세요."/>
		<input type="submit" value=" 저장 "/>
	</form>

</body>
</html>