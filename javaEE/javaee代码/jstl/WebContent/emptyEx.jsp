<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
    <head>
        <title>EL���ʽʾ��</title>
    </head>
    	<% 
    	pageContext.setAttribute("num1",20);
    	pageContext.setAttribute("num2",40);
    	pageContext.setAttribute("num3",60);
    	 %>
    	<h1>
        empty������${empty info}
        ��Ԫ���㣺${num1>num2?"����":"С��"}
        ʹ�����ţ�${num1*(num2+num3)}
        </h1>
    </body>
</html>
