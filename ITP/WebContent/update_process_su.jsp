<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/ITP";%>
<%!String username = "root";%>
<%!String password = "root1234";%>
<%
String Cid = request.getParameter("Cid");
String province=request.getParameter("province");
String product=request.getParameter("product");
String amount=request.getParameter("amount");
String cost=request.getParameter("cost");

if(Cid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(Cid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,username,password);
String sql="Update costguide set Cid=?,province=?,product=?,amount=?,cost=? where Cid="+Cid;
ps = con.prepareStatement(sql);
ps.setString(1,Cid);
ps.setString(2, province);
ps.setString(3, product);
ps.setString(4, amount);
ps.setString(5, cost);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
response.sendRedirect("viewCostGuide.jsp");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>