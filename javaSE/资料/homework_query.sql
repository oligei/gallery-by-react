#1.查看Employees列表所有数据（知识点：通配符：*）
SELECT * FROM employees;
ALTER TABLE employees MODIFY Sex INT;
#2.选择Employees列表中教育水平为’本科’的员工号及姓名（知识点：按单个条件查询数据）
SELECT * FROM employees WHERE Education="本科";

#3.选择Employees列表中教育为硕士的人的姓名、性别、工作年限并为查询的列命名中文名（知识点：定义列别名）
SELECT NAME "姓名",Sex "性别" FROM employees WHERE Education="硕士";

#4.计算Employees中的行数（知识点：函数应用：COUNT）
SELECT COUNT(*) AS 总人数 FROM employees;

#5.计算Employees中大专的平均工作年龄（知识点：函数应用：AVG）
SELECT AVG(WorkYear) FROM employees GROUP BY Education AND Education="大专";

#6.查询工作年龄最大的员工姓名以及工作年限（知识点：函数应用：MAX）
SELECT NAME,WorkYear FROM employees WHERE WorkYear=(SELECT MAX(WorkYear) FROM employees);

#7.查询薪酬在3000元以上的人数（知识点：比较运算）
SELECT COUNT(*) FROM salary WHERE InCome>3000;

#8.多个判定条件查询：询教育水平为硕士的女员工（知识点：多个条件查询数据） 

#（1）使用AND语句查询 
SELECT NAME "姓名",Sex "性别" FROM employees WHERE Education="硕士" AND Sex=0;
#（2）使用结果集查询


#9.模糊查询（知识点：模糊查询） 
#（1）查询Employees表中姓林且两个字名字的员工编号以及姓名 
SELECT EmployeeID,NAME FROM employees WHERE NAME LIKE "林_";
#（2）查询Employee表中名字中有林字的员工的编号及姓名
SELECT EmployeeID,NAME FROM employees WHERE NAME LIKE "%林%";

#10.范围查询（知识点：范围查询，包括范围内、范围外） 

#（1）查询Salary表中薪酬在2000到3000范围的员工编号以及收入 
SELECT * FROM salary WHERE InCome>2000 AND InCome<3000;
#（2）查询Salary表中支出不在100-200范围的员工编号以及支出
SELECT * FROM salary WHERE OutCome NOT IN (SELECT OutCome FROM salary WHERE OutCome<200 AND OutCome>100);
SELECT * FROM salary WHERE OutCome<=100 OR OutCome>=200;

#11.多表联合查询（知识点：联合多表查询） 
#（1） 查找财务部的员工号以及员工姓名 
SELECT * FROM employees e,departments d WHERE d.DepartmentID=e.DepartmentID AND DepartmentName="财务部";
#（2）查找财务部以及研发部以外的员工号以及员工姓名
SELECT * FROM employees e,departments d WHERE d.DepartmentID=e.DepartmentID AND DepartmentName !="财务部" AND DepartmentName !="研发部";