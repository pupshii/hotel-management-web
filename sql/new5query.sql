/*Search from id*/
SELECT * 
FROM `member` 
WHERE id LIKE '%id%';

SELECT COUNT(Staff_id) as 'Number of Staff' 
FROM `member` 
WHERE id LIKE '%id%';

/*Search from username*/
SELECT * 
FROM `member` 
WHERE Member_Username LIKE '%Member_Username%';

SELECT COUNT(Staff_id) as 'Number of Staff' 
FROM `member` 
WHERE Member_Username LIKE '%Member_Username%';

/*Search from firstname*/
SELECT * 
FROM `member` 
WHERE Member_fName LIKE '%Member_fName%';

SELECT COUNT(Staff_id) as 'Number of Staff' 
FROM `member` 
WHERE Member_fName LIKE '%Member_fName%';

/*Search from lastname*/
SELECT * 
FROM `member` 
WHERE Member_lName LIKE '%Member_lName%';

SELECT COUNT(Staff_id) as 'Number of Staff' 
FROM `member` 
WHERE Member_lName LIKE '%Member_lName%';

/*Search from email*/
SELECT * 
FROM `member` 
WHERE Member_Email LIKE '%Member_Email%';

SELECT COUNT(Staff_id) as 'Number of Staff' 
FROM `member` 
WHERE Member_Email LIKE '%Member_Email%';