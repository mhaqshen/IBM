-- Displays all employee records whose salary is lower than the average salary
SELECT *
FROM EMPLOYEES
WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);

-- Displays average salary of five highest-paid employees
SELECT AVG(SALARY)
FROM (SELECT SALARY FROM EMPLOYEES
ORDER BY SALARY DESC LIMIT 5)
AS SALARY_TABLE;

-- Displays average salary of five lowest-paid employees
SELECT AVG(SALARY)
FROM (SELECT SALARY FROM EMPLOYEES
ORDER BY SALARY LIMIT 5)
AS SALARY_TABLE;

-- Displays the records of employees older than the average age of all employees
SELECT *
FROM EMPLOYEES
WHERE YEAR(CURRENT DATE - B_DATE) > (SELECT AVG(YEAR(CURRENT DATE - B_DATE))
FROM EMPLOYEES);

-- Display the list of Employee IDs, years of service, and average years of service for all entries
SELECT EMPL_ID, YEAR(CURRENT DATE - START_DATE) AS YOS,
	(SELECT AVG(YEAR(CURRENT DATE - START_DATE)) FROM JOB_HISTORY) AS AVG_YOS
FROM JOB_HISTORY;

