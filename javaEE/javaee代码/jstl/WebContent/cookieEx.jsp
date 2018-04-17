<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
    <head>
        <title>EL表达式示例-header</title>
    </head>
    <% 
    	Cookie c=new Cookie("user","tom");
    	c.setMaxAge(600);
    	response.addCookie(c);
     %>
    	<h1>
        ${cookie.user.value}
        </h1>
    </body>
</html>
