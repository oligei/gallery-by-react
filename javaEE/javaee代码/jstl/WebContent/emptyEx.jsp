<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
    <head>
        <title>EL表达式示例</title>
    </head>
    	<% 
    	pageContext.setAttribute("num1",20);
    	pageContext.setAttribute("num2",40);
    	pageContext.setAttribute("num3",60);
    	 %>
    	<h1>
        empty操作：${empty info}
        三元运算：${num1>num2?"大于":"小于"}
        使用括号：${num1*(num2+num3)}
        </h1>
    </body>
</html>
