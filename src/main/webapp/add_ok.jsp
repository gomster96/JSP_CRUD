<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.Student" %>
<%@ page import = "member.StudentDAO" %>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String name = request.getParameter("name");
int number = Integer.parseInt(request.getParameter("number"));
int age = Integer.parseInt(request.getParameter("age"));


int result = StudentDAO.save(new Student(name, number, age));
if(result != 1) System.out.println(" 오류발생 ");
response.sendRedirect("index.jsp");
%>
