 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Cost view</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body {
  font-family: Arial;
}

* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
</style>
    

</head>
<body background="img/bg-cost2.jpg">
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


<br>
<br>
<br>
<div class="container" style="background-color: white">
  <h2>Results...</h2><br>
    
    <br>
    <br>
    <%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "ITP";
String userId = "root";
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
    
          
  <table class="table table-dark table-hover">
    <thead>
      <tr>
       
        <th>Cost ID</th>
        <th>Province</th>
        <th>Product</th>
        <th>Cost</th>
        <th>Amount</th>
      </tr>
    </thead>
   
    
 <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String a = request.getParameter("search");
String sql ="SELECT *FROM costguide where province='"+a+"'";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
	
	%>
      <tr>
        <td><%=resultSet.getString("Cid") %>  </td>
        <td> <%=resultSet.getString("province") %> </td>
        <td> <%=resultSet.getString("product") %>  </td>
        <td> <%=resultSet.getString("cost") %> </td>
        <td> <%=resultSet.getString("amount") %> </td>
     </tr>   
        
     
 
  <% 
 
 
 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
    </tbody>
  </table>
    <br>
</div>
    <br><br>
    



</body>
</html>