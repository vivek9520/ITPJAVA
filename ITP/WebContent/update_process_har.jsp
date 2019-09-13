<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/ITP";%>
<%!String username = "root";%>
<%!String password = "root1234";%>
<%
String fid = request.getParameter("fid");
String fname=request.getParameter("fname");
String fproduct=request.getParameter("fproduct");
String amountofseeds=request.getParameter("amountofseeds");
String harvesttime=request.getParameter("harvesttime");
String harvestland=request.getParameter("harvestland");
if(fid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(fid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,username,password);
String sql="Update farmersproducts set fid=?,fname=?,fproduct=?,amountofseeds=?,harvesttime=?,harvestland=? where fid="+fid;
ps = con.prepareStatement(sql);
ps.setString(1,fid);
ps.setString(2, fname);
ps.setString(3, fproduct);
ps.setString(4, amountofseeds);
ps.setString(5, harvesttime);
ps.setString(6, harvestland);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
response.sendRedirect("retrivecheck.jsp");
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