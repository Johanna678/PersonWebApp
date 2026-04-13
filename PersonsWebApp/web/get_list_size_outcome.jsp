<%-- 
    Document   : get_list_size_outcome
    Created on : Apr 13, 2026, 2:17:39 AM
    Author     : johan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get list size outcome Page</title>
    </head>
    <body>
        <h1>Get list size outcome</h1>
        <%
        Integer size=(Integer)request.getAttribute("size");
        %>
        There are  <b><%=size%> records in the database.
               <br>
             Please click<a href="menu.jsp">here</a>> to get back to the menu page
        <br>
        OR
        Click<a href="index.html">here </a> to go back home page
    </body>
</html>
