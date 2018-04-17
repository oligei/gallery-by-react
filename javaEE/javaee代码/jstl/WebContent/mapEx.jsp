<%@ page contentType="text/html" pageEncoding="GBK"
	import="java.util.*"%>
<html>
    <head>
        <title>EL表达式示例</title>
    </head>
    <% 
    	HashMap map=new HashMap();
    	map.put("name","Java EE");
    	map.put("email","cust12@163.com");
    	map.put("password","cust123456");
    	request.setAttribute("info",map);
    %>
    	<h3>
    	第一个元素：${info["name"]}
    	第二个元素：${info.email}
    	第三个元素：${info.password}
        </h3>
    </body>
</html>
