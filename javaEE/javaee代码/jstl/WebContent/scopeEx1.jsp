<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
    <head>
        <title>EL±í´ïÊ½Ê¾Àý</title>
    </head>
    	<% 
    	pageContext.setAttribute("info","page·¶Î§ÊôÐÔ");
    	request.setAttribute("info","request·¶Î§ÊôÐÔ");
    	session.setAttribute("info","session·¶Î§ÊôÐÔ");
    	application.setAttribute("info","application·¶Î§ÊôÐÔ");
    	 %>
    	<h1>
        ${info}
        </h1>
    </body>
</html>
