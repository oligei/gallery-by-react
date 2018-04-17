1.查询各部门人数
#SELECT DepartmentName,count(*) FROM departments d,employees e GROUP by d.DepartmentName HAVING d.DepartmentId=e.DepartmentID;
SELECT DepartmentName,COUNT(*) FROM departments d,employees e WHERE d.DepartmentId=e.DepartmentID GROUP BY d.DepartmentName;
2.查询各部门平均工资以及人数
SELECT DepartmentName,COUNT(*),AVG(ActInCome) FROM departments d,employees e,salary s WHERE d.DepartmentId=e.DepartmentID AND s.EmployeeID = e.EmployeeID GROUP BY d.DepartmentName;
3.查询各部门不同性别的平均工资以及人数
SELECT DepartmentName,COUNT(*),AVG(ActInCome) FROM departments d,employees e,salary s 
WHERE d.DepartmentId=e.DepartmentID AND s.EmployeeID = e.EmployeeID 
GROUP BY Sex AND d.DepartmentName;
4.查询不同部门不同性别不同教育水平的平均工资情况
