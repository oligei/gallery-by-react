<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
    <head>
        <title>EL���ʽʾ��</title>
    </head>
    	<% 
    	pageContext.setAttribute("flagA",true);
    	pageContext.setAttribute("flagB",false);
    	 %>
    	<h1>
        �룺${flagA && flagB}�ȼ���${flagA and flagB}
        ��${flagA || flagB}�ȼ���${flagA or flagB}
        �ǣ�${! flagA}�ȼ���${not flagA}
        </h1>
    </body>
</html>
