<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>	
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "SYSTEM", "goda");

PreparedStatement ps = con.prepareStatement("insert into userinfo values(?,?,?)");
                String userid = request.getParameter("userid");
                
                String password = request.getParameter("password");
                String repassword = request.getParameter("repassword");

                ps.setString(1, userid);
           
               
          
                ps.setString(2, password);
                ps.setString(3, repassword);
                int n = ps.executeUpdate();
                if (n > 0) {
        %>
        <jsp:forward page="login.html"></jsp:forward><p>Registered Successfully</p>
        <a href="signup.html">GOBACK</a>
        <%
        } else {
        %>
        <p>Data Not added</p>
        <%
            }
        } catch (Exception e) {
        %>
        <p style="color: pink">Error..!<%=e%> </p>
        <%
            }
        %>
    </body>
</html>
