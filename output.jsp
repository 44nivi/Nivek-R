
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<html> 
<head> 
<title>Connection with mysql database</title> 
</head> 
<body>
<h1>Connection status </h1>
<% 
String vechiclenumber=request.getParameter("vechiclenumber");
String vechicletype=request.getParameter("vechicletype");
String Enterlot1=request.getParameter("Enterlot1");
String Checkin=request.getParameter("Checkin");
try {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","nivi");
Statement st=con.createStatement();
st.executeUpdate("insert into checkoutt values('"+vechiclenumber+"','"+vechicletype+"','"+vechicletype+"','"+Enterlot1+"','"+Checkin+"')");
response.sendRedirect("out.html");

// check weather connection is established or not by isClosed() method 
if(!con.isClosed())
%>
<font size="+3" color="green"></b>
<% 
out.println("Successfully connected to " + "MySQL server using TCP/IP...");
con.close();
}
catch(Exception ex){
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</font>
</body> 
</html>




