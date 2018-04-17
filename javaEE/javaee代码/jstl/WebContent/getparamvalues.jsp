<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
    <head>
        <title>EL表达式示例</title>
    </head>
    <% request.setCharacterEncoding("GBK"); %>
    	<h3>
    	第一个参数：${paramValues.inst[0]}
    	第二个参数：${paramValues.inst[1]}
    	第三个参数：${paramValues.inst[2]}
        </h3>
    </body>
</html>
