<%-- 
    Document   : get_partial_list_outcome
    Created on : Apr 13, 2026, 1:56:26 AM
    Author     : johan
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get partial list outcome Page</title>
    </head>
    <body>
        <h1>Get partial list outcome</h1>
        <%
            List<Person> partialList =(List<Person>) request.getAttribute("partialList");
            Integer startIndex = (Integer) request.getAttribute("startIndex");
            Integer endIndex = (Integer) request.getAttribute("endIndex");
        %>
        Below is the list of people retrieved from the database, from index <b><%=startIndex%> </b> to <b><%=endIndex%></b>

        <table>

            <%
                for (int i = 0; i < partialList.size(); i++) {
                    Person p = partialList.get(i);
                    Long id = p.getId();
                    String name = p.getName();
                    String surname = p.getSurname();


            %>

            <tr>
                <td>ID</td>
                <td><%=id%></td>
            </tr>
            <tr>
                <td>name</td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>Surname</td>
                <td><%=surname%></td>
            </tr>

            <%

                }
            %>
        </table>

        <br>
        Please click<a href="menu.jsp">here</a>> to get back to the menu page
        <br>
        OR
        Click<a href="index.html">here </a> to go back home page

    </body>
</html>
