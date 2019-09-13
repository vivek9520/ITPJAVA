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
<title>  Agro  </title>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="bootstrap/bootstrap.css">
   <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css/Income&Expenses.css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>








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


	<div class="Arrange">
		<div class="table-wrapper-scroll-y my-custom-scrollbar">

			 <table class="table table-bordered table-striped mb-0">
			    <thead>
 
 
                  <center><h2><font color="#5EBADF"> FARMERS PRODUCT DETAILS </font></h2></center>
					<tr bgcolor="#7474BF">
					
					
					
					<th > ID </th>
					<th > Farmer Name </th>
					<th > Farmer Product </th>
					<th > Amount of Seeds</th>
					<th> Harvest Time(in Months) </th>
					<th > Harvest Land(In acres) </th>
					<th> DELETE </th>
					<th> UPDATE </th>
					
					</tr> </thead>



<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM farmersproducts";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>

<tr >

<td><%=resultSet.getString("fid") %></td>
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("fproduct") %></td>
<td><%=resultSet.getString("amountofseeds") %></td>
<td><%=resultSet.getString("harvesttime") %></td>
<td><%=resultSet.getString("harvestland") %></td>
<td><a href = 'DeleteProduct.jsp?d=<%=resultSet.getString("fid")%> 'class="button1">DELETE</a></td>
<td><a href="update_har.jsp?fid=<%=resultSet.getString("fid")%>" class="submit1">UPDATE</a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>



</table>
</div>
</div> 


     

 

</body>
</html>