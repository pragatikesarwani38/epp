<%@page import="mypack.DbManager"%>
<%
    String notificationtext=request.getParameter("notificationtext");
    DbManager dm=new DbManager();
    String posteddate=dm.getDate();
    String query="insert into notification(notificationtext,posteddate) value('"+notificationtext+"','"+posteddate+"')";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Notificaion is posted');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alret('Notificaion is not posted');window.location.href='../adminhome.jsp';</script>");
    }
%>