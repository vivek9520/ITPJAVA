<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="CSS/DailyPriceSearchCss.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<meta charset="UTF-8">
<title>Search Daily Price</title>
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

<div class="container">
    <div class="row pt-1 pb-1">
        <div class="col-lg-12">
            <h4 class="text-center">Daily Price Search</h4>
            <h6 class="text-center">awesome responsive image slider with search bar</h6>
        </div>
    </div>
</div>
<section>
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/img.jpg" class="d-block w-100 h-200" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/img.jpg" class="d-block w-100" alt="...">
            </div>
            
        <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</section>

<section class="search-sec">
    <div class="container">
        <form action="" method="get">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-9 col-md-9 col-sm-12 p-0">
                            <input type="text" class="form-control search-slt" placeholder="Enter Product Name" name="search" required>
                        </div>
                      
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <button type="submit" class="btn btn-danger wrn-btn"><i class="fa fa-search">Search</i></button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>





<%
	String id = request.getParameter("userID");
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

<%
try{ 
	connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	statement=connection.createStatement();
	String Search = request.getParameter("search");
	String sql ="SELECT * FROM DailyPrice where ProductName = '"+request.getParameter("search")+"'";

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