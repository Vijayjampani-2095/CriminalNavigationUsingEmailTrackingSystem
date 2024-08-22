<%-- 
    Document   : Admin
    Created on : 7 Apr, 2021, 6:43:22 PM
    Author     : KishanVenky
--%>

<%@page import="java.util.Random"%>
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
      <li><a href="index.html"><strong>Home</strong></a></li>
      <li><a href="Admin.jsp"><strong>ADMIN</strong></a></li>
      <li class="active"><a href="Police.jsp"><strong>Police</strong></a></li>
      
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="#">Criminal Navigation Using Email Tracking System</a></h1>
    
    </div>
    
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row3">
  <div id="featured_slide_">
    <ul id="featured_slide_Content">
      <li class="featured_slide_Image"><a href="#"><img src="images/et.png" alt="" /></a>

      </li>
      
      
      <li class="clear featured_slide_Image"><!-- Important - Leave This Empty --></li>
    </ul>
  </div>
    
</div>
<center>
            
            <h2>POLICE REGISTRATION</h2>
           <form action="PoliceRegAction" method="post" enctype="multipart/form-data">
              <%String msg=request.getParameter("msg");
                      if(msg!=null&&msg.equals("success")){
                          %>
                          <font color="red">Registration Successful...!!!</font>
                          <%
}else  if(msg!=null&&msg.equals("failed")){
%>
<font color="red">Registration Failed...!!!</font>
<%
}%>          
          <table>
              <tr><th>ID Number</th><td><input type="text" name="id" required=""></tD></tr>
              <tr><th>Police Name</th><td><input type="text" name="name" required=""></tD></tr>
              <tr><th>Police Email</th><td><input type="email" name="email" required=""></tD></tr>
              <tr><th>Mobile</th><td><input type="number" name="mobile" required=""></tD></tr>
              <tr><th>Password</th><td><input type="password" name="password" required=""></tD></tr>
                 <tr><th>ID Card</th><td><input type="file" name="image" required=""></tD></tr>
              <tr><th></th><td><input type="submit" value="Register"> <a href="Police.jsp">Login</a>
                  
                  </tD></tr>
          </table>
      </form>
            
            
            
        </center>


</body>
</html>