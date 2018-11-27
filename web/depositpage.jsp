<%-- 
    Document   : depostipage
    Created on : Aug 30, 2018, 8:07:14 AM
    Author     : DATAPRO
--%>

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
            String s=session.getAttribute("ano").toString();
            System.out.println("String "+s);
            if(s==null)
            {
             %>
             <jsp:forward page="index.html"/>
             <%
            }
            else
            {
                %>
        <form name="g1" method="get" action="deposit.jsp">
        Enter amount:<input type="text" name="dep">
        <input type="submit" value="deposit">
        </form>
                <%
                    }
                }
                catch(Exception e)
                {
                  %><jsp:forward page="index.html"/> <% 
                }
                %>
    </body>
</html>
