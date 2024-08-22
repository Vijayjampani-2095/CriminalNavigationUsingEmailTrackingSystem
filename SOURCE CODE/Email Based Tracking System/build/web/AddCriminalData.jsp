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
      <li><a href="AdminHome.jsp"><strong>Home</strong></a></li>
      <li class="active"><a href="AddCriminalData.jsp"><strong>Add Criminal Data</strong></a></li>
       <li><a href="ViewCriminalData.jsp"><strong>View Criminal Data</strong></a></li>
      <li><a href="Admin.jsp"><strong>Logout</strong></a></li>
      
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->

<!-- ####################################################################################################### -->

<center>
            
            <h2>Add Criminal Data</h2>
          
              <form action="AddCrimeAction" method="post" enctype="multipart/form-data">
                <table>
                      <%String msg=request.getParameter("msg");
                      if(msg!=null&&msg.equals("success")){
                          %>
                          <font color="red">Data Uploaded Successfully...!!!</font>
                          <%
}else  if(msg!=null&&msg.equals("failed")){
%>
<font color="red">Data Uploading Failed...!!!</font>
<%
}%>          
                    <tr><th>Criminal Name</th><td><input type="text" name="name" required=""></td></tr>
                    <tr><th>Email</th><td><input type="email" name="email" required=""></td></tr>
                    <tr><th>Mobile</th><td><input type="number" name="mobile" required=""></td></tr>
                    <tr><th>Location</th><td><input type="text" name="location" required=""></td></tr>
                     <tr><th>Crime</th><td><input type="text" name="crime" required=""></td></tr>
                     <tr><th>Crime Details</th><td><textarea cols="30" rows="10" name="details"></textarea></td></tr>
                       <tr><th>Image</th><td><input type="file" name="image" required=""></td></tr>
                    
<tr><th></th><td><input type="submit" value="Add Crime Data" required="">
<input type="reset" value="Reset"></td></tr>
                  
                </table>
            
            </form>  
            
        </center>
            
            
        

</body>
</html>