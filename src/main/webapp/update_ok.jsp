<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.Student" %>
<%@ page import = "member.StudentDAO" %>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
int number = Integer.parseInt(request.getParameter("number"));
int age = Integer.parseInt(request.getParameter("age"));


int result = StudentDAO.update(new Student(id, name, number, age));
if(result != 1) System.out.println(" 오류발생 ");
response.sendRedirect("index.jsp");
%>
