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
                <h2 style="text-align:center;color:blue;">
                    All Complains
                </h2>
                <table border="1" style="margin:0 auto; width:90%">
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Email Address</th>
                        <th>Subject</th>
                        <th>Complain</th>
                        <th>Complain Date</th>
                        <th>Delete</th>
                    </tr>
                    <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.selectQuery("select * from complain");
                        while(rs.next())
                        {
                    %>
                    <tr>
                        <td><%=rs.getString("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("emailaddress")%></td>
                        <td><%=rs.getString("subject")%></td>
                        <td><%=rs.getString("complaintext")%></td>
                        <td><%=rs.getString("complaindate")%></td>
                        <td>
                            <a href="admincode/deletecomplain.jsp?id=<%=rs.getString("id")%>">Delete</a>
                        </td>
                    </tr>
                    <% } %>
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

















