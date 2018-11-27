<%-- 
    Document   : withdraw
    Created on : Aug 30, 2018, 6:21:33 AM
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
            String am=request.getParameter("with");
            String s=session.getAttribute("ano").toString();
            String sql="select *from bank where accno="+s;
            st=con.createStatement();
            rs=st.executeQuery(sql);
            rs.next();
            int a=Integer.parseInt(rs.getString("balance"));
             //int a=Integer.parseInt(bal);
             int b=0;
             try{
              b=Integer.parseInt(am);
             }catch(Exception e)
             {
        %><jsp:include page="with.jsp"/><p>insert valid amount</p><%
             }
             if(a>b)
             {
             a=a-b;
             st.executeUpdate("update bank set balance=" +a+" where accno="+s);
             String sql2="select *from bank where accno="+s;
             rs=st.executeQuery(sql2);
             rs.next();
            out.println(rs.getString("username") +" balance :" +rs.getInt("balance"));
             }
             else
             {
        %> <jsp:include page="with.jsp"/>
            <font color="red">balance is Insficent</font>
        <%
             }
                //out.println(rs.getString("username") +" balance :" +rs.getString("balance"));
            %>
    </body>
</html>
