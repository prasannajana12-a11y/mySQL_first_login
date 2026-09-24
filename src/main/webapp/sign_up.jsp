<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
</head>
<body>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/loyola";
String id = "root";
String pass = "jana";
String user = request.getParameter("id");
String password = request.getParameter("pass");
try {
    Connection con = DriverManager.getConnection(url, id, pass);
    System.out.println("The connection is made..!");
    String check_query = "SELECT COUNT(user_name) AS found FROM students WHERE user_name=?";

    PreparedStatement checkPs = con.prepareStatement(check_query);
    checkPs.setString(1, user);

    ResultSet crs = checkPs.executeQuery();

    if (crs.next() && crs.getInt("found") == 0) 
    {
        String sql = "INSERT INTO students VALUES (?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, user);
        ps.setString(2, password);
        int result = ps.executeUpdate();
        System.out.println("The database is affected with " + result + " rows..!");
%>

        <h2>Sign up successfully!</h2>
        <br>
        <a href="index.html">Go to Login</a>

<%
        ps.close();

    } else {
%>

        <h2>The entered user name is already taken!</h2>
        <br>
        <h3>Please enter a unique name!</h3>
        <br>
        <a href="index.html">Sign up again</a>

<%
    }

    crs.close();
    checkPs.close();
    con.close();

} catch (SQLException e) {

    out.println("<h2>Exception occurred!</h2>");
    out.println("<p>" + e.getMessage() + "</p>");

    e.printStackTrace();
}
%>

</body>
</html>
