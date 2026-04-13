<%-- 
    Document   : search_person
    Created on : Apr 12, 2026, 11:57:02 PM
    Author     : johan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Person Page</title>
    </head>
    <body>
        <h1>Search person</h1>
        Please enter the ID of the person to search
        <form action="SearchPersonServlet" method="POST">
            ID:
            <input type="text" name="id" value="" />
            <br>
            <input type="submit" value="SEARCH" />
        </form>
    </body>
</html>
