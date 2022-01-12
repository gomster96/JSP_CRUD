<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ page import = "member.Student" %>
<%@ page import="java.io.PrintWriter"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
int a = 5;
Student test = new Student("An", 1, 2); 
for(int i=0; i<5; i++){
	%> <div><%= test.getName()%> </div> <%	
}
System.out.println("aaaa");
%>

<%!
	public void myPrint(){
		System.out.println("aaaa");
		
}
%>


<% 
 if(request.getParameter("addButton")!=null ){
	 System.out.println("bbbb");
 }
%>


<input type="submit" id="test" name="addButton" value="추가" >
<input type="button" id="test2" name="deleteButton" value="삭제" >
</body>
<script type="text/javascript">
 document.getElementById("test").onclick = function(){
	 console.log("aaaa");
	 <% System.out.println("bbbb"); %>
 }
 document.getElementById("test2").onclick = function(){
	 console.log("aaaa22");
	 <% System.out.println("bbbb22"); %>
 }
</script>
</html>