<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:47:17 PM
    Author     : Anuj Dwivedi
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    if(session.getAttribute("adminid")==null || session.getAttribute("adminid")=="")
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
                    <li><a href="adminhome.jsp">Home</a></li>
                    <li><a href="enquiries.jsp">Enquiries</a></li>
                    <li><a href="complains.jsp">Complains</a></li>
                    <li><a href="vendors.jsp">Vendors</a></li>
                    <li><a href="uploadtenders.jsp">Upload Tenders</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div>
           
            <div id="parent">
                <h2 style="text-align: center;color: blue;">
                    View all Vendors
                </h2>
                <table border="1" style="margin: 0 auto;">
                    <tr>
                        <th>Company Name</th>
                        <th>Address</th>
                        <th>Expertise area</th>
                        <th>Person Name</th>
                        <th>Contact No</th>
                        <th>Email Address</th>
                        <th>Tin NO</th>
                        <th>Pan NO</th>
                        <th>Register date</th>
                    </tr>
                    <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.selectQuery("select * from register");
                        while(rs.next())
                        {
                        %>
                        <tr>
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getString(7)%></td>
                            <td><%=rs.getString(8)%></td>
                            <td><%=rs.getString(10)%></td>
                        </tr>
              
                        <%}%>
                </table>
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

