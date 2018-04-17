1.使用连接谓词 

（1）进行等值连接，查询全部员工的个人信息以及薪酬情况 
SELECT * FROM salary s,employees e WHERE e.EmployeeID = s.EmployeeID ;
（2）进行自然连接，查询全部员工的个人信息以及薪酬情况 
SELECT * FROM salary NATURAL JOIN employees  ;
（3） 查询工资水平在2500以上的员工号、姓名、教育、收入、支出、盈余 
 SELECT * FROM salary s,employees e WHERE e.EmployeeID = s.EmployeeID AND InCome>2500;
（4）查询工资水平在2500以上的员工号、姓名、教育、收入、支出、盈余、所属部门
 SELECT * FROM salary s,employees e,departments d WHERE e.EmployeeID = s.EmployeeID AND InCome>2500 AND d.DepartmentID = e.DepartmentID;
2.使用JOIN连接 

（1）进行等值连接，查询全部员工的个人信息以及薪酬情况 

（2）进行自然连接，查询全部员工的个人信息以及薪酬情况 

（3） 查询工资水平在2500以上的员工号、姓名、教育、收入、支出、盈余 

（4）查询工资水平在2500以上的员工号、姓名、教育、收入、支出、盈余、所属部门 

（5）查询所有员工的员工号，名字，薪酬，支出（左连接） 
SELECT e.EmployeeID,e.Name,s.InCome,s.OutCome FROM employees e LEFT OUTER JOIN salary s ON e.EmployeeID=s.EmployeeID;

（6）查询所有部门的员工情况（右连接） 
 SELECT d.DepartmentName,e.* FROM departments d RIGHT OUTER JOIN employees e ON  d.DepartmentID = e.DepartmentID;

（7）查询所有部门的所有员工的薪酬情况（全连接） 
 #SELECT d.DepartmentName,e.Name,s.ActInCome FROM employees e join departments d,salary s ON  d.DepartmentID = e.DepartmentID and e.EmployeeID=s.EmployeeID;
#SELECT d.DepartmentName,e.Name,s.ActInCome FROM employees e NATURAL join departments d and salary s;
用JOIN还没搞定
（8）查询所有部门所有员工的名字
 SELECT d.DepartmentName,e.Name FROM employees e,departments d WHERE  d.DepartmentID = e.DepartmentID;