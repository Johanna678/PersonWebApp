<%-- 
    Document   : add_person_outcome
    Created on : Apr 13, 2026, 1:25:04 AM
    Author     : johan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Person outcome Page</title>
    </head>
    <body>
        <h1>Add person outcome</h1>
        <%
        String name=(String)request.getAttribute("name");
        String surname=(String)request.getAttribute("surname");
        %>
        <b><%=name%> <%=surname%> </b> has been successfully persisted into the database
        <br>
        Please click<a href="menu.jsp">here</a>> to get back to the menu page
        <br>
        OR
        Click<a href="index.html">here </a> to go back home page
                       
    </body>
</html>
