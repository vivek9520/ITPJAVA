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
<title>Admin View Page(update delete)</title>
<link href='https://fonts.googleapis.com/css?family=Baumans' rel='stylesheet'>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<style>
body {
    font-family: 'Baumans';font-size: 22px;
}
</style>
</head>

<body>

<div class="w3-top">
  <div class="w3-bar w3-black w3-wide w3-padding w3-card">
    <a href="#home" class="w3-bar-item w3-button"><b>AG</b> Agro</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="#products" class="w3-bar-item w3-button">Products</a>
      <a href="#about" class="w3-bar-item w3-button">About</a>
      <a href="#slideshow" class="w3-bar-item w3-button">Contact</a>
      
    </div>
  </div>
</div>

<br><br><br>





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
    <form action="adminResult.jsp" method="get">
      <input type="text" placeholder="search by province " name="search">
      <button type="submit"><i class="fa fa-search">Search</i></button>
    </form>
</div></div>
</br> </br>

	<center><h2><font color="#02075d">COSTGUIDE DETAILS</font></h2></center>
	
<div align="center">
		<table border="1" cellpadding="12">
		 
		  <tr>
		  		<th>CID</th>
                <th>PROVINCE</th>
                <th>PRODUCT</th>
                <th>AMOUNT</th>
                <th>COST</th>
               
                <th>UPDATE</th>
                <th>DELETE</th>
                
            </tr>
              
		</div>
		
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM costguide";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="#ffffff">

<td><%=resultSet.getString("Cid") %></td>
<td><%=resultSet.getString("province") %></td>
<td><%=resultSet.getString("product") %></td>
<td><%=resultSet.getString("amount") %></td>
<td><%=resultSet.getString("cost") %></td>

<td>
<a href="update_su.jsp?Cid=<%=resultSet.getString("Cid")%>" class="submit1">UPDATE</a></td>
<td>
<a href="deletecostguide.jsp?Cid=<%=resultSet.getString("Cid")%>" class="submit1">DELETE</a></td>
		 
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

	
</body>
</html>
