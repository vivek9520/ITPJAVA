<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>  AGRO LIST  </title>
<link rel="stylesheet" href="Details.css">
</head>
<body>
<pre><h1 class="text"> DETAILS OF COST GUIDE </pre></h1></br>



<%
String id = request.getParameter("username");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "ITP";
String username = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>




	<center><h2><font color="#5EBADF"> COST GUIDE</font></h2></center>
	
<div align="center">
		<table border="1" cellpadding="12">
		 
		  <tr>
		  		<th>CID</th>
                <th>PROVINCE</th>
                <th>PRODUCT</th>
                <th>COST</th>
                <th>AMOUNT</th>
                
            </tr>
              
		</div>
		
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT *FROM costguide";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="#5EBADF">

<td><%=resultSet.getString("Cid") %></td>
<td><%=resultSet.getString("province") %></td>
<td><%=resultSet.getString("product") %></td>
<td><%=resultSet.getString("amount") %></td>
<td><%=resultSet.getString("cost") %></td>




		 
</tr>

<% 
}

} catch (Exception e) {
System.out.println();
}
%>
	
	
</body>
</html>
