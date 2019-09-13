<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>  List Guide  </title>
<link rel="stylesheet" href="Details.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>




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




	<center><h2><font color="#5EBADF"> FARMER GUIDE</font></h2></center>
	
<div class="w3-container" align="center">
 <table class="w3-table-all" border="1" cellpadding="12">
         <thead>
      <tr class="w3-black">
           <th>GID</th>
           <th>VEGITABLE NAME</th>
           <th>DAYS</th>
           <th>TOOLS</th>
           <th>STEPS</th>
           <th>STATUS</th>
           <th>STATUS</th>
      </tr>
    </thead>
		
		 

              
		</div>
		
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM fguide";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>


<tr bgcolor="#5EBADF">

<td><%=resultSet.getString("gid") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("days") %></td>
<td><%=resultSet.getString("tools") %></td>
<td><%=resultSet.getString("steps") %></td>
<td><a href = "Deletesathu.jsp?d=<%=resultSet.getString("gid")%>" class="button1">DELETE</a></td>
<td><a href = "updatesathu.jsp?d=<%=resultSet.getString("gid")%>" class="button1">UPDATE</a></td>



		 
</tr>

 

<% 
}

} catch (Exception e) {
System.out.println();
}
%>

	
	
</body>
</html>










