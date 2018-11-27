<%-- 
    Document   : connect
    Created on : Aug 30, 2018, 5:13:15 AM
    Author     : DATAPRO
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           Statement st=null;
           PreparedStatement ps=null;
           ResultSet rs=null;
           Connection con=null;
           try{
               Class.forName("oracle.jdbc.driver.OracleDriver");
               System.out.println("register");
               con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:vijay","vijay","kumar");
               System.out.println("connected");
           }
           catch(Exception e)
           {
               System.out.println(e);
           }
           %>
    </body>
</html>
