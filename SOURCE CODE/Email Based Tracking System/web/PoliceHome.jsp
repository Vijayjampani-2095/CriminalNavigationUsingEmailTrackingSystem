<%-- 
    Document   : Admin
    Created on : 7 Apr, 2021, 6:43:22 PM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>Criminal Navigation Using Email Tracking System</title>

<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<!-- Featured Slider  -->
<script type="text/javascript" src="layout/scripts/jquery-s3slider.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#featured_slide_").s3Slider({
		timeOut:10000 
	});
});
</script>
<!-- / Featured Slider -->
</head>
<body id="top">
<div class="wrapper row1">
  <div id="topnav">
    <ul>
      <li  class="active"><a href="PoliceHome.jsp"><strong>Home</strong></a></li>
       <li><a href="TrackCriminal.jsp"><strong>Track Criminal</strong></a></li>
  
      <li><a href="Police.jsp"><strong>Logout</strong></a></li>
      
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->

<!-- ####################################################################################################### -->
<%String id=(String)session.getAttribute("id");
String name=(String)session.getAttribute("name");%>
<center>
            
            <h2>welcome  To :: <%=name%></h2>
          
            
            
            
        </center>


</body>
</html>