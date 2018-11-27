
<%@include  file="connect.jsp"%>
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
            try{
            //String acno=request.getParameter("accno");
            String uname=request.getParameter("t1");
            String psw=request.getParameter("t2");
            // int accno=Integer.parseInt(acno);
            st=con.createStatement();
            String sql="select * from bank where username='"+uname+"' and password='"+psw+"'";
            rs=st.executeQuery(sql);
            if(rs.next())
            {
                session.setAttribute("ano", rs.getString("accno"));
                %><jsp:forward page="main.html"/><% 
            }
            else
            {
                %>
                
                <jsp:include page="index.html"/>
               <center> <font color=red>Invalid details!!!</font></center><%
            }
            }
             catch(Exception e)
            {
                System.out.println(e);
                }
            %>
    </body>
</html>
