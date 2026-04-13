<%-- 
    Document   : get_partial_list
    Created on : Apr 13, 2026, 12:07:02 AM
    Author     : johan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get partial list Page</title>
    </head>
    <body>
        <h1>Get partial list</h1>
        <p>
            Please enter start and end indicate of the list
        </p>
        <form action="GetPartialListServlet" method="POST">
            Start index:
            <input type="text" name="startIndex"/>
            <br>
            End index:
            <input type="text" name="endIndex"/>
            <br>

            <input type="submit" value="GET PARTIAL LIST" />
        </form>
    </body>
</html>
