/*======================= ʹ��userdata ���ݿ� =======================*/
USE jeedb ;
/*======================= ɾ��user���ݱ� =======================*/
DROP TABLE IF EXISTS T_TEACHER;
/*======================= ����user���ݱ� =======================*/
CREATE TABLE T_TEACHER(
	TCID			VARCHAR(30)		PRIMARY KEY ,
	TCNAME			VARCHAR(30)		NOT NULL ,
	TCPWD			VARCHAR(32)		NOT NULL
) ;
/*======================= ����������� =======================*/
INSERT INTO T_TEACHER(TCID,TCNAME,TCPWD) VALUES ('8001','zhangli','123') ;
INSERT INTO T_TEACHER(TCID,TCNAME,TCPWD) VALUES ('8002','lee','456') ;
INSERT INTO T_TEACHER(TCID,TCNAME,TCPWD) VALUES ('8003','tom','456') ;
