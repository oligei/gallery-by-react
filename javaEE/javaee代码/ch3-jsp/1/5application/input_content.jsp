<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<html>
<head><title>application����ѧϰ</title></head>
<body>
<%	
	//�������е����ݴ洢���û�ָ���ļ���
	request.setCharacterEncoding("GBK") ;	// �����������
	String name = request.getParameter("filename") ;
	String content = request.getParameter("filecontent") ;
	//Ҫ������ļ������о���·������ô���ʱ��ʹ��getRealPath()
	//ƴ���ļ�����
	String fileName = this.getServletContext().getRealPath("/") + "note" + File.separator + name ;	// ������note�ļ���֮��
	//G:\code\ch5-jsp\note\hhh.txt
	File file = new File(fileName) ;	// ʵ����File�����
	//��note�ļ��в������򴴽����ļ���
	if(!file.getParentFile().exists()){ //�жϸ��ļ����Ƿ����
		file.getParentFile().mkdir() ;	// ����һ���ļ���
	}

	PrintStream ps = null ;             //�����ӡ������
	ps = new PrintStream(new FileOutputStream(file)) ;//׼�����ļ��б���
	ps.println(content) ;               //�������
	ps.close() ;                        //�ر������
%>
<%	//����д�ļ��������
	//ʹ��java.util���е�Scanner��ȡ�ļ�
	Scanner scan = new Scanner(new FileInputStream(file)) ;
	scan.useDelimiter("\n") ;     //���ö�ȡ�ָ���
	StringBuffer buf = new StringBuffer() ;//���ڴ洢��ȡ���ļ�����
	while(scan.hasNext()){
		buf.append(scan.next()).append("<br>") ;//��ȡ����
	}
	scan.close() ;                //�ر�������
%>
<%=buf%>       <!--������ʽ�������-->
</body>
</html>