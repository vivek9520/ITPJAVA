<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String fid = request.getParameter("fid");
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
String sql ="select * from farmersproducts where fid='"+fid+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>  AGRO  </title>
<style>
.form-style-9{
	max-width: 450px;
	background: #FAFAFA;
	padding: 30px;
	margin: 50px auto;
	box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
	border-radius: 10px;
	border: 6px solid #305A72;
}
.form-style-9 ul{
	padding:0;
	margin:0;
	list-style:none;
}
.form-style-9 ul li{
	display: block;
	margin-bottom: 10px;
	min-height: 35px;
}
.form-style-9 ul li  .field-style{
	box-sizing: border-box; 
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box; 
	padding: 8px;
	outline: none;
	border: 1px solid #B0CFE0;
	-webkit-transition: all 0.30s ease-in-out;
	-moz-transition: all 0.30s ease-in-out;
	-ms-transition: all 0.30s ease-in-out;
	-o-transition: all 0.30s ease-in-out;

}.form-style-9 ul li  .field-style:focus{
	box-shadow: 0 0 5px #B0CFE0;
	border:1px solid #B0CFE0;
}
.form-style-9 ul li .field-full{
	width: 100%;
}
.form-style-9 ul li input[type="button"], 
.form-style-9 ul li input[type="submit"] {
	-moz-box-shadow: inset 0px 1px 0px 0px #3985B1;
	-webkit-box-shadow: inset 0px 1px 0px 0px #3985B1;
	box-shadow: inset 0px 1px 0px 0px #3985B1;
	background-color: #216288;
	border: 1px solid #17445E;
	display: inline-block;
	cursor: pointer;
	color: #FFFFFF;
	padding: 8px 18px;
	text-decoration: none;
	font: 12px Arial, Helvetica, sans-serif;
}
.form-style-9 ul li input[type="button"]:hover, 
.form-style-9 ul li input[type="submit"]:hover {
	background: linear-gradient(to bottom, #2D77A2 5%, #337DA8 100%);
	background-color: #28739E;
}

</style>

</head>

<body>


<center><h2><font color="#02075d">UPDATE FARMERS PRODUCTS </font></h2></center>
<form method="post" action="update_process_har.jsp" class="form-style-9">
<ul>
    <li>
	FAMER ID : 		<input type="number" name="fid" class="field-style field-full align-none" value="<%=resultSet.getString("fid") %>" />
	</li>
	<li>
	FAMER NAME : 	<input type="text" name="fname" class="field-style field-full align-none" value="<%=resultSet.getString("fname") %>"  />
	</li>
	<li>
	FAMER PRODUCT : 	<input type="text" name="fproduct" class="field-style field-full align-none"  value="<%=resultSet.getString("fproduct") %>"  />
	</li>
	<li>
	AMOUNT OF SEEDS : 	<input type="text" name="amountofseeds" class="field-style field-full align-none" value="<%=resultSet.getString("amountofseeds") %>" />
	</li>
	<li>
	HARVEST TIME : 	<input type="text" name="harvesttime" class="field-style field-full align-none" value="<%=resultSet.getString("harvesttime") %>" />
	</li>
	<li>
	HARVEST LAND : <input type="text" name="harvestland" class="field-style field-full align-none" value="<%=resultSet.getString("harvestland") %>"/>
	</li>
	<li>
	
	<center><input type="submit" class="submit" value="UPDATE">
	</li>
	</ul>
</form>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>