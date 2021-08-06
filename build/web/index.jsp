<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:47:17 PM
    Author     : Anuj Dwivedi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
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
                <div id="left">
                   
                    <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.selectQuery("select * from notification order by posteddate desc");
                        while(rs.next())
                        {
                        %>
                        <table style="text-align: center; margin: 0 auto;" border="1" cellpadding="10px;">
                            <tr>
                            <td><%=rs.getString(2)%></p>
                             <td><%=rs.getString(3)%></td>
                            </tr>
                        </table>
                        <%}%>
                        
                </div>
                <div id="main">
                    <h2 style="text-align:center;">Karam's Introduction</h2>
                    <span style="text-align:justify;color:grey; margin-left:10px;">
                    <p> We are pleased to introduce our company as one of the leading manufacturers and exporters of boxing gloves,
                    Fitness line, Sports wear, Martial arts garments and training equipments.</p>
                    <p> We have a wide range of products of all the above mentioned sports, We are wiling to make items according to the customers required
                    logos and specifications.Our all departments are well organized and functioning according to ISO standards.</p>
                    <p>We house an extensive print production facility with state of the art equipment for screen printing, 
                    dye sublimation, and heat applied vinyls and transfers. We are very pro-active and responsive in our approach to new products
                    and services. If there are items you do not see on our web site that you feel would be of interest to you and others, we welcome
                    your input and suggestions. Thank you for your interest in our products and services.</p></span>
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
