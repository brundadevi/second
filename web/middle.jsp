<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
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
             try {
         String songname = request.getParameter("songname"); 
 out.print("ssis"+songname);
     
 
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "SYSTEM", "goda");

Statement stmt = con.createStatement();
      PreparedStatement ps = con.prepareStatement("select loc from musicc3 where sname = ? ");
                //String userid = request.getParameter("userid");
                
                //String password = request.getParameter("password");
                //String repassword = request.getParameter("repassword");

                ps.setString(1, songname);
           
               
          
               
                

     // String sql = "SELECT loc FROM musicc3 where sname=songname ";
      ResultSet rs = ps.executeQuery();
      //STEP 5: Extract data from result set
      while(rs.next()){
         //Retrieve by column name
         //int id  = rs.getInt("id");
         //int age = rs.getInt("age");
        
         String loca = rs.getString("loc");
        // String moviee = rs.getString("movname");

         //Display values
         
         out.println(" Last: " + loca);
      session.setAttribute("loca", loca);         
      }
    
        %>
      
      
       
        <p>Data added</p>
        <%
            
        } catch (Exception e) {
        %>
        <p style="color: pink">Error..!<%=e%> </p>
        <%
            }
        %>
    
       
     <jsp:forward page ="last.jsp"></jsp:forward>
       


     
        