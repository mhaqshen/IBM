-- Create a View called EMPSALARY to display salary along with some basic sensitive data of employees from the HR database
CREATE VIEW EMPSALARY AS
	SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, SALARY
	FROM EMPLOYEES;
	
SELECT * FROM EMPSALARY;

-- Update the View to combine two or more tables
CREATE OR REPLACE VIEW EMPSALARY AS
	SELECT E.EMP_ID, E.F_NAME, E.L_NAME, E.B_DATE, E.SEX, J.JOB_TITLE, J.MIN_SALARY, J.MAX_SALARY
	FROM EMPLOYEES AS E, JOBS AS J
	WHERE E.JOB_ID = J.JOB_IDENT;
	
SELECT * FROM EMPSALARY;

-- Drop the created View EMPSALARY
DROP VIEW EMPSALARY;

-- Verify if it's been deleted or not
SELECT * FROM EMPSALARY;

----- PRACTICE PROBLEMS -----

-- 1. Create a view “EMP_DEPT” which has the following information.
--	  EMP_ID, FNAME, LNAME, DEP_ID from EMPLOYEES table

CREATE VIEW EMP_DEPT AS
	SELECT EMP_ID, F_NAME, L_NAME, DEP_ID
	FROM EMPLOYEES;
	
SELECT * FROM EMP_DEPT;
	
-- 2. Modify “EMP_DEPT” such that it displays Department names instead of Department IDs.
--    EMP_ID, FNAME, LNAME from EMPLOYEES table and DEP_NAME from DEPARTMENTS table, combined over the columns DEP_ID and DEPT_ID_DEP.

CREATE OR REPLACE VIEW EMP_DEPT AS
	SELECT E.EMP_ID, E.F_NAME, E.L_NAME, D.DEP_NAME
	FROM EMPLOYEES AS E, DEPARTMENTS AS D
	WHERE E.DEP_ID = D.DEPT_ID_DEP;
	
SELECT * FROM EMP_DEPT;

-- 3. Drop the view "EMP_DEPT" and verify it

DROP VIEW EMP_DEPT;

SELECT * FROM EMP_DEPT;