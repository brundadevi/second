  
<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
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
        
        <% String userid = request.getParameter("userid");
        out.println("userr iss"+userid);
        
        /*try {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "SYSTEM", "goda");

PreparedStatement ps = con.prepareStatement("select userid,password from userinfo where userid= ? and password=? ");
               
                
              //String password = request.getParameter("password");
               //  System.out.println("Success"); System.out.println(userid);

                /*ps.setString(1, userid);
           
               
          
                ps.setString(2, password);*/
                ResultSet rs = ps.executeQuery();
                
                               //int n = ps.executeUpdate();
                if (rs.next()) {
        %>
        <jsp:forward page ="B.jsp"></jsp:forward><p>Registered Successfully</p>
      
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

    <form action="B.jsp" method="post">
    <%
    session.setAttribute("userId", userid);
        %>
        
        <input type="submit"
                            value="Login">
    </form>
        