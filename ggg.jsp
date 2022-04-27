<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %> 
<form name=ggg.jsp id=ggg.jsp> 
<% 
String vechiclenumber=request.getParameter("vechiclenumber");
String Checkout=request.getParameter("Checkout");
try
{ Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","nivi");
Statement st=con.createStatement();
st.executeUpdate("insert into checkoutt(vechiclenumber,Checkout)values('"+vechiclenumber+"','"+Checkout+"')");
response.sendRedirect("out.html");

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
</form>
