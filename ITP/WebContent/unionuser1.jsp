<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Farmer Union</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {    /*  <div class="carousel-inner"> -->*/
    width: 100%;
    height: 100%;
  }
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
<body>


  <div class="carousel-inner">
     <img src="img/funion3.gif" width="100%" height="100%">
    </div>
    <br>
    <br>    
        
        <section>
            
  <div class="container">
  <h2>In order to know,the groups of farmers(Farmer's Unions) and where they belong ,view below ! </h2><br>
  <!-- Button to Open the Modal -->
      

          
    <form class="example" action="unionuser1.jsp" style="margin:auto;max-width:300px">
  <input type="text" placeholder="Search.." name="search">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
          
       
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
        
        <table class="table table-dark table-striped">
            <thead>
            <tr>
                <th>Farmer Union id</th>
                <th>Farmer Unions' Name</th>
                <th>Number of Farmers</th>
                <th>Province</th>
                <th>District</th>
               
            
            
            </tr>
                </thead>
                <%

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM farmerunion where name='"+request.getParameter("search")+"'";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
            <tbody>
            
            <tr>
                
   <td><%=resultSet.getString("id") %></td>
  <td><%=resultSet.getString("name") %></td>
  <td><%=resultSet.getString("noOfFarmers") %></td>
  <td><%=resultSet.getString("district") %></td>
  <td><%=resultSet.getString("province") %></td>
                
            </tr>
            
            <% 
}
} catch (Exception e) {
System.out.println();
}
%>
            </tbody>
            
        
  </table>
            
     </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
     </div>
     </div>
     </div>
     </div>

    
    
    
    
    </section>


</body>
</html>
