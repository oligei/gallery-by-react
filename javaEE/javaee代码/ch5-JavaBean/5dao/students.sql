/*======================= ʹ��userdata ���ݿ� =======================*/
USE jeedb ;
/*======================= ɾ��user���ݱ� =======================*/
DROP TABLE IF EXISTS students;
/*======================= ����user���ݱ� =======================*/
CREATE TABLE students(
	stuno			VARCHAR(30)		PRIMARY KEY ,
	stuname			VARCHAR(30)		NOT NULL
) ;
/*======================= ����������� =======================*/
INSERT INTO students(stuno,stuname) VALUES ('10001','rose') ;
INSERT INTO students(stuno,stuname) VALUES ('10002','tom') ;
INSERT INTO students(stuno,stuname) VALUES ('10003','Lee') ;
INSERT INTO students(stuno,stuname) VALUES ('10004','Linda') ;
INSERT INTO students(stuno,stuname) VALUES ('10005','Jack') ;
INSERT INTO students(stuno,stuname) VALUES ('10006','May') ;
