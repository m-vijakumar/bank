<%-- 
    Document   : logout
    Created on : Aug 31, 2018, 7:35:16 AM
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
        <jsp:forward page="index.html"/>
        <%
            session.removeAttribute("ano");
            session.invalidate();
            out.print(session.isNew());
                
            %>
            
    </body>
</html>
