<%-- 
    Document   : balance
    Created on : Aug 30, 2018, 6:21:47 AM
    Author     : DATAPRO
--%>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try
            {
            String s=session.getAttribute("ano").toString();
            //int a=Integer.parseInt(s);
            if(s==null)
            {
                %> <jsp:forward page="index.html"/><%
            }
            else
            {
            String sql="select *from bank where accno="+s;
            st=con.createStatement();
            rs=st.executeQuery(sql);
            rs.next();
            out.println(rs.getString("username") +" balance :" +rs.getString("balance"));
            }
            }
            catch(Exception e)
            {
                %> <jsp:forward page="index.html"/><%
            }
        
        
        %>
            <br><a href="main.html">Back</a>
    </body>
</html>
