<%-- 
    Document   : deltender
    Created on : Aug 10, 2019, 2:51:57 PM
    Author     : Missy
--%>

<%@page import="mypack.DbManager"%>
<%
       String id=request.getParameter("id");
       DbManager dm=new DbManager();
       String query="delete from uploadtender where id='"+id+"'";
       if(dm.nonQuery(query))
       {
            out.print("<script>alert('tender deleted');window.location.href='../uploadtenders.jsp';</script>");
       }
       else
       {
            out.print("<script>alert('tender not deleted');window.location.href='../uploadtenders.jsp';</script>");
       }
       
%>