<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
    <head>
        <title>JSTL</title>
    </head>
    <% 
    	session.setAttribute("msg","<B>етЪЧ<c:out>ЪОР§</B>");
     %>
    	<h1>
        <c:out value="${msg}"></c:out><br>
        <c:out value="${msg}" escapeXml="false"></c:out>
        </h1>
    </body>
</html>
