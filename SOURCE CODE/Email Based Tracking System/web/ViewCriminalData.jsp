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
      <li><a href="AdminHome.jsp"><strong>Home</strong></a></li>
       <li><a href="ViewPolice.jsp"><strong>View Police</strong></a></li>
      <li><a href="AddCriminalData.jsp"><strong>Add Criminal Data</strong></a></li>
       <li class="active"><a href="ViewCriminalData.jsp"><strong>View Criminal Data</strong></a></li>
      <li><a href="Admin.jsp"><strong>Logout</strong></a></li>
      
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->

<!-- ####################################################################################################### -->

<center>
            
            <h2>View All Criminals Data</h2>

                <table >
                                
                    <tr> <th>Sr.No</th>
                        <th>Criminal Name</th>
                    <th>Email</th>
                   <th>Mobile</th>
                   <th>Location</th>
                    <th style="background: red;">Crime</th>
                 <th>Crime Details</th>
                 <th>Data Uploaded Date</th>
                       <th>Criminal Image</th>
                    <th>Delete Criminal</th></tr>
              <%
              try{
                  String query="select * from crime_data";
                  ResultSet r=Queries.getExecuteQuery(query);
                  int c=1;
                  while(r.next()){
                      c=c+1;
                      %>
                    <tr>
                        <td><%=c%></tD>
                        <td><%=r.getString("name")%></td>
                        <td><%=r.getString("email")%></td>
                        <td><%=r.getString("mobile")%></td>
                        <td><%=r.getString("location")%></td>
                        <td style="color: red;"><%=r.getString("crime")%></td>
                        <td><%=r.getString("details")%></td>
                        <td><%=r.getString("date")%></td>
                        <td><image src="view.jsp?id=<%=r.getString("id")%>" width=100 height="100"/></td>
                        <td><a href="Delete.jsp?id=<%=r.getString("id")%>">Delete</a></td>
                    </tr>
                    
                    <%
                  }
                  
                  
              }catch(Exception e){
                  out.println(e);
              }
              
              
              
              %>      

                  
                </table>
            
            </form>  
            
        </center>
            
            
        

</body>
</html>