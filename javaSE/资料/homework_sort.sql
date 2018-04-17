#1.薪酬水平相同时，按照姓名排序

#2.查询每一个部门排名前三的工作年限

#select * from employees LIMIT 0,3 where WorkYear in (select WorkYear from employees order by WorkYear desc) ;
SELECT * FROM employees  WHERE 1=1 ; 
SELECT WorkYear FROM employees ORDER BY WorkYear DESC;
SELECT * FROM employees ORDER BY WorkYear DESC LIMIT 0,3;

SELECT DepartmentName,NAME,WorkYear FROM employees NATURAL JOIN departments ORDER BY WorkYear DESC;
SELECT DepartmentName,NAME,WorkYear FROM employees NATURAL JOIN departments GROUP BY DepartmentName;


CREATE VIEW emv(部门,姓名,工作年限) AS SELECT DepartmentName,NAME,WorkYear FROM employees NATURAL JOIN departments ORDER BY WorkYear DESC;
SELECT * FROM emv;
DROP VIEW emv

CREATE VIEW emv1(部门,姓名,工作年限) AS 
SELECT DepartmentName,NAME,WorkYear FROM employees e,departments d WHERE  e.DepartmentID=d.DepartmentID AND d.DepartmentID="1"  ORDER BY WorkYear DESC LIMIT 0,3;
SELECT * FROM emv1;

CREATE VIEW emv2(部门,姓名,工作年限) AS 
SELECT DepartmentName,NAME,WorkYear FROM employees e,departments d WHERE  e.DepartmentID=d.DepartmentID AND d.DepartmentID=2  ORDER BY WorkYear DESC LIMIT 0,3;
SELECT * FROM emv2;

CREATE VIEW emv3(部门,姓名,工作年限) AS 
SELECT DepartmentName,NAME,WorkYear FROM employees e,departments d WHERE  e.DepartmentID=d.DepartmentID AND d.DepartmentID="3"  ORDER BY WorkYear DESC LIMIT 0,3;
SELECT * FROM emv3;

CREATE TABLE 

DROP VIEW emv1
DROP VIEW emv2
DROP VIEW emv3

INSERT INTO emv3 VALUES("jii","","");

#3.(*)查询每一个部门的排名前三的工薪水平（不同员工同一薪资，只显示一位）



DELIMITER $
CREATE  PROCEDURE sumall()
DECLARE i INT DEFAULT 1;
BEGIN
    
   SET @n = (SELECT COUNT(*) FROM departments);
     
   
     SELECT @n;
     
END $;

DROP PROCEDURE sumall

CALL sumall();