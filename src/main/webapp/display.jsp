<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>data request</title>
</head>
<body>

<h2>All data displaying..!</h2>
<%

String url = "jdbc:mysql://localhost:3306/loyola";
String id = "root";
String pass = "jana";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(url, id, pass);
	String query="select * from students";
	Statement stm=con.createStatement();
	ResultSet rs=stm.executeQuery(query);
	%>
		<table border="2">
		<tr>
		<th>User Name</th>
		<th>Password</th>
		</tr>
	<% 
	while(rs.next())
	{
		%>
		<tr>
			<th><%=rs.getString("user_name") %></th>
			<th><%=rs.getString("password") %></th>
		</tr>
		<%
	}
	%></table><% 
}
catch(SQLException e)
{
	out.println("<h2>Exception occured..!</h2>");
}

%>
</body>
</html>