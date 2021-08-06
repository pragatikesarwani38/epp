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
                   <h2> Company Profile</h2>
                   <span style="text-align:justify;color:gray;">
                   <p> We are pleased to introduce our company as one of the leading manufacturers and exporters of Sports Balls  and training equipments.
                    We have a wide range of products of all the above mentioned sports, We are wiling to make items according to the customers required
                    logos and specifications.Our all departments are well organized and functioning according to ISO standards.</p>
                    <h3>Production planning and control:</h3>
                    <p>We have a distinguished production setup.In order to meet the quality & service standards we have skilled and professional
                    workforce with us. We deal all orders with great importance providing quality standards in our whole production system from 
                    arrangment of raw material to</p>
                    <p>dispatching the finished</p>
                    <p>goods to the cutomer.</p>
                    <p>As it is said Quality Cant be inspected but manufactured we follow the same.</p>
                    <h3 style="margin-top:5px;">Research & Development:</h3>
                    <p>We have a motto of constant development in all of our product lines.This is the reason of our product development and improvement.
                    Customer suggestions and feed backs have been the main source of information for our R&D department.</p>
                    <h3 style="margin-top:5px;">Social policy:</h3>
                    <p>We at Karam Industries are committed with dedication to condemn child labor, Forced labor and discrimination, 
                    improve employment conditions and compensate our employees, We provide a safe and healthy environment for our employees.</p>
                    </span>
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
