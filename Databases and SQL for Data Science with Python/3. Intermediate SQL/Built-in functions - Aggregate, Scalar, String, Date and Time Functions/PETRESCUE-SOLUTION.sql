-- Calculates the total cost of all animal rescue in the PETRESCUE table
SELECT SUM(COST) FROM PETRESCUE;

-- Displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST
SELECT SUM(COST) AS SUM_OF_COST FROM PETRESCUE;

-- Displays the maximum quantity of animals rescued
SELECT MAX(QUANTITY) FROM PETRESCUE;

-- Displays the average cost of animals rescued
SELECT AVG(COST) FROM PETRESCUE;

-- Displays the average cost of rescuing a dog
SELECT AVG(COST/QUANTITY) FROM PETRESCUE WHERE ANIMAL = 'Dog';

-- Displays the rounded cost of each rescue
SELECT ROUND(COST) FROM PETRESCUE;

-- Displays the length of each animal name without duplications
SELECT DISTINCT LENGTH(ANIMAL), ANIMAL FROM PETRESCUE;

-- Displays the animal name in each rescue in uppercase
SELECT UCASE(ANIMAL) FROM PETRESCUE;

-- Displays the animal name in each rescue in uppercase without duplications
SELECT DISTINCT UCASE(ANIMAL) FROM PETRESCUE;

-- Displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats, using cat in lower case in the query
SELECT * FROM PETRESCUE
WHERE LCASE(ANIMAL) = 'cat';

-- Displays the day of the month when cats have been rescued
SELECT DAY(RESCUEDATE) FROM PETRESCUE
WHERE ANIMAL = 'Cat';

-- Displays the number of rescues on the 5th month
SELECT SUM(QUANTITY) FROM PETRESCUE
WHERE MONTH(RESCUEDATE) = 05;

-- Displays the number of rescues on the 14th day of the month
SELECT SUM(QUANTITY) FROM PETRESCUE
WHERE DAY(RESCUEDATE) = 14;

-- Displays the third day from each rescue
SELECT RESCUEDATE + 3 FROM PETRESCUE;

-- Displays the length of time the animals have been rescued; the difference between todays date and the rescue date
SELECT (CURRENT DATE - RESCUEDATE) FROM PETRESCUE;