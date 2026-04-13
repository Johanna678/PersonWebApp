<%-- 
    Document   : add_person
    Created on : Apr 12, 2026, 11:46:20 PM
    Author     : johan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add person Page</title>
    </head>
    <body>
        <h1>Add person</h1>
        <form action="AddPersonServlet" method="POST">
            Name:
            <input type="text" name="name"  />
            <br>
            Surname:
            <input type="text" name="surname" />
            <br>
            Gender:
            <select name="gender">
                <option value="F">Female</option>
                <option value="M">Male</option>
            </select>
            <br>
            <input type="submit" value="ADD PERSON" />
        </form>
    </body>
</html>
