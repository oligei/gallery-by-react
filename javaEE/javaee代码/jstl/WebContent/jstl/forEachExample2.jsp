<%@ page contentType="text/html" pageEncoding="GBK"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
    <head>
        <title>JSTL</title>
    </head>
    <% 
    	HashMap hm=new HashMap();
    	hm.put("name","rose");
    	hm.put("age","10");
    	session.setAttribute("hm",hm);
     %>
    	
    	<c:forEach items="${hm}" var="student">
	        ${student.key},${student.value}<br>
        </c:forEach>
        
    </body>
</html>
