<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:47:17 PM
    Author     : Anuj Dwivedi
--%>
<%
    if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E Procurement</title>
        <link href="css/style.css" rel="stylesheet"/>    
    </head>
    <body bgcolor="grey">
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
                    <li><a href="userhome.jsp">Home</a></li>
                    <li><a href="tender.jsp">Live Tenders</a></li>
                    <li><a href="discussion.jsp">Discussion</a></li>
                    <li><a href="complain.jsp">Complain</a></li>
                    <li><a href="changepassword.jsp">Change Pwd.</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div>
           
            <div id="parent">
                <form action="usercode/changepasswordcode.jsp" method="post">
                    <h2 style="text-align:center;color:blue;">Change Password</h2>
                    <table border="1" style="margin:0 auto; width:50%">
                        <tr>
                            <td>Enter old password</td>
                            <td>
                                <input type="password" name="oldpassword" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter New Password</td>
                            <td>
                                <input type="password" name="newpassword" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Confirm Password</td>
                            <td>
                                <input type="password" name="confirmpassword" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <input type="submit" value="Change Password"/>
                            </td>
                        </tr>
                    </table>
                </form>
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
<% } %>