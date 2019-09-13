<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String Cid = request.getParameter("Cid");
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
String sql ="select * from costguide where Cid='"+Cid+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>  Update page </title>
<link rel="stylesheet" href="Update_Pri.css">

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


<div class="jumbotron jumbotron-fluid">
  <div class="container">

<div class="bod" >
<center><h2><font color="#02075d">UPDATE PRODUCT</font></h2></center>
<form  method="post" action="update_process_su.jsp">
<h3>
<pre>
	CID : 		<input class="form-control"type="number" name="Cid" value="<%=resultSet.getString("Cid") %>" /></br>
	Province : 	<select class="form-control"type="text" name="province" value="<%=resultSet.getString("province") %>" >
				<option value="western">Western Province</option>
                 <option value="southern">Southern Province</option>
                 <option value="eastern">Eastern Province</option>
                  <option value="northern">Northern Province</option>
                <option value="central">Central Province</option>
                <option value="northCentral">North Central Province</option>
                <option value="northWestern">North Western</option>
                <option value="uva">Uva Province </option>
                <option value="sabaragamuwa"> Sabaragamuwa Province </option>	
	
	
				</select>
	
	Product : 	<input class="form-control"type="text" name="product"  value="<%=resultSet.getString("product") %>" ></br>
	Cost : 	    <input class="form-control"type="text" name="cost" value="<%=resultSet.getString("cost") %>" /></br>
	Amount : 	<input class="form-control"type="number" name="amount" value="<%=resultSet.getString("amount") %>" /><br>

	</pre>
	</h3>
	
	<center><input class="btn btn-primary" type="submit" class="submit" value="UPDATE">
</form>
</div>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>