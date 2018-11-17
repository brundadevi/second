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
 <%
        
           try{  
                 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "SYSTEM", "goda");
        PreparedStatement theStatement = null;        
                
                theStatement = con.prepareStatement("select * from userinfo where userid=? and password=?");
                theStatement.setString(1,request.getParameter("userid"));
                theStatement.setString(2,request.getParameter("password"));
                ResultSet theResult = theStatement.executeQuery();
System.out.println("Success");
                if(theResult.next()){
%>                    
                    <p>success</p>
  <%                  System.out.println("Success");
               } else{
                    System.out.println("Failed");}
%>
                    <p>nopee</p>
<%
                }catch(Exception e){
                    System.out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                }  
        %>
    </body>
</html>