<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Market </title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

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
            <h1>Daily Vegetable Price </h1>      
            <p> Add the buying and selling price  of the products from a specific market..</p>
        </div>
    </div>  

        <div class="container" >

            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" 
            data-target="#myModal">ADD DAILY PRICE</button>


<!-- Modal starts here -->
    <!--     -->
    
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

    <!-- l content-->
                <div class="modal-content">
                    <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add the prices:</h4>
                    </div>
                <div class="modal-body">


    <form  action="AddDailyPriceServlet" method="post" >

	Enter the market's name:
	<br>
	  <input  class="form-control" type="text" name="DailyMarketName" placeholder="eg:Wellawatte market" required><br>
	<br>
	
	Enter the name of the product:
	<br>
	 <input  class="form-control" type="text" name="DailyProductName" placeholder="eg:Mango"required> <br>
	<br>
	
	Enter the today's date:<br>
	 <input  class="form-control" type="date" name="DailyDate" placeholder="eg:2018.09.09" required> <br>
	<br>

	Enter the buying price of the product:
	<br>
	<input  class="form-control" type="number" name="buyingPrice" placeholder="eg:200.00" min="1" required> <br>
	<br>

	Enter the selling price of the product:
	<br>
	<input  class="form-control" type="number" name="sellingPrice" placeholder="eg:200.00" min="1"required> 
	<br>
    <br>
	
	<input type="submit" class="btn btn-info btn-lg form-control" value="Submit">
	<br>
	</form>
 </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<!-- Modal ends here here -->
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

    
    
<!-- Listing the results starts here -->


    
<div class="container">
  <h2>List of markets and details which are added are given below:</h2>
  <p>The list of markets and the buying and selling prices can be changed here.</p>            
  <table class="table table-hover "   >
    <thead>
      <tr>
       <th>DP ID</th>
        <th>Market Name </th>
        <th>Product</th>
        <th>Date</th>
        <th>Buying Price</th>
        <th>Selling Price</th>
        <th> Activity 1 </th>
        <th> Activity 2  </th>
      </tr>
    </thead>
    

<% 
 
while(resultSet.next()){
%>
    
    
      <tr>
      	 <td><%=resultSet.getString(1) %></td>
        <td><%=resultSet.getString(2) %></td>
        <td><%=resultSet.getString(3) %></td>
        <td><%=resultSet.getString(4) %></td>
        <td><%=resultSet.getString(5) %></td>
        <td><%=resultSet.getString(6) %></td>
       	<td><button type="button" class="btn btn-success"><a href="UpdateDailyPriceForm.jsp?DPID=<%=resultSet.getString("DPID")%> "class="submit1">UPDATE</a></button></td>
        <td><button type="button" class="btn btn-danger"><a href = 'DeleteDailyPrice.jsp?d=<%=resultSet.getString("DPID")%> 'class="button1">Delete</button></td>
      </tr>
    
 
</div>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
<footer class="w3-center w3-black w3-padding-16">
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">Agro web</a></p>
</footer>
</body>
</html>