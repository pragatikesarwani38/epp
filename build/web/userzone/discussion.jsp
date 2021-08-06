<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:47:17 PM
    Author     : Anuj Dwivedi
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
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
                <form action="usercode/questioncode.jsp" method="post">
                    <h2 style="text-align:center;color:blue;">
                        Discussion Forum
                    </h2>
                    <table border="1" style="margin:0 auto; width:50%;">
                        <tr>
                            <td>Enter Question</td>
                            <td>
                                <textarea name="questiontext" required style="height:100px;resize:none;"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <input type="submit" value="Post Question"/>
                            </td>
                        </tr>
                    </table>
                </form>
                <br/><br/>
                <table border="1" style="margin:0 auto; width:90%;">
                    <tr>
                        <th>Question</th>
                        <th>Asked By</th>
                        <th>Posted Date</th>
                        <th>Post Answer</th>
                        <th>View Answer</th>
                    </tr>
                    <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.selectQuery("select * from question");
                        while(rs.next())
                        {
                    %>
                    <tr>
                        <td><%=rs.getString("questiontext")%></td>
                        <td><%=rs.getString("askedby")%></td>
                        <td><%=rs.getString("posteddate")%></td>
                        <td>
                            <a href="postanswer.jsp?qid=<%=rs.getString("qid")%>">Post Answer</a>
                        </td>
                        <td>
                            <a href="viewanswer.jsp?qid=<%=rs.getString("qid")%>">View Answer</a>
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