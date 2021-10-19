-- Thisis a comment!
-- Select all records from the actor table 

SELECT *
FROM actor
LIMIT 10 OFFSET 5;

-- LIMIT says how many records


-- Query for firt and last name 
SELECT first_name, last_name
FROM actor;


--Query for first_name that equals Nick

SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';


--Query for last_name that is Wahlberg

SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- Query where name is Nick but using LIKE
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';


-- Query where name starts with a J with wildcard
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%';



-- Query names containing a lowercase y 
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE '%y%';


-- % is any number 0-inf spaces
-- _ is just one space
-- all the names that start with a K and has 2 letters after athe K

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';


-- for all first_names that start with a K and end with a th

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__%th';


-- Comparison operators:
-- >< >= <= <> [not equal]
-- Query the payment table

SELECT *
FROM payment;

-- Comparison operators:
-- >< >= <= <> [not equal]
-- Query the payment table customers who paid an amount greater than $2

SELECT customer_id, amount
FROM payment
WHERE amount > 2.00;

-- Comparison operators:
-- >< >= <= <> [not equal]
-- Query the payment table customers who paid an amount 
--less than $7.99

SELECT customer_id, amount
FROM payment
WHERE amount < 7.99;


-- Comparison operators:
-- >< >= <= <> [not equal]
-- Query the payment table customers who paid an amount 
--less than or equal to $7.99

SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99;


-- Comparison operators:
-- >< >= <= <> [not equal]
-- Query the payment table customers who paid an amount 
--greater than or equal to $2.00

SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00




-- Comparison operators:
-- >< >= <= <> [not equal]
-- Query the payment table customers who paid an amount 
--greater than or equal to $2.00
-- order by amount smallest to largest

SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount;


-- Comparison operators:
-- >< >= <= <> [not equal]
-- Query the payment table customers who paid an amount 
--greater than or equal to $2.00
-- order by amount largest to smallest

SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount DESC;


-- Comparison operators:
-- >< >= <= <> [not equal]
-- Query the payment table customers who paid an amount 
--between $2.00 and $7.99

SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.00 and 7.99;



-- Comparison operators:
-- >< >= <= <> [not equal]
-- Query the payment table customers who paid an amount 
-- not equal to $0.00 order descending order

SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;


-- Comparison operators:
-- >< >= <= <> [not equal]
-- Query the payment table customers who paid an amount 
-- not equal to $0.00 order descending order

SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;


-- SQL aggregations SUM, AVG, COUNT, MIN, MAX
-- Query to displsay sum of amount paid that are
-- greater than 5.99

SELECT SUM(amount)
FROM payment
WHERE amount > 5.99


-- SQL aggregations SUM, AVG, COUNT, MIN, MAX
-- Query to displsay average amount paid
-- greater than 5.99

SELECT AVG(amount)
FROM payment
WHERE amount > 5.99


-- SQL aggregations SUM, AVG, COUNT, MIN, MAX
-- Query to displsay how many amount paid
-- greater than 5.99

SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99


-- SQL aggregations SUM, AVG, COUNT, MIN, MAX
-- Query to displsay how many DISTINCT amounts paid
-- greater than 5.99

SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99


-- SQL aggregations SUM, AVG, COUNT, MIN, MAX
-- Query to displsay the MIN amount paid
-- greater than 7.99

SELECT MIN(amount)
FROM payment
WHERE amount > 7.99



-- SQL aggregations SUM, AVG, COUNT, MIN, MAX
-- Query to displsay the MIN amount paid
-- greater than 7.99

SELECT MIN(amount) As Min_Num_Payments
FROM payment
WHERE amount > 7.99;


-- SQL aggregations SUM, AVG, COUNT, MIN, MAX
-- Query to displsay the MAX amount paid
-- greater than 7.99

SELECT MAX(amount)
FROM payment
WHERE amount > 7.99;



-- SQL aggregations SUM, AVG, COUNT, MIN, MAX
-- GROUP BY
-- Query to display different amounts grouped together 

SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;



-- SQL aggregations SUM, AVG, COUNT, MIN, MAX
-- GROUP BY
-- Query to display different customer id
-- summed amounts for each customer_id

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id DESC;



-- SQL aggregations SUM, AVG, COUNT, MIN, MAX
-- GROUP BY
-- Query to display customer ids with the 
-- amounts for  each customer id

SELECT customer_id, amount
FROM payment
GROUP BY amount, customer_id
ORDER BY customer_id DESC;






--
SELECT *
FROM customer



-- Query to display customer emails that show up more than 5 times
-- Grouping by the customers email

SELECT COUNT(customer_id), email
FROM customer
GROUP BY email
HAVING COUNT(customer_id) > 0;


SELECT COUNT(customer_id), email
FROM customer
WHERE email LIKE 'j__.w%'
GROUP BY email
HAVING COUNT(customer_id) > 0;


SELECT COUNT(customer_id), email
FROM customer
WHERE email LIKE 'j__.w%'
GROUP BY email
HAVING COUNT(customer_id) > 0
ORDER BY email
LIMIT 10 OFFSET 2;