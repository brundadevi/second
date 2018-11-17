

     
    <%@page import=" java.io.File"%>
<%@page import=" java.io.InputStream"%>
<%@page import=" java.net.URI"%>

<%@page import="java.net.URL"%>
<% String loca = session.getAttribute("loca").toString();
        out.println("userr iss " + loca);%>
   

<% URL urll=new URL(loca);%>
<audio controls="controls" preload="auto" id="audio_player">
    <source src= "<%= urll %>" type="audio/mp3">
    
</audio>
    
    <a href="bg1.jpg">lyrics</a>