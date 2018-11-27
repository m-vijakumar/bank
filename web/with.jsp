<%-- 
    Document   : with
    Created on : Aug 31, 2018, 6:27:03 AM
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
        <form method="get" action="withdraw.jsp">
         Enter amount:<input type="text" name="with">
         <input type="submit" value="Withdraw">
        </form>
        <%
            }
}catch(Exception e)
{
System.out.println("Exception is Thrwon  "+e);
             %>
             <jsp:forward page="index.html"/>
             <%
}
            %>
    </body>
</html>
