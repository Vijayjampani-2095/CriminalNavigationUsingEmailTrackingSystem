<%-- 
    Document   : OwnerRegAction
    Created on : 29 Sep, 2020, 5:52:17 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

 
    String id=request.getParameter("id");
    
    String query="delete from crime_data where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
     

%>
      <script type='text/javascript'>
          window.alert("Data Deleted Successful...!!");
          window.location="ViewCriminalData.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Deletion Failed..!!");
          window.location="ViewCriminalData.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>