<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.math.*"%>
<html>
<head><title>application����ѧϰ</title></head>
<body>
<%!
	//BigInteger��java.math���ж���
	BigInteger count = null ;
%>
<%!	//��������ȫ�ֺ���
	//load���������ļ��ж�ȡ���ʼ���
	public BigInteger load(File file){
		BigInteger count = null ;	// ��������
		try{
			if(file.exists()){
				//��ȡ�ļ�����
				Scanner scan = new Scanner(new FileInputStream(file)) ;
				if(scan.hasNext()){
					count = new BigInteger(scan.next()) ;
				}
				scan.close() ;
			} else {	
				//�ļ������ڣ��ñ���һ���µģ���0��ʼ
				count = new BigInteger("0") ;
				save(file,count) ;	// ����һ���µ��ļ�
			}
		}catch(Exception e){
			e.printStackTrace() ;
		}
		return count ;
	}
	//save������������file�ļ���
	public void save(File file,BigInteger count){
		try{
			PrintStream ps = null ;//�����ӡ������
			ps = new PrintStream(new FileOutputStream(file)) ;
			ps.println(count) ;    //�������
			ps.close() ;
		}catch(Exception e){
			e.printStackTrace() ;
		}
	}
%>
<%
	String fileName = this.getServletContext().getRealPath("/") + "//2//count.txt";	// �����汣�����еļ����Ľ��
	File file = new File(fileName) ;
	if(session.isNew()){//�ǵ�һ�η���
		//ͬ������飬��һ���̷߳���ͬ�������ʱ�������̶߳���ķ��ʽ�������
		synchronized(this){
			count = load(file) ;	// ��ȡ
			count = count.add(new BigInteger("1")) ;	// ��ԭ���Ļ���������1
			save(file,count) ;
		}
	}
%>
<h2>���ǵ�<%=count==null?0:count%>λ�ÿͣ�</h2>
</body>
</html>