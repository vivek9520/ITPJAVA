<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String pid = request.getParameter("pid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "ITP";
String username = "root";
String password = "root1234";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, username, password);
statement=connection.createStatement();
String sql ="select * from product where pid='"+pid+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>  AGRO  </title>
<link rel="stylesheet" href="Update_Pri.css">

</head>
<style>
body{
	background-image:url('img/a9.jpg');
	background-position: center;
	background-size:cover;
	
}
</style>

<body>




<div class="bod" >
<center><h2><font color="#02075d">UPDATE PRODUCT</font></h2></center>
<form method="post" action="update_process_ni.jsp">
<h3>
<pre>
	PID : 		<input type="number" name="pid" value="<%=resultSet.getString("pid") %>" /></br>
	PRODUCT NAME : 	<input type="text" name="product" value="<%=resultSet.getString("product") %>" /></br>
	SEASON : 	<input type="text" name="season"  value="<%=resultSet.getString("season") %>" ></br>
	CATEGORY : 	<input type="text" name="category" value="<%=resultSet.getString("category") %>" /><br>
	PLACES : 	<input type="text" name="places" value="<%=resultSet.getString("places") %>" /></br>
	DETAILS : <input type="text" name="details" value="<%=resultSet.getString("details") %>" /><br>
	</pre>
	</h3>
	
	<center><input type="submit" class="submit" value="UPDATE">
</form>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>