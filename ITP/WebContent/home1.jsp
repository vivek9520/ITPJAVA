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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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



<section  >
<div class="container"> 
<br> 
<br>
<br> 
<br>
 
 
    <img src="img/veg.gif" alt="Italian Trulli" width=100%>
    
 
 
</br> </br>
 <center> <h1>  Search for Farmer's Product</h1> </center>
 
 
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

 
 <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String a = request.getParameter("search");
String sql ="SELECT * FROM farmersproducts where fname = '"+a+"'";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>

        <section>
        <div>
        
    <center> <h3>Your results will appear below.</h3> </center>
        

      <table class="table table-dark table-striped">
            <thead>
            <tr>
                <th>FarmerProduct Id</th>
                <th>Farmer's Name</th>
                <th>Farmer's Product</th>
                <th>Amount of seeds</th>
                <th>Harvesting Time</th>
                <th>Harvesting Land Acre</th>
                
            
            
            </tr>
                </thead>
            <tbody>
            
            <tr>
                
                <td><%=resultSet.getString("fid") %></td>
                <td><%=resultSet.getString("fname") %></td>
                <td><%=resultSet.getString("fproduct") %></td>
                <td><%=resultSet.getString("amountofseeds") %></td>
                <td><%=resultSet.getString("harvesttime") %></td>
                <td><%=resultSet.getString("harvestland") %></td>
                
                
                    
            </tr>
            </tbody>
        
        
        </table>


 
       </div>
    </section >
    
 

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
 


  
        
        
    
  </section>
    
    
<br>
<footer class="w3-center w3-black w3-padding-16">
  <p>Powered by <a href="" title="W3.CSS" target="_blank" class="w3-hover-text-green">Agro web</a></p>
</footer>
</body>
</html>