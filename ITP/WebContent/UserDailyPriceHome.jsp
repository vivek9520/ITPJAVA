<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link href="CSS/UserDailyPriceHome.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  
<meta charset="UTF-8">
<title>User Daily Price Home</title>
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
<br>
<br>

	<div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1>Daily Vegetable Price </h1>      
            <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>
            
            <div class="btn-group btn-group-justified btn">
    		<a href="SearchDailyPrice.jsp" class="btn btn-primary ">Search</a>
    		<a href="#" class="btn btn-primary">Home</a>
   			 
 	 	</div>
      </div>
    </div>   
    
    
    <%
String id = request.getParameter("username");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "itp";
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

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM DailyPrice";

resultSet = statement.executeQuery(sql);
%>


    
    <div class="container">
    
    	<div class="row">
<% 
 
while(resultSet.next()){
%>
       		 <div class = "col-md-3">
           		 <div class="card  align-items-center" style="width:300px height:500px padding:10px">
                		<img class="card-img-top" src="img/img0.jpg" alt="Card image" style="width:100%">
                   	 <div class="card-body">
                        <h4 class="card-title alert alert-success"><u>Vegetable :<%=resultSet.getString(3)%></h4></u>
                        <h5 lass="card-title">Market: <%=resultSet.getString(2) %></h5>
                        <h6>Buying : <%=resultSet.getString(5) %></h6>
                        <h6>Selling : <%=resultSet.getString(6) %></h6>
                        <a href="#" class=" block">About</a>
                    </div>
           		 </div>
           		 <br>
       		 </div>
        <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
   
    </div>
 </div>
<footer class="w3-center w3-black w3-padding-16">
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">Agro web</a></p>
</footer>
</body>
</html>