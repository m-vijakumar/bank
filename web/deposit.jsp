<%-- 
    Document   : deposit
    Created on : Aug 30, 2018, 6:21:16 AM
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
            String am=request.getParameter("dep");
            String s=session.getAttribute("ano").toString();
            if(s==null)
            {
                %><jsp:forward page="index.html"/><%
            }
            else
            {
            String sql="select *from bank where accno="+s;
            st=con.createStatement();
            rs=st.executeQuery(sql);
            rs.next();
            int bal=Integer.parseInt(rs.getString("balance"));
             //int a=Integer.parseInt(bal);
             try{
             bal+=Integer.parseInt(am);
            }catch(Exception e)
            {
            %><jsp:include page="depositpage.jsp"/><p> please give valid amount</p><% 
              }
             String sql1="update bank set balance=" +bal+" where accno="+s;
             st.executeUpdate(sql1);
              String sql2="select *from bank where accno="+s;
             rs=st.executeQuery(sql2);
             rs.next();
            out.println(rs.getString("username") +" balance :" +rs.getInt("balance"));
            }
              
%>
    </body>
</html>
