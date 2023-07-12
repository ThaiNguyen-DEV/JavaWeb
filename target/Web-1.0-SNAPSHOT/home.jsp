<%-- 
    Document   : home
    Created on : 9 thg 7, 2023, 17:15:34
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${not empty userobj }">
            <h1>Name:${userobj.name}</h1>}
            <h1>Email:${userobj.email}</h1>
        </c:if>
    </body>
</html>
