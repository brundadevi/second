import java.sql.*;
class Orac
{
public static void main(String args[]) 

{
try

{int rst;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection
	("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","goda");
	Statement st=con.createStatement();
	
        
     // st.executeUpdate(sql);
//st.executeUpdate("update empt set eid=222 where eid=30");
	ResultSet  rs=st.executeQuery("select * from empt");
	System.out.println("u[daterd");
	
	while(rs.next())
	{
	System.out.println("hey:"+rs.getString(2)+"oy"+rs.getInt(1));
	}

}catch(Exception e){e.getMessage();}
}
}	