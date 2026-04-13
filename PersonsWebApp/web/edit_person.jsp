<%-- 
    Document   : edit_person
    Created on : Apr 12, 2026, 11:52:32 PM
    Author     : johan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit person Page</title>
    </head>
    <body>
        <h1>Edit person</h1>
        Please enter the details of a person you want edit
        <form action="EditPersonServlet" method="POST">
          ID:
          <input type="text" name="id"  />
          <br>
          Surname:
          <input type="text" name="surname"  />
          <br>
          <input type="submit" value="EDIT PERSON" />
        </form>
    </body>
</html>
