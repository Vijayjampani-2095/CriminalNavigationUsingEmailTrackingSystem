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
       <li class="active"><a href="ViewPolice.jsp"><strong>View Police</strong></a></li>
      <li><a href="AddCriminalData.jsp"><strong>Add Criminal Data</strong></a></li>
       <li><a href="ViewCriminalData.jsp"><strong>View Criminal Data</strong></a></li>
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
                        <th>ID No</th>
                    <th>Name</th>
                   <th>Email</th>
                   <th>Mobile</th>
                
                 <th>Date of Register</th>
                       <th>Idcard Image</th>
                    <th>Activate </th></tr>
              <%
              try{
                  String query="select * from police_data";
                  ResultSet r=Queries.getExecuteQuery(query);
                  int c=1;
                  while(r.next()){
                      c=c+1;
                      String status=r.getString("status");
                      %>
                    <tr>
                        <td><%=c%></tD>
                         <td><%=r.getString("id_no")%></td>
                        <td><%=r.getString("name")%></td>
                        <td><%=r.getString("email")%></td>
                        <td><%=r.getString("mobile")%></td>
                        
                        <td><%=r.getString("date")%></td>
                        <td><image src="pview.jsp?id=<%=r.getString("id")%>" width=100 height="100"/></td>
                        <%if(status.equals("waiting")){%>
                        <td><a href="Activate.jsp?id=<%=r.getString("id")%>">Activate</a></td>
                        <%}else{
%>
 <td><%=r.getString("status")%></td>
<%
}%>
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