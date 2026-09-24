<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/loyola";
String id="root";
String pass="jana";
String user=request.getParameter("id");
String password=request.getParameter("pass");
ResultSet rst=null;
try {
	Connection con = DriverManager.getConnection(url,id,pass);
	out.println("The connection is made..!");
	String sql="select count(*) as user_count from students where user_name =? and password=?";
	PreparedStatement ps= con.prepareStatement(sql);
	ps.setString(1,user);
	ps.setString(2, password);
	rst=ps.executeQuery();
	}
catch (SQLException e) 
{
	System.out.println(e);
}
if(rst.next() && rst.getInt("user_count")==1)
{
	%>
	<br>
	<h2>Login success..!</h2><br>
	<% out.println("<h2>For the user "+user+" .<h2>");
}
else{
	%>
	<h2>please enter correct user name and password..!</h2><br>
	<a href="index.html">Login again..</a>
	<% 
}


%>



</body>
</html>