
 <!--<embed src="C::\\Users\\Goda\\Desktop\\miniproj\\hello.mp3" width="240" height="160">
</embed>
-->
<p>heyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy</p>
 <form  method="post">
    
     <input type="text" name="songname">songname enter
        <input type="submit"
                            value="enter song">
    </form>
 <jsp:forward page ="E.jsp">
<%String userid = session.getAttribute("userId").toString(); %>
    Hello<%=userid%>
<%@page import=" java.io.File"%>
<%@page import=" java.io.InputStream"%>
<%@page import=" java.net.URI"%>

<%@page import="java.net.URL"%>
<% URL url=new URL("http://www.largesound.com/ashborytour/sound/brobob.mp3");%>

<% URL url9=new URL(userid);%>


<%--<%
////http://www.largesound.com/ashborytour/sound/AshboryBYU.mp3    
        
            File file = new File("friend.mp3");

            URL url5 = file.toURI().toURL();
    //URI uri = file.toURI();
   // URL url1=uri.toURL();
  
%> --%>
<audio controls="controls" preload="auto" id="audio_player">
    <source src= "<%= url9 %>" type="audio/mp3">
    
</audio>
