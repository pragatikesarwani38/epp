<%-- 
    Document   : logout
    Created on : Aug 7, 2019, 2:02:50 PM
    Author     : Anuj Dwivedi
--%>
<%
    session.invalidate();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../index.jsp'",1000);
            }
        </script>
    </head>
    <body bgcolor="black" onload="logout()">
    </body>
</html>
