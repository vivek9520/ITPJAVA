<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%@page import="java.sql.*,java.util.*"%>
<%
String uname=request.getParameter("uname");
session.putValue("uname",uname);
String pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ITP","root","root1234");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from patient_Reg where uname='"+uname+"' and password='"+pass+"'");
try{
rs.next();
if(rs.getString("pass").equals(pass)&&rs.getString("uname").equals(uname))
{
out.println("Welcome " +uname);
request.getRequestDispatcher("/patient_pro.jsp").forward(request, response);
}
else{
out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>


</body>
</html>