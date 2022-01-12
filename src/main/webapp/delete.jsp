<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.Student" %>
<%@ page import = "member.StudentDAO" %>
<%@ page import="java.util.*"%>

<% 	int id = Integer.parseInt(request.getParameter("id"));
	StudentDAO.delete(id);
	
	response.sendRedirect("index.jsp");

%>