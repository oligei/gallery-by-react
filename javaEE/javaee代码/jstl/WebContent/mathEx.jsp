<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
    <head>
        <title>EL表达式示例</title>
    </head>
    	<% 
    	pageContext.setAttribute("num1",20);
    	pageContext.setAttribute("num2",40);
    	 %>
    	<h1>
        加法：${num1+num2}
        减法：${num1-num2}
        乘法：${num1*num2}
        除法：${num1/num2}等价于${num1 div num2}
        取模：${num1%num2}等价于${num1 mod num2}
        </h1>
    </body>
</html>
