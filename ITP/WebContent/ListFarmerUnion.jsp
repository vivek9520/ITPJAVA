<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>  AGRO LIST  </title>

</head>
<body>
<style>

.button2{
  height: 50px;
  width: 150px;
  color:red;
 
}
.button1{
  height: 50px;
  width: 150px;
  color:blue;
 
}
.text{
 
  color:blue;
 
}
</style>

<pre><h1 class="text"> FARMER UNION DETAILS  </pre></h1></br>

<%
String id = request.getParameter("username");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "ITP";
String username = "root";
String password = "root1234";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<center><h2><font color=green> FARMER UNIONS</font></h2></center>
	
<div align="center">
  <table border="1" cellpadding="12">
		 
		  <tr>
		  		<th>ID</th>
                <th>FARMER UNION NAME</th>
                <th>NUMBER OF FARMERS</th>
                <th>DISTRICT</th>
                <th>PROVINCE</th>
                
            </tr>
              
</div>
<%

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM farmerunion";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="MediumSeaGreen">
  <td><%=resultSet.getString("id") %></td>
  <td><%=resultSet.getString("name") %></td>
  <td><%=resultSet.getString("noOfFarmers") %></td>
  <td><%=resultSet.getString("district") %></td>
  <td><%=resultSet.getString("province") %></td>

<td ><a href = 'updatefarmerunion.jsp?id=<%=resultSet.getString("id")%> 'class="button1">UPDATE</a></td>
<td ><a href = 'deletefarmerunion.jsp?id=<%=resultSet.getString("id")%> 'class="button2">DELETE</a></td>

</tr>

<% 
}
} catch (Exception e) {
System.out.println();
}
%>
	
</body>
</html>