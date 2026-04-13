<%-- 
    Document   : get_list
    Created on : Apr 13, 2026, 12:03:03 AM
    Author     : johan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JGet List Page</title>
    </head>
    <body>
        <h1>Get List</h1>
        <p>
            Please click on the button below to get the entire list
        </p>
        <form action="GetListServlet" method="GET">
            <input type="submit" value="GetList" />
        </form>
    </body>
</html>
