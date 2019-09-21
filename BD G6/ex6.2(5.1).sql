--ex5.1

--A
SELECT Pname,Fname,Minit,Lname 
FROM COMPANY.Project JOIN COMPANY.Works_on ON Pnumber=Pno JOIN COMPANY.Employee ON Essn=Ssn;

--B
SELECT Fname,Minit,Lname
FROM COMPANY.Employee AS emp JOIN (SELECT Ssn FROM COMPANY.Employee  WHERE Fname='Carlos' and Minit = 'D' and Lname = 'Gomes') AS Sup
ON emp.Super_ssn = Sup.Ssn;

--C
SELECT Pname,SUM(Hours) AS hours
FROM COMPANY.project JOIN COMPANY.works_on ON Pnumber=Pno JOIN COMPANY.employee ON Essn=Ssn
GROUP BY Pname;

--D
SELECT Pname,Fname,Minit,Lname,Hours,Dno
FROM COMPANY.project JOIN COMPANY.works_on ON Pnumber=Pno and Pname = 'Aveiro Digital' and Hours > 21 JOIN COMPANY.employee ON Essn=Ssn and Dno = 3;

--E
SELECT Fname, Minit, Lname
FROM COMPANY.employee
WHERE Ssn NOT IN (SELECT Ssn
FROM COMPANY.project JOIN COMPANY.works_on ON Pnumber=Pno JOIN COMPANY.employee ON Essn=Ssn);

--F
SELECT Dname, AVG(Salary) AS average
FROM COMPANY.employee JOIN COMPANY.department ON Dno=Dnumber
WHERE sex = 'F'
GROUP BY Dname;

--G
SELECT Fname,Minit,Lname, COUNT(*) AS cnt
FROM COMPANY.employee JOIN COMPANY.dependent ON Ssn=Essn
GROUP BY Fname,Minit,Lname
HAVING COUNT(*) > 2;

--H
SELECT Fname, Lname
FROM COMPANY.employee JOIN COMPANY.department ON Ssn=Mgr_ssn LEFT outer JOIN COMPANY.dependent ON Ssn=Essn
WHERE Essn IS NULL;

--I
SELECT DISTINCT Fname, Minit, Lname, Address
FROM COMPANY.EMPLOYEE JOIN COMPANY.WORKS_ON ON Ssn=Essn JOIN 
	(SELECT Pname, Pnumber FROM COMPANY.PROJECT WHERE Plocation='AVEIRO') as P ON Pno=P.Pnumber
WHERE 'AVEIRO' NOT IN (SELECT Dlocation FROM COMPANY.DEPT_LOCATION WHERE DEPT_LOCATION.Dnumber=EMPLOYEE.Dno);