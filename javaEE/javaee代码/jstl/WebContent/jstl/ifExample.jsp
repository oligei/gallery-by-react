<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
    <head>
        <title>JSTL</title>
    </head>
    <% 
    	session.setAttribute("score",5);
     %>
    	<h1>
        <c:if test="${score>=60}">
        	����
        </c:if>
        <c:if test="${score<60}">
        	������
        </c:if>
        </h1>
    </body>
</html>
