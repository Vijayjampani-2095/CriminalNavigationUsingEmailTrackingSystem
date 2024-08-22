<%-- 
    Document   : Admin
    Created on : 7 Apr, 2021, 6:43:22 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>Criminal Navigation Using Email Tracking System</title>

<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="table.css" type="text/css" />
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
      <li><a href="PoliceHome.jsp"><strong>Home</strong></a></li>
       <li   class="active"><a href="TrackCriminal.jsp"><strong>Track Criminal</strong></a></li>
  
      <li><a href="Police.jsp"><strong>Logout</strong></a></li>
      
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->

<!-- ####################################################################################################### -->
<%String id=(String)session.getAttribute("id");
String name=(String)session.getAttribute("name");

String email=request.getParameter("email");

%>
<center>
            
            <h2>Track Criminal Details</h2>
          
            <table>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Location</th>
                    <th>Crime</th>
                    <th>Details</th>
                <th>Date</th>
                <th>Image</th>
                </tr>   
                <%try{
                    String query="select * from  crime_data where email='"+email+"'or mobile='"+email+"'";
                    ResultSet r=Queries.getExecuteQuery(query);
                    if(r.next()){
                       %>
                <tr>
                       
                        <td><%=r.getString("name")%></td>
                        <td><%=r.getString("email")%></td>
                        <td><%=r.getString("mobile")%></td>
                        <td><%=r.getString("location")%></td>
                        <td style="color: red;"><%=r.getString("crime")%></td>
                        <td><%=r.getString("details")%></td>
                        <td><%=r.getString("date")%></td>
                        <td><image src="view.jsp?id=<%=r.getString("id")%>" width=100 height="100"/></td>
                      
                    </tr>
                <%
                    }else{
%>
<font color="red">No Data Found</font>
<%
}
                }catch(Exception e){
                    out.println(e);
}%>
                
                
            </table>
             
            
        </center>


</body>
</html>