<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
    <head>
        <title>EL���ʽʾ��</title>
    </head>
    	<% 
    	pageContext.setAttribute("num1",20);
    	pageContext.setAttribute("num2",40);
    	 %>
    	<h1>
        �ӷ���${num1+num2}
        ������${num1-num2}
        �˷���${num1*num2}
        ������${num1/num2}�ȼ���${num1 div num2}
        ȡģ��${num1%num2}�ȼ���${num1 mod num2}
        </h1>
    </body>
</html>
