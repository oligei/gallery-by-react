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
        ����жϣ�${num1==num2}�ȼ���${num1 eq num2}
        �����жϣ�${num1!=num2}�ȼ���${num1 ne num2}
        С���жϣ�${num1< num2}�ȼ���${num1 lt num2}
        �����жϣ�${num1> num2}�ȼ���${num1 gt num2}
        С�ڵ����жϣ�${num1<=num2}�ȼ���${num1 le num2}
        ���ڵ����жϣ�${num1>=num2}�ȼ���${num1 ge num2}
        </h1>
    </body>
</html>
