<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String DPID = request.getParameter("DPID");
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
String sql ="select * from DailyPrice where DPID='"+DPID+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<meta charset="ISO-8859-1">
<title>  AGRO  </title>


</head>

<body>
<!-- Navbar (sit on top) -->
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
            <h1> Update Daily Vegetable Price </h1>      
          <p>Daily Price Update </p>
            
      </div>
    </div>   
    



<div class="container">
<center><h2><font color="#02075d">UPDATE </font></h2></center>
<form method="post" action="UpdateDailyPriceProcess.jsp" class= "form-group" >

	
	<label for="DPID">DP ID:</label>
	<input type="text" class="form-control" name="DPID" value="<%=resultSet.getString("DPID") %>" />
	
	
	 <label for="DPID">Market Name:</label>
	<input type="text" class="form-control" name="MarketName" value="<%=resultSet.getString("MarketName") %>" />
	
	
	 <label for="DPID">Product Name:</label>
	<input type="text" class="form-control" name="ProductName"  value="<%=resultSet.getString("ProductName") %>" />
	
	<label for="DPID">Buying Price:</label>
	<input type="text" class="form-control" name="Buying" value="<%=resultSet.getString("Buying") %>" />
	
	<label for="DPID">Selling Price:</label>
	<input type="text" class="form-control" name="Selling" value="<%=resultSet.getString("Selling") %>" /><br>

	
	
	<center><input class="btn btn-secondary btn-lg btn-block" type="submit" class="submit" value="UPDATE">
</form>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</div>
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-16">
  <p>Powered by <a href="" title="W3.CSS" target="_blank" class="w3-hover-text-green">Agro web</a></p>
</footer>
</body>
</html>