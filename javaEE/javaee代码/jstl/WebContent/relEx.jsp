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
        相等判断：${num1==num2}等价于${num1 eq num2}
        不等判断：${num1!=num2}等价于${num1 ne num2}
        小于判断：${num1< num2}等价于${num1 lt num2}
        大于判断：${num1> num2}等价于${num1 gt num2}
        小于等于判断：${num1<=num2}等价于${num1 le num2}
        大于等于判断：${num1>=num2}等价于${num1 ge num2}
        </h1>
    </body>
</html>
