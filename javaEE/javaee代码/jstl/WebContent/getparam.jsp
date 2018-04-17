<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
    <head>
        <title>EL表达式示例</title>
    </head>
    	<h3>
    	接收请求中的参数（使用内置对象）：
    	<%=request.getParameter("ref")%>
    	接收请求中的参数（使用内置对象）：${param.ref}
        </h3>
    </body>
</html>
