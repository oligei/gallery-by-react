<%@ page contentType="text/html" pageEncoding="GBK"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
    <head>
        <title>JSTL</title>
    </head>
    <% 
    	ArrayList al=new ArrayList();
    	al.add("�Ż�");
    	al.add("����");
    	al.add("������");
    	session.setAttribute("students",al);
     %>
    	
    	<c:forEach items="${students}" var="student">
	        ${student}
        </c:forEach>
        
    </body>
</html>
