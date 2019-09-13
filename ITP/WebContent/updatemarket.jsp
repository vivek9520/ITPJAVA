<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String Mid = request.getParameter("Mid");
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
String sql ="select * from market where Mid='"+Mid+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>MARKET</h1>

<form method="post" action="updatemarketprocess.jsp">
<h3>
	ID: <input type="text" name="Mid" value="<%=resultSet.getString("Mid") %>" /></br></br>
	Name : <input type="text" name="name" value="<%=resultSet.getString("name") %>" /></br></br>
    District: <input type="text" name="district" min="1" max="500" value="<%=resultSet.getString("district") %>" ></br></br>
	Province : <input type="text" name="province" value="<%=resultSet.getString("province") %>" /></br>

</h3>
	<center><input type="submit" class="submit" value="UPDATE">
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