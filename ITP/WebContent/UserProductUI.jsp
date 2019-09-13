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
<title>Products</title>
</head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>
      body, html {
    height: 100%;
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
  }

  * {
    box-sizing: border-box;
  }

  .bg-image {
    /* The image used */
    background-image: url("category.jpg");

    /* Add the blur effect */
    filter: blur(8px);
    -webkit-filter: blur(8px);

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
  }

  /* Position text in the middle of the page/image */
  .bg-text {
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
    color: white;
    font-weight: bold;
    border: 3px solid #f1f1f1;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    z-index: 2;
    width: 80%;
    padding: 20px;
      text-align: center;}
        
        
        /*search button*/
        
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
<body>

<body>

<div class="bg-image"></div>
<div class="bg-text">
    <h1> Product Category</h1>
    <br>
     <form action="SearchPro" method="get" class="example">
      <input type="text" placeholder="SEARCH PRODUCT" name="search">
      <button type="submit"><i class="fa fa-search">Search</i></button>
    </form>
    <br><br> 
    
    
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
    
    
    
    
 <table class="table table-dark table-striped ">
            <thead>
            <tr>
               <th>PID</th>
                <th>PRODUCT</th>
                <th>SEASON</th>
                <th>CATEGORY</th>
                <th>PLACES</th>
                <th>DETAILS</th>
                
            
            
            </tr>
                </thead>
                
            <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM product";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>    
                
                
            <tbody>
            
         <tr>
                <td><%=resultSet.getString("pid") %></td>
				<td><%=resultSet.getString("product") %></td>
				<td><%=resultSet.getString("season") %></td>
				<td><%=resultSet.getString("category") %></td>
				<td><%=resultSet.getString("places") %></td>
				<td><%=resultSet.getString("details") %></td>
                
                    
            </tr>
            </tbody>
       
        
        </table>
    
    </div>


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

	
</body>
</html>
