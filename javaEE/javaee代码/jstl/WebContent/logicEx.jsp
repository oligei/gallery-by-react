<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
    <head>
        <title>EL表达式示例</title>
    </head>
    	<% 
    	pageContext.setAttribute("flagA",true);
    	pageContext.setAttribute("flagB",false);
    	 %>
    	<h1>
        与：${flagA && flagB}等价于${flagA and flagB}
        或：${flagA || flagB}等价于${flagA or flagB}
        非：${! flagA}等价于${not flagA}
        </h1>
    </body>
</html>
