<%-- 
    Document   : remove_person_outcome
    Created on : Apr 13, 2026, 2:11:50 AM
    Author     : johan
--%>

<%@page import="za.ac.tut.entities.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove person outcome Page</title>
    </head>
    <body>
        <h1>Remove person outcome</h1>
        <%
        Person  p=(Person)request.getAttribute("person");
        
        %>
        The person with id number <b> <%=p.getId()%></b> has been successfully removed from the database
               <br>
             Please click<a href="menu.jsp">here</a>> to get back to the menu page
        <br>
        OR
        Click<a href="index.html">here </a> to go back home page
    </body>
</html>
