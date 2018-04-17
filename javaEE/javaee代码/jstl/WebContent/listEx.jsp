<%@ page contentType="text/html" pageEncoding="GBK"
	import="java.util.*"%>
<html>
    <head>
        <title>EL表达式示例</title>
    </head>
    <% 
    	List all=new ArrayList();
    	all.add("EL study-List");
    	all.add("cust12@163.com");
    	all.add("cust123456");
    	request.setAttribute("allinfo",all);
    %>
    	<h3>
    	第一个元素：${allinfo[0]}
    	第二个元素：${allinfo[1]}
    	第三个元素：${allinfo[2]}
        </h3>
    </body>
</html>
