<%-- 
    Document   : get_list_outcome
    Created on : Apr 13, 2026, 1:45:50 AM
    Author     : johan
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get list outcome Page</title>
    </head>
    <body>
        <h1>Get list outcome</h1>
        <%
        List<Person> list=(List<Person>)request.getAttribute("list");
        %>
         Below is the list of people retrieved from the database
         <table>
             <%
             for(int i=0;i<list.size();i++){
             
                Person p=list.get(i);
                Long id =p.getId();
                String name=p.getName();
                String surname=p.getSurname();
             
             %>
             
             <tbody>
                 <tr>
                     <td>ID:</td>
                     <td><%=id%></td>
                 </tr>
                 <tr>
                     <td>Name:</td>
                     <td><%=name%></td>
                 </tr>
                 <tr>
                     <td>Surname</td>
                     <td><%=surname%></td>
                 </tr>
             </tbody>
             <%}%>
         </table>
            <br>
             Please click<a href="menu.jsp">here</a>> to get back to the menu page
        <br>
        OR
        Click<a href="index.html">here </a> to go back home page

    </body>
</html>
