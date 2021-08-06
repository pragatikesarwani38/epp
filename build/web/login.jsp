<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:47:17 PM
    Author     : Anuj Dwivedi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E Procurement</title>
        <link href="css/style.css" rel="stylesheet"/>
        <script src="js/slider.js" type="text/javascript"></script>
    </head>
    <body bgcolor="lightblue" onload="moveSlider()">
        <div id="outer">
            <div id="header">
                <div id="logo">
                    <img src="images/logo.png"/>
                </div>
                <div id="banner">
                    E-Procurement
                </div>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="registration.jsp">Registration</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                </ul>
            </div>
            <div id="slider">
                <img id="slide" width="1000" height="250"/>
            </div>
            <div id="parent">
                <div id="left"></div>
                <div id="main">
                    <form action="generalcode/logincode.jsp" method="post">
                        <h2 style="color:blueviolet;">Login form</h2>
                        <table style="margin:0 auto; width:50%" border="1">
                            <tr>
                                <td>Enter User Id</td>
                                <td>
                                    <input type="text" name="userid" required/>
                                </td>
                            </tr>
                            <tr>
                                   <td>Enter Password</td>
                                   <td>
                                       <input type="password" name="password" required/>
                                   </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                       <input type="submit" value="Login"/>
                                </td>
                            </tr>
                            </table>
                    </form>
                </div>
            </div>
            <div id="footer">
                <div id="lfooter">
                    Copyright &copy; to Karam
                </div>
                <div id="rfooter">
                    Devloped By:- Er. Anuj Dwivedi
                </div>
            </div>
        </div>
    </body>
</html>
