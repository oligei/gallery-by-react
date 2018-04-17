<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
    <head>
        <title>JSTL</title>
    </head>
    <% 
    	session.setAttribute("score",5);
     %>
    	
    	<c:choose>
        <c:when test="${score>=60}">及格</c:when>
        <c:when test="${score<60}">不及格</c:when>
        </c:choose>
        
    </body>
</html>
