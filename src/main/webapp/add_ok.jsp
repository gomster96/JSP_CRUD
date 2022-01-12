<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.Student" %>
<%@ page import = "member.StudentDAO" %>
<%@ page import="java.util.*"%>

<%
String name = request.getParameter("name");
int number = Integer.parseInt(request.getParameter("number"));
int age = Integer.parseInt(request.getParameter("age"));


int result = StudentDAO.save(new Student(name, number, age));

response.sendRedirect("index.jsp");
%>
