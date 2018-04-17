<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
    <head>
        <title>JSTL</title>
    </head>
    <% 
    	session.setAttribute("msg","ÕâÊÇ<c:out>Ê¾Àý");
     %>
    	<h1>
        <c:out value="${msg}"></c:out>
        </h1>
    </body>
</html>
