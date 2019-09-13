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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 2px solid black;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #0dd661;
  color: white;
  font-size: 17px;
  border: 2px solid black;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background:  #282e33;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}


</style>
</head>
<body>
<section  >
 <div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides" src="img/fpr1.jpg" style="width:1260px" height="500px">
  <img class="mySlides" src="img/fpr2.jpg" style="width:1260px" height="500px">
  <img class="mySlides" src="img/fpr3.jpg" style="width:1260px" height="500px">

</div>
</section>
<hr>

<div class="container">


 

<br><br>



<script>


var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // in seconds change slides
}
</script>
</div>
</section >
    


    
 
 <div class="container">
    <form action="home1.jsp" method="get" class="example">
      <input type="text" placeholder="Search farmer's name..." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>

</br> </br>
  <center><h1>   Farmer's Products  Details </h1> </center>
 
 
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

 


        <section>
        <div>
        
  
        

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
                     
                      <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String a = request.getParameter("search");
String sql ="SELECT * FROM farmersproducts";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
	
	%>
<tr>           
                
                <td><%=resultSet.getString("fid") %></td>
                <td><%=resultSet.getString("fname") %></td>
                <td><%=resultSet.getString("fproduct") %></td>
                <td><%=resultSet.getString("amountofseeds") %></td>
                <td><%=resultSet.getString("harvesttime") %></td>
                <td><%=resultSet.getString("harvestland") %></td>
                
                
       
        </tr>
        
        


 

 

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
 
       </div>
    </section >
    

  </table>
        
        
    
  </section>
    
  </div>  

</body>
</html>