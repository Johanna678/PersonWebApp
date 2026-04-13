<%-- 
    Document   : remove_person
    Created on : Apr 13, 2026, 12:13:51 AM
    Author     : johan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove person Page</title>
    </head>
    <body>
        <h1>Remove person</h1>
        Please enter the ID of the person to remove
        <form action="RemovePersonServlet" method="POST">
            ID:
            <input type="text" name="id"  />
            <br>
            
            <input type="submit" value="REMOVE PERSON" />
        </form>
    </body>
</html>
