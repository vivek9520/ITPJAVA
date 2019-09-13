<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("d");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "itp";
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
String sql ="select * from fguide where gid='"+id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<head>
  <title>update Guide</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
  <style>
    * Create three unequal columns that floats next to each other */
.column {
  float: left;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

.left, .right {
  width: 30%;
}

.middle {
  width: 70%;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

  </style>
  

  

<head>
<body>
<br>
<br>

<div class="row">
  <div class="column left">
  <br>
  <br>
  <br>
    <img src="img/b5.jpg" alt="Girl in a jacket">
  </div>


  <div class="column middle">
    <div class="container">
	<br>
  <h2><center><b><u>update Your Guide</u></b></center></h2>
  <br>


<form name="myForm" action="updatesathuguide.jsp"  method="post">

    <div class="form-group">
      <label for="name">ID:</label>
      <input type="text" class="form-control"  name="id"value="<%=resultSet.getString("gid") %>" />     
    </div>
    
     <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control"  name="name"value="<%=resultSet.getString("name") %>" />     
    </div>   
    
      <div class="form-group">
      <label for="name">No Of Days Used:</label>
      <input type="text" class="form-control"  name="days"value="<%=resultSet.getString("days") %>" />     
    </div>      
	
      <div class="form-group">
      <label for="name">Tools:</label>
      <input type="text" class="form-control"  name="tools" min="1" max= "500" value="<%=resultSet.getString("tools") %>" />     
    </div> 
    
      <div class="form-group">
      <label for="name">Steps:</label>
      <input type="text" class="form-control"  name="steps"  value="<%=resultSet.getString("steps") %>" />     
    </div>     

	
	<center><input type="submit" class="submit" value="UPDATE">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>







