<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
{
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","nivi");
Statement st=con.createStatement();
String sql="select* from parking";
PreparedStatement stmt=con.prepareStatement(sql);
ResultSet rs=stmt.executeQuery();%>
<%
if(rs.next()==false){
out.println("no record found " + "MySQL server using TCP/IP...");
}
else
{%>
<table><tr><th>vechicle number</th><th>checkout</th></tr></table>
}
catch(Exception e){
out.println("not connected")
}}%>