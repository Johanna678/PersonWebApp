<%-- 
    Document   : edit_person_outcome
    Created on : Apr 13, 2026, 1:32:51 AM
    Author     : johan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit person outcome Page</title>
    </head>
    <body>
        <h1>Edit person outcome</h1>
        <%
        Long id=(Long)request.getAttribute("id");
        String surname=(String)request.getAttribute("surname");
        %>
        
        <b><%=surname%> [<%=id%>] </b> has been successfully edited in the database
        <br>
             Please click<a href="menu.jsp">here</a>> to get back to the menu page
        <br>
        OR
        Click<a href="index.html">here </a> to go back home page
    </body>
</html>
