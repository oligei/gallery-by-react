<%@ page contentType="text/html" pageEncoding="GBK"
	import="java.util.*"%>
<html>
    <head>
        <title>EL���ʽʾ��</title>
    </head>
    <% 
    	List all=new ArrayList();
    	all.add("EL study-List");
    	all.add("cust12@163.com");
    	all.add("cust123456");
    	request.setAttribute("allinfo",all);
    %>
    	<h3>
    	��һ��Ԫ�أ�${allinfo[0]}
    	�ڶ���Ԫ�أ�${allinfo[1]}
    	������Ԫ�أ�${allinfo[2]}
        </h3>
    </body>
</html>
