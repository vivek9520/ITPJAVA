<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agro</title>
</head>
<style>
body{
	background-image:url('img/a9.jpg');
	background-position: center;
	background-size:cover;
	
}
</style>


<body>


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


<div class="topnav">
<div class="search-container">
    <form action="SearchPro" method="get">
      <input type="text" placeholder="SEARCH CATEGORY" name="search">
      <button type="submit"><i class="fa fa-search">Search</i></button>
    </form>
</div></div>
</br> </br>

	<center><h2><font color="#02075d">PRODUCT DETAILS</font></h2></center>
	
<div align="center">
		<table border="1" cellpadding="12">
		 
		  <tr>
		  		<th>PID</th>
                <th>PRODUCT</th>
                <th>SEASON</th>
                <th>CATEGORY</th>
                <th>PLACES</th>
                <th>DETAILS</th>
                <th>UPDATE</th>
                <th>DELETE</th>
                
            </tr>
              
		</div>
		
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM product";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="#ffffff">

<td><%=resultSet.getString("pid") %></td>
<td><%=resultSet.getString("product") %></td>
<td><%=resultSet.getString("season") %></td>
<td><%=resultSet.getString("category") %></td>
<td><%=resultSet.getString("places") %></td>
<td><%=resultSet.getString("details") %></td>
<td>
<a href="update_ni.jsp?pid=<%=resultSet.getString("pid")%>" class="submit1">UPDATE</a></td>
<td>
<a href="DeleteProductNi.jsp?pid=<%=resultSet.getString("pid")%>" class="submit1">DELETE</a></td>
		 
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

	
</body>
</html>
