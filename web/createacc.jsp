<%-- 
    Document   : createacc
    Created on : Aug 31, 2018, 6:38:40 AM
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
            int x=1000;
            String uname=request.getParameter("t1");
            String password=request.getParameter("t2");
            String bal=request.getParameter("bal");
            st=con.createStatement();
           String sqlc="select max(accno) from bank";
          // String acc;
             rs=st.executeQuery(sqlc);
             if(rs.next())
                x=Integer.parseInt(rs.getString(1));
             x++;
            
            String sqlt="insert into bank values ("+x+",'"+uname+"','"+password+"',"+bal+")";
            System.out.println("Sql  :  "+sqlt);
            st.executeUpdate(sqlt);
              out.println("Account number is  :"+x);
             %>
             
    </body>
</html>
