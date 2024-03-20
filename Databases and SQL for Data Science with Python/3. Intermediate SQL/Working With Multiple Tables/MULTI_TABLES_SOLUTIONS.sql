---- ACCESSING MULTIPLE TABLES WITH SUB-QUERIES

-- Displays only the EMPLOYEES records corresponding to jobs in the JOBS table
SELECT * FROM EMPLOYEES
WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS);

-- Displays JOB information for employees earning over $70,000
SELECT * FROM JOBS
WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE SALARY > 70000);

-- Displays only the list of employees whose JOB_TITLE is Jr. Designer
SELECT * FROM EMPLOYEES
WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS WHERE JOB_TITLE = 'Jr. Designer');

-- Displays JOB information of employees whose birth year is after 1976
SELECT * FROM JOBS
WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE YEAR(B_DATE) > 1976);

-- Displays JOB information for female employees whose birth year is after 1976
SELECT * FROM JOBS
WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE (YEAR(B_DATE) > 1976) AND (SEX = 'F'));




---- ACCESSING MULTIPLE TABLES WITH IMPLICIT JOINS

-- Displays only the EMPLOYEES records corresponding to jobs in the JOBS table
SELECT E.EMP_ID, E.F_NAME, E.L_NAME, J.JOB_TITLE FROM EMPLOYEES AS E, JOBS AS J
WHERE E.JOB_ID = J.JOB_IDENT;

-- Displays JOB information for employees earning over $70,000
SELECT * FROM EMPLOYEES AS E, JOBS AS J
WHERE (E.JOB_ID = J.JOB_IDENT) AND (E.SALARY > 70000);

-- Displays only the list of employees whose JOB_TITLE is Jr. Designer
SELECT * FROM EMPLOYEES AS E, JOBS AS J
WHERE (E.JOB_ID = J.JOB_IDENT) AND (J.JOB_TITLE = 'Jr. Designer');

-- Displays JOB information of employees whose birth year is after 1976
SELECT * FROM EMPLOYEES AS E, JOBS AS J
WHERE (E.JOB_ID = J.JOB_IDENT) AND (YEAR(E.B_DATE) > 1976);

-- Displays JOB information for female employees whose birth year is after 1976
SELECT * FROM EMPLOYEES AS E, JOBS AS J
WHERE (E.JOB_ID = J.JOB_IDENT) AND (YEAR(E.B_DATE) > 1976) AND (E.SEX = 'F');