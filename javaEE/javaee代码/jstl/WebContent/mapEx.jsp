<%@ page contentType="text/html" pageEncoding="GBK"
	import="java.util.*"%>
<html>
    <head>
        <title>EL���ʽʾ��</title>
    </head>
    <% 
    	HashMap map=new HashMap();
    	map.put("name","Java EE");
    	map.put("email","cust12@163.com");
    	map.put("password","cust123456");
    	request.setAttribute("info",map);
    %>
    	<h3>
    	��һ��Ԫ�أ�${info["name"]}
    	�ڶ���Ԫ�أ�${info.email}
    	������Ԫ�أ�${info.password}
        </h3>
    </body>
</html>
