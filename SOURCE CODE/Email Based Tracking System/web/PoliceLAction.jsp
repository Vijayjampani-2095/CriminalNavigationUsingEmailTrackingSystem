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

   
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pass");
    
    String query="select * from police_data where id_no='"+uname+"'and password='"+pwd+"'";
    ResultSet i=Queries.getExecuteQuery(query);
    if(i.next()){
     String status=i.getString("status");
     if(status.equals("waiting")){
         %>
      <script type='text/javascript'>
          window.alert("you are not authorized by admin...!!");
          window.location="Police.jsp";
      </script>
      <%
     }else{
session.setAttribute("id",i.getString("id"));
session.setAttribute("name",i.getString("name"));
%>
      <script type='text/javascript'>
          window.alert("Login Successful...!!");
          window.location="PoliceHome.jsp";
      </script>
      <%
}
    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Login Failed..!!");
          window.location="Police.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>