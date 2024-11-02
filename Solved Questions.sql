
-- ----------------------------------------------------------------------------------------------------------------------------
1. 
/* Create the following tables for FB

Users Table:
Posts Table:
Likes Table:
Comments Table:
Friends Table:
Insert sample data into the above table.

Users Table:

user_id (primary key)
username
full_name
email
Date_of_birth
Posts Table:

post_id (primary key)
user_id (foreign key referencing Users table)
content
Date_created
Likes Table:

like_id (primary key)
post_id (foreign key referencing Posts table)
user_id (foreign key referencing Users table)
date_liked
Comments Table:

comment_id (primary key)

post_id (foreign key referencing Posts table)

user_id (foreign key referencing Users table)

content

Date_commented

Friends Table:

friendship_id (primary key)
user1_id (foreign key referencing Users table)
user2_id (foreign key referencing Users table)
Date_connected
*/
-- CODE GOES HERE

CREATE TABLE Users
(
  User_id INT PRIMARY KEY,
  username VARCHAR(200),
  full_name VARCHAR(200),
  email VARCHAR(50),
  date_of_birth DATE
);

CREATE TABLE Posts
(
  post_id INT PRIMARY KEY,
  user_id INT,
  content VARCHAR(200),
  Date_created DATE,
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Like1
(
  like_id INT PRIMARY KEY,
  post_id INT,
  user_id INT,
  date_liked DATE,
  FOREIGN KEY (post_id) REFERENCES Posts(post_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Comments
(
  comment_id INT PRIMARY KEY,
  post_id INT,
  user_id INT,
  content VARCHAR(255),
  Date_commentes DATE,
  FOREIGN KEY (post_id) REFERENCES Posts(post_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Friends
(
  friendship_id INT PRIMARY KEY,
  user1_id INT,
  user2_id INT,
  Date_connected DATE,
  FOREIGN KEY (user1_id) REFERENCES Users(user_id),
  FOREIGN KEY (user2_id) REFERENCES Users(user_id)
);

-- ----------------------------------------------------------------------------------------------------------------------------
2. /* Retrieve the names of all actors from the "actor" table.

Table name: actor

Column	Type
actor_id	INT
first_name	VARCHAR
last_name	VARCHAR
last_update	TIMESTAMP
*/ 


select Upper('Great GOING');

-- ----------------------------------------------------------------------------------------------------------------------------
3.
List the titles of all films from the "film" table.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here
SELECT title FROM film;

-- ----------------------------------------------------------------------------------------------------------------------------

4.
Show the names of all customers from the "customer" table.

Table name: customer

Column	Type
customer_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INTEGER
active	BOOLEAN
create_date	DATETIME
store_id	INTEGER
last_update	TIMESTAMP

SOLUTION \
-- code goes here
SELECT first_name, last_name FROM customer;
 
-- ----------------------------------------------------------------------------------------------------------------------------
5. List the film titles and rental rates from the "film" table.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

solution \
-- code goes here

SELECT title, rental_rate FROM film;

-- ----------------------------------------------------------------------------------------------------------------------------
6. Retrieve the first names and last names of customers whose last name is 'Smith'.

Table name: customer

Column	Type
customer_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INTEGER
active	BOOLEAN
create_date	DATETIME
store_id	INTEGER
last_update	TIMESTAMP

SOLUTION \
-- code goes here
SELECT first_name, last_name FROM customer
WHERE last_name = 'Smith';
-- ----------------------------------------------------------------------------------------------------------------------------
7. List the film titles and release years for films released in 2006.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here

SELECT title, release_year
FROM film
WHERE release_year = '2006';
-- ----------------------------------------------------------------------------------------------------------------------------
8. What is the country ID for 'United States' in the "country" table?

Table name: country

Column	Type
country_id	INTEGER
country	VARCHAR
last_update	TIMESTAMP

SOLUTION \
-- code goes here

SELECT country
FROM country
WHERE country = 'United States';
-- ----------------------------------------------------------------------------------------------------------------------------
9.Get the customer ID, first name, and last name for the customer with ID 101.

Table name: customer

Column	Type
customer_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INTEGER
active	BOOLEAN
create_date	DATETIME
store_id	INTEGER
last_update	TIMESTAMP

SOLUTION \
-- code goes here
SELECT customer_id, first_name, last_name
FROM customer
WHERE customer_id = '101';
-- ----------------------------------------------------------------------------------------------------------------------------
10.Who are the currently active customers?

Table name : customer

Column	Type
customer_id	INTEGER
store_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INTEGER
active	BOOLEAN
create_date	DATETIME
last_update	TIMESTAMP
1 indicates active
0 indicates Inactive

SOLUTION \
-- CODE GOES HERE
SELECT *
from customer
where active = 1;
-- ----------------------------------------------------------------------------------------------------------------------------
11.
Task 2
List of all rental IDs for customer with ID 1

Table name: rental

Column	Type
rental_id	INTEGER
rental_date	DATETIME
inventory_id	INTEGER
customer_id	INTEGER
return_date	DATETIME
staff_id	INTEGER
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
SELECT rental_id
from rental
where customer_id = 1;
-- ----------------------------------------------------------------------------------------------------------------------------
12.How many payments have an amount greater than $5?

Table name: payment

Column	Type
payment_id	INTEGER
customer_id	INTEGER
staff_id	INTEGER
rental_id	INTEGER
amount	DECIMAL
payment_date	DATETIME
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
SELECT COUNT(*)
FROM payment
WHERE amount > 5.0000;

-- ----------------------------------------------------------------------------------------------------------------------------
13.Which films have a rental duration greater than 5?

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \

-- code goes here
SELECT *
FROM film 
WHERE rental_duration > 5.0000;
-- ----------------------------------------------------------------------------------------------------------------------------
14.How many films have a replacement cost between $15 and $20?

Table name:film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
SELECT count(*)
FROM film
WHERE replacement_cost BETWEEN 15 AND 20;

-- ----------------------------------------------------------------------------------------------------------------------------
15.
How many films can be rented for less than $1?

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
SELECT COUNT(*)
FROM film
WHERE rental_rate <1;

-- ----------------------------------------------------------------------------------------------------------------------------
16.
Find all films where the replacement cost is not $15.99.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT *
FROM film
WHERE REPLACEMENT_COST <> 15.99;

-- ----------------------------------------------------------------------------------------------------------------------------
17.
Find all films where rental duration is less than 5 days or greater than 7 days.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here
select * 
from film
where rental_duration < 5 or rental_duration > 7;

-- ----------------------------------------------------------------------------------------------------------------------------
18.Find the titles and descriptions of films that are longer than 2 hours (120 minutes) or have a rental rate less than $2.50.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION\
-- code goes here 
select title, description 
from film 
where length >120 or rental_rate < 2.50;

-- ----------------------------------------------------------------------------------------------------------------------------
19.Find all films details that are not 'PG-13' rated or which does not have a replacement cost less than $10

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP


SOLUTION \
-- code goes here
select *
from film
where rating <> 'PG-13' AND replacement_cost >= 10.0000;

-- ----------------------------------------------------------------------------------------------------------------------------
20.Find all unique ratings from the film table.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP
Expected output:

SOLUTION \
-- code goes here 
select distinct(rating)
from film;

-- ----------------------------------------------------------------------------------------------------------------------------
21.
Find the details of the first 3 actors in the actor table.

Table name: actor

column	Type
actor_id	INT
first_name	VARCHAR
last_name	VARCHAR
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
select *
from actor 
limit 3;

-- ----------------------------------------------------------------------------------------------------------------------------
22.List films that do not carry an 'R' rating and do not have a replacement cost equal to or less than $15.99.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
select *
from film
where rating <> 'R' and replacement_cost <= 15.99;

-- ----------------------------------------------------------------------------------------------------------------------------
23.Find all films details from film table where a rental rate is between $2 and $4

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
select *
from film
where rental_rate BETWEEN 2 AND 4;

-- ----------------------------------------------------------------------------------------------------------------------------
24.
Find films with a rental rate which is not equal to $2.99 or a length less than 120 minutes, but not both.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT *
FROM film
WHERE (rental_rate != 2.99 AND length >= 120)
   OR (rental_rate = 2.99 AND length < 120);

-- ----------------------------------------------------------------------------------------------------------------------------
25.
Find all films details from film table where a length is between 90 and 120 minutes and a rental rate less than $4.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
SELECT * 
FROM film 
WHERE (length BETWEEN 90 AND 120) AND (rental_rate < 4);

-- ----------------------------------------------------------------------------------------------------------------------------
26.
Display the count of unique first names of actors

Table name: actor

Column	Type
actor_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
SELECT COUNT(DISTINCT FIRST_NAME)
FROM actor;

-- ----------------------------------------------------------------------------------------------------------------------------
27.
Display the first 10 records from customer table

Table name : customer

Column	Type
customer_id	INTEGER
store_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INTEGER
active	BOOLEAN
create_date	DATETIME
last_update	TIMESTAMP


SOLUTION \
-- CODE GOES HERE
SELECT *
FROM customer
LIMIT 10;

-- ----------------------------------------------------------------------------------------------------------------------------
28.
Display the first 3 records from the customer table whose first name starts with ‘b’
Table name : customer

Column	Type
customer_id	INTEGER
store_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INTEGER
active	BOOLEAN
create_date	DATETIME
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
SELECT *
FROM customer 
WHERE first_name LIKE 'b%'
LIMIT 3;

-- ----------------------------------------------------------------------------------------------------------------------------
29.Display the names of the first 5 movies which are rated as ‘G’
Note:Select all the columns while running the query

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
rating	ENUM('G','PG','PG-13','R','NC-17')

SOLUTION \
-- CODE GOES HERE
SELECT *
FROM film 
WHERE rating = 'G'
limit 5;

-- ----------------------------------------------------------------------------------------------------------------------------
30.

Task-5
Find all customers whose first name starts with "m"
Table name : customer

Column	Type
customer_id	INTEGER
store_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INTEGER
active	BOOLEAN
create_date	DATETIME
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
select *
FROM customer
where first_name LIKE 'm%';

-- ----------------------------------------------------------------------------------------------------------------------------
31.Find all customers whose first name ends with "a"
Table name : customer

Column	Type
customer_id	INTEGER
store_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INTEGER
active	BOOLEAN
create_date	DATETIME
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
SELECT *
FROM customer 
WHERE first_name LIKE '%A';

-- ----------------------------------------------------------------------------------------------------------------------------
32.Display the list of first 4 cities which start and end with ‘a’

Table name : city

Column	Type
city_id	INTEGER
city	VARCHAR
country_id	INTEGER
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES where
SELECT *
FROM city
WHERE city LIKE'A%A'
LIMIT 4;

-- ----------------------------------------------------------------------------------------------------------------------------
33.Find all customers whose first name have "NI" in any position

Table name : customer

Column	Type
customer_id	INTEGER
store_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INTEGER
active	BOOLEAN
create_date	DATETIME
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
SELECT *
FROM customer
WHERE first_name LIKE'%ni%';

-- ----------------------------------------------------------------------------------------------------------------------------
34.
Find all customers whose first name have "r" in the third position
Table name : customer

Column	Type
customer_id	INTEGER
store_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INTEGER
active	BOOLEAN
create_date	DATETIME
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
SELECT *
FROM customer
WHERE first_naMe LIKE '__R%';

-- ----------------------------------------------------------------------------------------------------------------------------
35.Find all customers whose first name starts with "d" and are at least 5 characters in length
Table name : customer

Column	Type
customer_id	INTEGER
store_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INTEGER
active	BOOLEAN
create_date	DATETIME
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
SELECT *
FROM customer
WHERE first_name LIKE 'd____%';

-- ----------------------------------------------------------------------------------------------------------------------------
36.Find names of customers whose first name starts with "L" and ends with "A"

Table name : customer

Column	Type
customer_id	INTEGER
store_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INTEGER
active	BOOLEAN
create_date	DATETIME
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
select first_name
from customer
where first_name LIKE 'L%A';

-- ----------------------------------------------------------------------------------------------------------------------------
37.List all films details from film table with a rental duration between 4 and 6 days and have a replacement cost less than $20.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT *
FROM film 
WHERE (rental_duration BETWEEN 4 AND 6)
AND replacement_cost < 20;

-- ----------------------------------------------------------------------------------------------------------------------------
38.Find all films details from film table that are not rated as 'PG' and does not have a rental duration of 4 days

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT *
FROM film 
WHERE (rating <> 'PG' )
AND rental_duration <> 4;

-- ----------------------------------------------------------------------------------------------------------------------------
39.
Find distinct 5 ratings from film table which has rental rate between 2 to 4.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT  DISTINCT(rating)
FROM film 
WHERE rental_rate BETWEEN 2 AND 4
LIMIT 5;

-- ----------------------------------------------------------------------------------------------------------------------------
40.
Find title from film table which were not released in the year 2005 and do not have a rental duration of 5 days.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT title 
FROM film
WHERE (release_year <> 2005 AND rental_duration <> 5);
-- ----------------------------------------------------------------------------------------------------------------------------
41.
List payment IDs from payment table which are not equal to $2.99 or $3.99 and not made by customer ID 5.

Table name : payment

Column	Type
payment_id	INTEGER
customer_id	INTEGER
staff_id	INTEGER
rental_id	INTEGER
amount	DECIMAL
payment_date	DATETIME
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT payment_id
from payment
where amount <> 2.99 AND AMOUNT <> 3.99 AND customer_id <>5;

-- ----------------------------------------------------------------------------------------------------------------------------
42.
Get the films with PG and PG-13 rating using IN operator

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
rating	ENUM('G','PG','PG-13','R','NC-17')

SOLUTION \
-- CODE GOES HERE
SELECT *
FROM film
WHERE rating IN('pg','pg-13');

-- ----------------------------------------------------------------------------------------------------------------------------
43.
Get the films with length between 50 to 100 using between operator

Table name:film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER

SOLUTION \
-- CODE GOES HERE
SELECT *
FROM film
WHERE length BETWEEN 50 AND 100;

-- ----------------------------------------------------------------------------------------------------------------------------
44.
Get the top 50 actors using limit operator

Table name: actor

Column	Type
actor_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
SELECT *
FROM ACTOR
LIMIT 50;

-- ----------------------------------------------------------------------------------------------------------------------------
45.
Get the distinct film ids from inventory table

SOLUTION \
-- CODE GOES HERE
SELECT DISTINCT(FILM_ID)
FROM INVENTORY;

-- ----------------------------------------------------------------------------------------------------------------------------
46.
The average rental rate of films, rounded up to two decimal places from film table.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT ROUND(avg(rental_rate), 2) AS avg_rental_rate
FROM film;

-- ----------------------------------------------------------------------------------------------------------------------------
47.
List the film IDs and the result of raising the film lengths to the power of 2 from film table.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT film_id, POWER(length, 2) AS length_squared
FROM film;

-- ----------------------------------------------------------------------------------------------------------------------------
48.
Task 3
Find the first 5 characters of the first name of customers.

Table name: Customer

column	Type
customer_id	INT
store_id	INT
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INT
active	BOOLEAN
create_date	DATETIME
last_update	TIMESTAMP

solution \
-- code goes here 
SELECT SUBSTRING(first_name, 1, 5) AS first_name_substr
FROM Customer;

-- ----------------------------------------------------------------------------------------------------------------------------
49.
Task 4
Retrieve the average rental duration of all films from the Film Table.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
select avg(rental_duration) as average_rental_duration
from film;

-- ----------------------------------------------------------------------------------------------------------------------------
50.
Retrieve the staff IDs and the lengths of the concatenation of their first and last names, divided by the number of characters in their email addresses and round it to two decimal places from staff table.

Table name: Staff

column	Type
staff_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
address_id	INTEGER
email	VARCHAR
store_id	INTEGER
username	VARCHAR
password	VARCHAR
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT staff_id, 
ROUND((LENGTH(CONCAT(first_name,last_name))) / (length(email)),2) 
AS name_email_ratio
FROM Staff;

-- ----------------------------------------------------------------------------------------------------------------------------
51.
Task 6
Find the ceiling values of the sum of the replacement costs and rental rates from film table where length is greater than 120 minutes.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT CEILING(SUM((replacement_cost + rental_rate))) AS ceil_sum_costs_rates
FROM film
WHERE length >120; 

-- ----------------------------------------------------------------------------------------------------------------------------
52.
Find the lengths of the email addresses of staff members, excluding any trailing whitespace from the staff table.

Table name: Staff

column	Type
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
username	VARCHAR
password	VARCHAR
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT length(trim(email)) as email_length
from Staff;

-- ----------------------------------------------------------------------------------------------------------------------------
53.Display the actors name in Capital letters (First name and Last name)

Table name: actor

Column	Type
actor_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
SELECT UPPER(first_name), upper(LAST_NAME)
FROM actor;

-- ----------------------------------------------------------------------------------------------------------------------------
54.
Display all films whose title length is greater than 15 characters

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here
SELECT *
FROM film 
WHERE length(title)>15;

-- ----------------------------------------------------------------------------------------------------------------------------
55.
Display the first eight characters of the film title

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here
SELECT SUBSTRING(title, 1, 8) AS NEW_TITLE FROM film;

-- ----------------------------------------------------------------------------------------------------------------------------
56.
Combine first name and last name of all actors and display with a ‘-’ between them

Table name: actor

Column	Type
actor_id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
select CONCAT(first_name, '-',last_name) 
from actor;

-- ----------------------------------------------------------------------------------------------------------------------------
57.
What smallest rental duration
Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here
select min(rental_duration)
FROM film;

-- ----------------------------------------------------------------------------------------------------------------------------
58.What is the highest replacement cost amongst all the films
Table name: film

SOLUTION \
-- code goes here
select  max(replacement_cost)
from film;

-- ----------------------------------------------------------------------------------------------------------------------------
59.What is the average length of the movie

SOLUTION \
-- code goes here
select avg(length)
from film;

-- ----------------------------------------------------------------------------------------------------------------------------
60.
Task-8
How many films did the actor with actor id 1 work in ?
Table name: film_actor

Column	Type
actor_id	INTEGER
film_id	INTEGER
last_update	TIMESTAMP

SOLUTION \
-- CODE GOES HERE
SELECT count(actor_id)
FROM film_actor
WHERE actor_id = 1;

-- ----------------------------------------------------------------------------------------------------------------------------
61.
What is the total replacement cost of the movies whose rating is G
Table name: film

SOLUTION \
-- code goes here
SELECT sum(replacement_cost)
FROM film 
WHERE rating = 'g';

-- ----------------------------------------------------------------------------------------------------------------------------
62.Query to find the date difference between two given dates '2023-10-23', and '2023-10-19'.

SOLUTION \
-- CODE GOES HERE
select DATEDIFF('2023-10-23', '2023-10-19') as DIFF;

-- ----------------------------------------------------------------------------------------------------------------------------
63.Find the customer ID and rental dates that occur in the month of June from Rental table.

Table name: rental

column	Type
rental_id	INT
rental_date	DATETIME
inventory_id	INT
customer_id	INT
return_date	DATETIME
staff_id	INT
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT customer_id, rental_date
FROM rental
WHERE rental_date BETWEEN '2023-06-01' AND '2023-06-30';

-- ----------------------------------------------------------------------------------------------------------------------------
64.
Get the film IDs and the lengths of the films which is rounded down to the nearest number from film table.

Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT film_id, length as  rounded_down_length
FROM film;

-- ----------------------------------------------------------------------------------------------------------------------------
65.
Task 3
Find the difference in days between the rental date and return date from rental table.

Table name: rental

column	Type
rental_id	INT
rental_date	DATETIME
inventory_id	INT
customer_id	INT
return_date	DATETIME
staff_id	INT
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT DATEDIFF(return_date, rental_date ) AS rental_duration_days
from rental;

-- ----------------------------------------------------------------------------------------------------------------------------
66.
Find the first names of customers by reversing the order of characters in each name from customer table.

Table name: Customer

column	Type
customer_id	INT
store_id	INT
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INT
active	BOOLEAN
create_date	DATETIME
last_update	TIMESTAMP

SOLUTION \
-- code goes here .
SELECT REVERSE(first_name) AS reversed_name
FROM Customer;

-- ----------------------------------------------------------------------------------------------------------------------------
67.
Find the email addresses of customers by replacing ‘sakilacustomer.org’ with 'example.com' from the customer table.

Table name: Customer

column	Type
customer_id	INT
store_id	INT
first_name	VARCHAR
last_name	VARCHAR
email	VARCHAR
address_id	INT
active	BOOLEAN
create_date	DATETIME
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT REPLACE(email, 'sakilacustomer.org', 'example.com') AS modified_email
FROM Customer;

-- ----------------------------------------------------------------------------------------------------------------------------
68.Given a date '2023-03-23', write the query to add 10 days to it.

SOLUTION \
-- CODE GOES HERE
select DATE_ADD('2023-03-23', interval 10 day) as add_10;

-- ----------------------------------------------------------------------------------------------------------------------------
69.Given a date '2023-03-23', get the month number from it

SOLUTION \
-- CODE GOES HERE
select extract(month from '2023-03-23') AS extract_mon;

-- ----------------------------------------------------------------------------------------------------------------------------
70.Find the count of R-rated movies or NC-17 rated movies
Table name: film

Column	Type
film_id	INTEGER
title	VARCHAR
description	VARCHAR
release_year	YEAR
language_id	INTEGER
original_language_id	INTEGER
rental_duration	INTEGER
rental_rate	DECIMAL
length	INTEGER
replacement_cost	DECIMAL
rating	ENUM
special_features	SET
last_update	TIMESTAMP

SOLUTION \
-- code goes here
select COUNT(RATING) AS R FROM FILM WHERE rating = 'R';
select COUNT(RATING)  NC_17 FROM FILM WHERE rating = 'NC-17';

-- ----------------------------------------------------------------------------------------------------------------------------
71.
List the film id and title with titles starting with the letter 'S' from film table.

Table name: film

SOLUTION \
-- code goes here 
SELECT film_id, title
FROM film
WHERE title LIKE 'S%';

-- ----------------------------------------------------------------------------------------------------------------------------
72.ist the rental id and total duration (in days) between the rental date and return date for each rental.

Table name: rental

column	Type
rental_id	INT
rental_date	DATETIME
inventory_id	INT
customer_id	INT
return_date	DATETIME
staff_id	INT
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT rental_id, abs(datediff(rental_date, return_date)) AS duration_days
FROM rental;

-- ----------------------------------------------------------------------------------------------------------------------------
73.
Get the rental IDs, rental dates, and the day of the week when each rental was made.

Table name: rental

column	Type
rental_id	INT
rental_date	DATETIME
inventory_id	INT
customer_id	INT
return_date	DATETIME
staff_id	INT
last_update	TIMESTAMP

SOLUTION \
SELECT rental_id, rental_date, dayname(rental_date) as day_name
FROM rental;

-- ----------------------------------------------------------------------------------------------------------------------------
74.
Get the rental IDs, rental dates, and the quarter of the year in which each rental was made.

Table name: rental

column	Type
rental_id	INT
rental_date	DATETIME
inventory_id	INT
customer_id	INT
return_date	DATETIME
staff_id	INT
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT rental_id, rental_date, floor(month(rental_date)/3) AS quarter
FROM rental;
-- ----------------------------------------------------------------------------------------------------------------------------
75.Get film id and titles where titles start with 'The'.

SOLUTION \
-- code goes here 
SELECT film_id, title
FROM film
WHERE title LIKE 'The%';

-- ----------------------------------------------------------------------------------------------------------------------------
76.
Get actors id, first name ,last name whose last names start with 'J' and have exactly five letters.

Table name: actor

column	Type
actor_id	INT
first_name	VARCHAR
last_name	VARCHAR
last_update	TIMESTAMP

SOLUTIOMN\
-- code goes here 
SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name LIKE 'J____';

-- ----------------------------------------------------------------------------------------------------------------------------
77.
List film id and title where titles do not contain 'Part' in it.

SOLUTION \
-- code goes here
SELECT film_id, title
FROM film 
WHERE title NOT LIKE '%Part%';

-- ----------------------------------------------------------------------------------------------------------------------------
78.
Get the name from the category where it starts with 'C' and ends with 'y'.

Table name: category

Column	Type
category_id	INTEGER
name	VARCHAR
last_update	TIMESTAMP

SOLUTION \
-- code goes here
SELECT name 
FROM category
WHERE name LIKE 'c%' AND name LIKE '%y';

-- ----------------------------------------------------------------------------------------------------------------------------
79.
Get the title and language_id from a film where the language_id is equal to 1.

SOLUTION \
-- code goes here 
SELECT title, language_id
FROM film
WHERE language_id = 1;

-- ----------------------------------------------------------------------------------------------------------------------------
80.
Find the payment IDs with '1' as the second digit in it.

Table name : payment

Column	Type
payment_id	INTEGER
customer_id	INTEGER
staff_id	INTEGER
rental_id	INTEGER
amount	DECIMAL
payment_date	DATETIME
last_update	TIMESTAMP

SOLUTION \
-- code goes here 
SELECT payment_id
FROM payment
WHERE payment_id LIKE '_1%';

-- ----------------------------------------------------------------------------------------------------------------------------

-- 81.Create a temporary table named TempOrders that contains Order_id and Order_Date from the orders table and show the complete TempOrders table.

Table name: orders

Column	Type
Order_id	VARCHAR
Order_Number	INTEGER
Order_Date	DATE
Order_Priority	VARCHAR
Expected Output:

SOLUTION/
-- code goes here 
CREATE TEMPORARY TABLE TempOrders
(SELECT order_id, Order_Date from Orders);
select * from TempOrders;

-- ----------------------------------------------------------------------------------------------------------------------------
82.-Create a temporary table named TempHighProfitOrders that contains Order_id and Profit from market table where profit is greater than 500 and show the complete TempHighProfitOrders table

Table Name: market

Column	Type
Market_id	INTEGER
Order_id	VARCHAR
Product_id	VARCHAR
Shipping_id	VARCHAR
Customer_id	VARCHAR
Sales	DECIMAL
Discount	DECIMAL
Order_Quantity	INTEGER
Profit	DECIMAL
Shipping_Cost	DECIMAL

SOLUTION \
-- code goes here 
CREATE TEMPORARY TABLE TempHighProfitOrder
(SELECT Order_id, Profit FROM Market
WHERE profit > 500);
SELECT * FROM TempHighProfitOrder;


-- ----------------------------------------------------------------------------------------------------------------------------
83. Create a temporary table named TempHighSalesProduct that contains Product id and sum of Sales as TotalSales from market and product table , grouping by product id and having TotalSales greater than 1000 and show the complete TempHighSalesProduct table.

Table Name: market

Column	Type
Market_id	INTEGER
Order_id	VARCHAR
Product_id	VARCHAR
Shipping_id	VARCHAR
Customer_id	VARCHAR
Sales	DECIMAL
Discount	DECIMAL
Order_Quantity	INTEGER
Profit	DECIMAL
Shipping_Cost	DECIMAL
Product_Base_Margin	DECIMAL
Table Name: product

Column	Type
Product_id	VARCHAR
Product_Category	VARCHAR
Product_Sub_Category	VARCHAR
Manu_Id	INTEGER

SOLUTION \

-- code goes here 
CREATE TEMPORARY TABLE TempHighSalesProduct
(SELECT P.Product_id, SUM(M.Sales) AS TotalSales
FROM MARKET M 
INNER JOIN PRODUCT P USING(PRODUCT_ID)
GROUP BY 1
HAVING TotalSales > 1000);
SELECT * FROM TempHighSalesProduct;

-- ----------------------------------------------------------------------------------------------------------------------------
84. Create a temporary table named TempOrdersWithDiscount that contains Order id and discount from the market table where Discount is greater than 0 and show the complete TempOrdersWithDiscount table.

Table Name: market

Column	Type
Market_id	INTEGER
Order_id	VARCHAR
Product_id	VARCHAR
Shipping_id	VARCHAR
Customer_id	VARCHAR
Sales	DECIMAL
Discount	DECIMAL
Order_Quantity	INTEGER
Profit	DECIMAL
Shipping_Cost	DECIMAL

SOLUTION \

-- code goes here 
CREATE TEMPORARY TABLE TempOrdersWithDiscount
(SELECT Order_id, Discount
FROM market 
WHERE Discount >0);
SELECT * FROM TempOrdersWithDiscount;

-- ----------------------------------------------------------------------------------------------------------------------------
85. Create a temporary table named TempHighSalesManufacturers that contains the manufacturer's name and sum of sales as TotalSales from market , product and manufacturer table ,grouping by manufacturer's name and having total sales exceeding $500 and show the complete TempHighSalesManufacturers table.

SOLUTION \
-- code goes here 
CREATE TEMPORARY TABLE TempHighSalesManufacturers
(
SELECT Man.Manu_Name, Sum(mar.sales) as TotalSales
FROM MARKET MAR 
INNER JOIN Product P using(Product_id)
INNER JOIN Manufacturer MAN 
ON P.manu_id = Man.manufacturer_id
GROUP BY 1
HAVING TotalSales > 500
);
SELECT * FROM TempHighSalesManufacturers;

-- ----------------------------------------------------------------------------------------------------------------------------
86. Create a CTE named HighSalesOrders to select Order id ,sales from market table with sales greater than 1000 and show the complete HighSalesOrders table

SOLUTION \
-- code goes here 
WITH HighSalesOrders 
AS 
(
SELECT Order_id, Sales 
FROM Market 
WHERE SALES > 1000
)
SELECT * FROM HighSalesOrders;

-- ----------------------------------------------------------------------------------------------------------------------------
87. Create a CTE named LowDiscountOrders to select order id and discount from the market table with a discount less than 10% and display the complete LowDiscountOrders table.

Table Name: market

SOLUTION \

-- code goes here 
WITH LowDiscountOrders 
AS 
(
select *
FROM Market 
WHERE discount < 0.10
)
SELECT Order_id, Discount  FROM LowDiscountOrders ;

-- ----------------------------------------------------------------------------------------------------------------------------
89. Create a CTE named TopProducts to select product id , product category and sum of sales as TotalSales from market and product table , grouping by product id and product category and ordering by TotalSales in descending order and list the top 5 products. Show the complete TopProducts table

Table Name: market

SOLUTION \

-- code goes here 
WITH TopProducts 
AS 
(
  SELECT P.Product_id, p.Product_Category, Sum(m.sales) as TotalSales
  FROM MARKET M 
  INNER JOIN PRODUCT P using(Product_id)
  GROUP BY 1,2
  ORDER BY TotalSales DESC 
  LIMIT 5
)
SELECT * FROM TopProducts;

-- ----------------------------------------------------------------------------------------------------------------------------
90. Create a CTE named MinShippingCost to select minimum shipping cost MinCost from the market table and display the complete MinShippingCost table.

Table Name: market

SOLUTION \
WITH MinShippingCost 
AS 
(
  SELECT MIN(M.Shipping_Cost) AS MinCost 
  FROM Market M
)
SELECT * FROM MinShippingCost;

-- ----------------------------------------------------------------------------------------------------------------------------
91. Create a CTE named TopCategories to select Product category , sum of sales as TotalSales from market and product table , grouping by Product category, ordering by TotalSales in descending order and list the top 3 values .Show the complete TopCategories table.

Table Name: market

SOLUTION \

-- code goes here 
WITH TopCategories 
AS 
(
  SELECT P.Product_Category, SUM(m.Sales) AS TotalSales
  FROM MARKET M 
  INNER JOIN PRODUCT P USING (PRODUCT_ID)
  GROUP BY 1
  ORDER BY TotalSales DESC
  LIMIT 3
)
SELECT * FROM TopCategories;

-- ----------------------------------------------------------------------------------------------------------------------------

-- ----------------------------------------------------------------------------------------------------------------------------
use practiceset;

--  List all the columns of the Salespeople table 	
select * from salespeople;

select * from customers;

select * from orders;


 -- 2. List all customers with a rating of 100. 
 select * from customers
 where rating = 100;
 
 /*
 CNUM, CNAME, CITY, RATING, SNUM
 2001	Hoffman	London	100	1001
2006	Clemens	London	100	1001
2007	Pereira	Rome	100	1004
				*/
-- 3. Find all records in the Customer table with NULL values in the city column.
select * from customers
where city = NULL;

-- 4.Find the largest order taken by each salesperson on each date. 

select s.sname, o.odate, max(o.amt) as Largest_order
from salespeople s 
left join orders o on s.snum = o.snum
group by o.odate,s.sname;

-- 5. Arrange the Orders table by descending customer number.

select * from orders
order by cnum desc;

-- 6. Find which salespeople currently have orders in the Orders table. 

select DISTINCT s.sname
from salespeople s 
right join orders o on s.snum = o.snum ;

-- 7. List names of all customers matched with the salespeople serving them. 

select c.cname Customer_Name , s.sname SalesPerson_name
from customers c 
left join salespeople s on c.snum = s.snum;

-- 8. Find the names and numbers of all salespeople who had more than one customer. 
select s.snum, s.sname, count(*) Total_Customers
from salespeople s 
left join customers c on c.snum = s.snum
group by s.snum, s.sname
having Total_Customers > 1;

-- 9. Count the orders of each of the salespeople and output the results in descending order.
select s.sname, count(o.onum) as Total_Orders
from salespeople s 
right join orders o on s.snum = o.snum
group by s.sname
order by Total_orders desc;

-- 10. List the Customer table if and only if one or more of the customers in the Customer table are located in San Jose. 

select distinct c1.cname from customers c1
join customers c2 on c2.city = c1.city
where exists (select c1.cname from customers where city = 'San Jose' group by cname having count(cname) >= 1);

-- 11. Match salespeople to customers according to what city they lived in. 
select s.sname SalesPerson, c.cname CustomerName, c.city
from salespeople s 
inner join customers c on s.city = c.city;

-- 12. Find the largest order taken by each salesperson. 

select s.snum, s.sname, max(o.amt) as Largest_Order
from salespeople s 
left join orders o on s.snum = o.snum 
group by s.snum, s.sname
order by max(o.amt) desc;

-- 13.13. Find customers in San Jose who have a rating above 200. 

select c.cname
from customers c 
where city = 'San Jose' and rating > 200;

-- 14. List the names and commissions of all salespeople in London. 

select s.sname, s.comm from salespeople s
where city = 'London';

-- 15. List all the orders of salesperson Motika from the Orders table. 

select o.onum, o.amt, o.odate, o.cnum from orders o 
left join salespeople s using(snum)
where s.sname = 'Motika';

-- 16. Find all customers with orders on October 3. 

select c.cname, o.odate from customers c 
left join orders o using(cnum)
where o.odate = "1996-10-03";

-- Hemants code
select * from 
customers 
left join orders ON orders.cnum = customers.cnum
where orders.odate = '1996-10-03';

-- 17. Give the sums of the amounts from the Orders table, grouped by date, eliminating all those dates where the SUM was not at least 2000.00 above the MAX amount. 

select  o.odate, round(sum(o.amt),2) as Sum_Order
from orders o 
group by o.odate
having sum(o.amt) > (2000 + max(amt));
-- need to build logic 
;

-- 18 18. Select all orders that had amounts that were greater than at least one of the orders from October 6. 

select * from orders o 
where amt > (select min(amt) from orders where odate = '1996-10-03');

select * from orders o 
where amt > any(select amt from orders where odate = '1996-10-03');

-- 19 Write a query that uses the EXISTS operator to extract all salespeople who have customers with a rating of 300.
				   -- err
SELECT * FROM Salespeople s
where exists (select snum from customers c 
				where c.rating = 300);
                   -- err
                
select * from salespeople s where exists(select 1 from customers c where c.snum = s.snum and rating=300);
             
                
-- 20. Find all pairs of customers having the same rating.

select DISTINCT c1.cname as Pair1, c2.cname as Pair2, c1.rating
from customers c1
inner join customers c2 using(rating)
where c1.cname != c2.cname;


-- 21.Find all customers whose CNUM is 1000 above the SNUM of Serres.

SELECT *
FROM customers c
WHERE c.cnum > 1000+(SELECT snum FROM salespeople WHERE sname = 'serres'
);

-- 22. Give the salespeople’s commissions as percentages instead of decimal numbers.

select sname, comm*100 as Percentage_Commission
from salespeople;

-- 23. Find the largest order taken by each salesperson on each date, eliminating those MAX orders which are less than $3000.00 in value.

select s.snum, s.sname,  o.onum, max(o.amt) as largest_Order
from salespeople s 
right join orders o using(snum)
where o.amt > 3000
group by s.snum, s.sname,  o.onum;


-- 24 24. List the largest orders for October 3, for each salesperson.

select s.snum SalesPerID, s.sname SalesPerson, max(o.amt) as Largest_Order_Amount
from salespeople s 
left join orders o on s.snum = o.snum 
where o.odate = '1996-10-03'
group by s.snum, s.sname
order by max(o.amt) desc;

-- 25. 25. Find all customers located in cities where Serres (SNUM 1002) has customers.

select c.cname, c.city from customers c 
right join salespeople s using(snum)
where s.sname = "Serres";

-- 26. Select all customers with a rating above 200.00.

select * from customers 
where rating > 200;

-- 27. Count the number of salespeople currently listing orders in the Orders table.
-- Find which salespeople currently have orders in the Orders table.
select count(*) SalesPersonCount 
from salespeople s 
right join orders o on s.snum = o.snum ;

-- 28. Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name and the salesperson’s rate of commission.

select c.cname Customername, s.sname SalesPerson, s.comm Comission from salespeople s 
left join customers c using(snum)
where s.comm > 0.12;

-- 29. Find salespeople who have multiple customers.

select s1.sname, c.cname from salespeople s1 
join customers c using(snum)
where s1.snum = c.snum;

-- 30. Find salespeople with customers located in their city.

select s.sname,c.cname, c.city from salespeople s 
left join customers c using(snum);

-- 31 Find all salespeople whose name starts with ‘P’ and the fourth character is ‘l’.

select s.sname from salespeople s 
where s.sname LIKE "P__l%";

-- 32 32. Write a query that uses a subquery to obtain all orders for the customer named Cisneros. Assume you do not know his customer number. 

select * from orders o 
where o.cnum in (select cnum from customers  where cname ='Cisneros');

-- 33. Find the largest orders for Serres and Rifkin. 

select s.sname, max(o.amt) as LargestOrders 
from orders o 
inner join salespeople s using(snum)
where s.sname in ('Serres', 'Rifkin')
group by s.sname;

-- 34 34. Extract the Salespeople table in the following order : SNUM, SNAME, COMMISSION, CITY

select snum, sname, comm, city 
from salespeople s;

-- 35. Select all customers whose names fall in between ‘A’ and ‘G’ alphabetical range. 

SELECT * 
FROM customers 
WHERE cname >= 'A' AND cname < 'H';

	-- another query for the same 
	select * from customers where left(cname, 1) between 'A' and 'G';

-- 36. Select all the possible combinations of customers that you can assign.

select C1.cname AS customer1, C2.cname AS customer2
from customers C1
cross JOIN customers C2;

-- 37. Select all orders that are greater than the average for October 4. 

select o.onum, o.amt, o.odate
from orders o 
where  o.amt > (select avg(amt) from orders where o.odate = '1996-10-04');


-- 38. Write a select command using a corelated subquery that selects the names and numbers of all customers with ratings equal to the maximum for their city

select c.cname, c.cnum, c.rating, c.city
from  customers c
where c.rating = (
    select MAX(c2.rating)
    from customers c2
    where c2.city = c.city
);

-- 39. Write a query that totals the orders for each day and places the results in descending order.
select o.odate, count(*) OrdersCount 
from orders o
group by o.odate
order by OrdersCount DESC;

-- 41. Find all orders with amounts smaller than any amount for a customer in San Jose.

SELECT *, c.city
FROM orders o
INNER JOIN customers c using(cnum)
WHERE o.amt < (
    SELECT max(o2.amt)
    FROM orders o2
    JOIN customers c ON o2.cnum = c.cnum
    WHERE c.city = 'San Jose'
);
-- 42. Find all orders with above average amounts for their customers.

SELECT o.*
FROM orders o
WHERE o.amt > (
    SELECT AVG(o2.amt)
    FROM orders o2
    WHERE o2.cnum = o.cnum
);

-- 43. Write a query that selects the highest rating in each city.

select city, max(rating) HighestRating
from customers
group by city
order by HighestRating DESC;

-- 44. Write a query that calculates the amount of the salesperson’s commission on each order by a customer with a rating above 100.00.

SELECT 
    s.sname,
    round(sum((o.amt * s.comm)),2) AS commission_amount
FROM orders o
JOIN customers c ON o.cnum = c.cnum
JOIN salespeople s ON o.snum = s.snum
WHERE c.rating > 100.00
group by s.sname;

-- 45. Count the customers with ratings above San Jose’s average.

select count(*) CountCustomers, rating
from customers 
where rating > (select avg(rating) from customers where city = 'San Jose')
group by rating;

-- 46. Write a query that produces all pairs of salespeople with themselves as well as duplicate rows with the order reversed.

select s1.sname, s2.sname
from salespeople s1
join salespeople s2;



-- 47. Find all salespeople that are located in either Barcelona or London.

select sname,  city
from salespeople
where city in ('Barcelona', 'London');

-- 48. Find all salespeople with only one customer.

select s.sname, count(*) as COunt
from salespeople s 
right join customers c using(snum)
group by s.sname
having COunt = 1;

-- 49. Write a query that joins the Customer table to itself to find all pairs of customers served by a single salesperson.

select c1.cnum AS Customer1, c2.cnum AS Customer2, c1.snum
from Customers c1
join Customers c2
on c1.snum = c2.snum  
and c1.cnum < c2.cnum        
ORDER BY c1.snum, c1.cnum, c2.cnum;

-- 50. Write a query that will give you all orders for more than $1000.00

select * from orders 
where amt > 1000;

-- 51. Write a query that lists each order number followed by the name of the customer who made that order.

select distinct o.onum OrderNumber, c.cnum CustomerNUmber
from orders o 
inner join customers c using(cnum);

-- 52. Write 2 queries that select all salespeople (by name and number) who have customers in their cities who they do not service, one using a join and one a corelated subquery. Which solution is more elegant?

select distinct s.snum, s.sname
from Salespeople s
join Customers c 
on s.City = c.City 
and s.snum <> c.snum;

-- 53. Write a query that selects all customers whose ratings are equal to or greater than ANY (in the SQL sense) of Serres’?

select * from customers
where rating >= any (
    select rating
    from customers
    where snum = (
		select snum 
		from salespeople
		where sname = 'Serres'
    )
);

-- 54. Write 2 queries that will produce all orders taken on October 3 or October 4.


select * from orders 
where odate in ('1996-10-03', '1996-10-04');

select  *from  orders
where odate = '1996-10-03' 
   or odate = '1996-10-04';

-- 55. Write a query that produces all pairs of orders by a given customer. Name that customer and eliminate duplicates.

select c.cname, o1.onum AS Order1, o2.onum AS Order2
from orders o1
join orders o2
on o1.cnum = o2.cnum        
and o1.onum < o2.onum               
join customers c on o1.cnum = c.cnum
ORDER BY c.cname,o1.onum, o2.onum;

-- 56. Find only those customers whose ratings are higher than every customer in Rome.

select *
from customers
WHERE rating > all (
    SELECT rating
    from customers
    where city = 'Rome'
);

-- 57. Write a query on the Customers table whose output will exclude all customers with a rating <= 100.00, unless they are located in Rome.

select *
from customers
where rating > 100
   or city = 'Rome';

-- 58. Find all rows from the Customers table for which the salesperson number is 1001

select * from customers 
where snum = 1001;

-- 59. Find the total amount in Orders for each salesperson for whom this total is greater than the amount of the largest order in the table.

select snum, sum(amt) AS total_sales
from orders
group by snum
having SUM(amt) > (
    select MAX(amt)
    from orders
);

-- 60. Write a query that selects all orders save those with zeroes or NULLs in the amount field.

select * from orders 
where amt in (0, NULL);

-- 61. Produce all combinations of salespeople and customer names such that the former precedes the latter alphabetically, and the latter has a rating of less than 200

select s.SNAME  Salesperson, c.CNAME Customer
from salespeople s, customers c  
where s.snum = c.cnum and
c.rating < 200 and sname<cname; 

-- 62. List all Salespeople’s names and the Commission they have earned.

select distinct sname, comm
from salespeople ;

-- 63. Write a query that produces the names and cities of all customers with the same rating as Hoffman. Write the query using Hoffman’s CNUM rather than his rating, so that it would still be usable if his rating changed.


select c.cname, c.city
from customers c 
where c.rating = (select rating from customers where cnum = 2001 );


-- 64. Find all salespeople for whom there are customers that follow them in alphabetical order.

select distinct s.sname
from salespeople s
join customers c on s.sname < c.cname;  

-- 65 65. Write a query that produces the names and ratings of all customers of all who have above average orders.
 
 select cname, rating, avg(amt) as AverageAmount
 from customers c
 left join orders o using(cnum)
 group by cname, rating 
 having avg(amt) > (select avg(amt) from orders);
 
 
 -- 66. Find the SUM of all purchases from the Orders table.
 
 select round(sum( o.amt),2) TotalPurchase from orders o ;
 
-- 67. Write a SELECT command that produces the order number, amount and date for all rows in the order table.

select onum, amt, odate
from orders;

-- 68. Count the number of nonNULL rating fields in the Customers table (including repeats).

select count(rating)
from customers 
where rating IS NOT NULL;

-- 69. Write a query that gives the names of both the salesperson and the customer for each order after the order number.

select o.onum, s.sname Salesperson, c.cname Customer
from orders o
join salespeople s ON o.snum = s.snum  
join customers c ON o.cnum = c.cnum;    

-- 70. List the commissions of all salespeople servicing customers in London

select DISTINCT s.comm
from salespeople s
join customers c ON s.snum = c.snum  
where c.city = 'London';             

-- 71. Write a query using ANY or ALL that will find all salespeople who have no customers located in their city.

SELECT s.snum, s.sname
FROM salespeople s
WHERE NOT EXISTS (
    SELECT 1
    FROM customers c
    WHERE c.snum = s.snum AND c.city = s.city
);
-- Usign All or ANY
select * from salespeople s where s.city != all(select city from customers c where c.snum = s.snum);

-- 72. Write a query using the EXISTS operator that selects all salespeople with customers located in their cities who are not assigned to them.

SELECT s.snum, s.sname
FROM salespeople s
WHERE EXISTS (
    SELECT 1
    FROM customers c
    WHERE c.city = s.city        
      AND c.snum <> s.snum      
);

-- 73. Write a query that selects all customers serviced by Peel or Motika. (Hint : The SNUM field relates the two tables to one another.)

select c.cnum, c.cname, c.city, c.rating
from customers c
where c.snum IN (
    select s.snum
    from  salespeople s
    where s.sname IN ('Peel', 'Motika')
);


-- 74. Count the number of salespeople registering orders for each day. (If a salesperson has more than one order on a given day, he or she should be counted only once.)

select o.odate, count(DISTINCT o.snum) AS salesperson_count
from orders o
group by o.odate;

-- 75 Query to Find All Orders Attributed to Salespeople in London

select o.onum, o.amt, o.odate, s.sname
from orders o
join salespeople s ON o.snum = s.snum  
where s.city = 'London';                

-- 76 Query to Find All Orders by Customers Not Located in the Same Cities as Their Salespeople

select o.onum, o.amt, o.odate, c.cname, s.sname
from orders o
join customers c ON o.cnum = c.cnum  
join salespeople s ON o.snum = s.snum 
where c.city <> s.city;              

-- 77 77. Find all salespeople who have customers with more than one current order.

SELECT DISTINCT s.snum, s.sname
FROM salespeople s
JOIN customers c ON s.snum = c.snum            
JOIN orders o ON c.cnum = o.cnum                
GROUP BY s.snum, s.sname, c.cnum                
HAVING COUNT(o.onum) > 1;                       

-- 78. Write a query that extracts from the Customers table every customer assigned to a salesperson who currently has at least one other customer (besides the customer being selected) with orders in the Orders table.

select c.cnum, c.cname, c.city, c.rating
from customers c
where c.snum IN (
    select s.snum
    from salespeople s
    JOIN customers c2 ON s.snum = c2.snum      
    JOIN orders o ON c2.cnum = o.cnum          
    where c2.cnum <> c.cnum                    
    group BY s.snum                             
    having count(distinct o.onum) > 0          
);


-- 79. Write a query that selects all customers whose names begin with ‘C’.

select * from customers
where cname LIKE 'C%';

-- 80. Write a query on the Customers table that will find the highest rating in each city. Put the output
-- in this form : for the city (city) the highest rating is : (rating).

select "for ",c.city, "The highest rating is :", max(c.rating) as HighestRating
from customers c 
group by c.city;
 
-- Using concat
select concat("for ",c.city, " The highest rating is : ", max(c.rating)) as HighestRating
from customers c 
group by c.city;

-- 81 81. Write a query that will produce the SNUM values of all salespeople with orders currently in the Orders table (without any repeats).

-- 82 Write a query that lists customers in descending order of rating. Output the rating field first, followed by the customer’s names and numbers.

select c.rating, c.cname, c.cnum 
from customers c 
order by c.cname desc;

-- 83.Find the average commission for salespeople in London.

select avg(s.comm) as AverageComission 
from salespeople s 
where city = 'London';

-- 84. Find all orders credited to the same salesperson who services Hoffman (CNUM 2001).

select o.onum OrderNumber, s.sname SalesPerson , c.cname CustomerName
from orders o 
join customers c using(cnum)
join salespeople s on o.snum = s.snum
where c.cname = 'Hoffman';

-- 85.85. Find all salespeople whose commission is in between 0.10 and 0.12 (both inclusive).

select * from salespeople 
where comm between 0.10 and 0.12;

-- 86. Write a query that will give you the names and cities of all salespeople in London with a commission above 0.10.

select s.sname, s.city, s.comm
from salespeople s 
where city = 'london' and comm >0.10;

-- 87. What will be the output from the following query?
SELECT * FROM ORDERS
where (amt < 1000 OR NOT (odate = 10/03/1996 AND cnum >
2003));

/* The output will have order amount lesser than 1000 or (odate != 03 and cnum !- 2001,2)
*/

-- 88 88. Write a query that selects each customer’s smallest order.

select distinct c.cname, min(o.amt) as SmallestOrder from 
customers c 
left join orders o using(cnum)
group by c.cname
order by SmallestOrder ASC;


-- 89. Write a query that selects the first customer in alphabetical order

select * from customers 
order by cname ASC;

-- 90. Write a query that counts the number of different nonNULL city values in the Customers table.


select count(city) 
from customers 
where city is not null;

-- 91 91. Find the average amount from the Orders table.

select round(avg(amt),2) as AverageAmount
from orders ;

-- 92. What would be the output from the following query?
SELECT * FROM ORDERS
WHERE NOT (odate = 10/03/96 OR snum > 1006) AND amt >=1500;

-- 93. Find all customers who are not located in San Jose and whose rating is above 200.

select * from customers 
where city <>'San JOse' and rating > 200;

-- 94. Give a simpler way to write this query :
SELECT snum, sname city, comm FROM salespeople
WHERE (comm > 0.12 OR comm < 0.14);

select * from salespeople 
where comm is not null;	-- case where number > and < comes we get all output as result set 

-- 95. Evaluate the following query :
SELECT * FROM orders
WHERE NOT ((odate = 10/03/96 AND snum > 1002) OR amt > 2000.00);

-- 96. Which salespersons attend to customers not in the city they have been assigned to?

-- 97. Which salespeople get commission greater than 0.11 are serving customers rated less than 250?

-- 99. Which salesperson has earned the most by way of commission?

select s.sname, round(max((o.amt * s.comm)),2) as MostCommission
from salespeople s 
inner join orders o using(snum)
group by s.sname
order by MostCommission DESC limit 1;
-- 100.Does the customer who has placed the maximum number of orders have the maximum rating?

-- 101.Has the customer who has spent the largest amount of money been given the highest rating?

-- 102.List all customers in descending order of customer rating.

select * from 
customers 
order by rating desc;

-- 103.On which days has Hoffman placed orders?

select o.odate, dayname(o.odate) as DayName
from orders o 
inner join customers c using(cnum)
where c.cname = 'Hoffman';

-- 104.104.Do all salespeople have different commissions?

select count(*) as DifferentComission from salespeople s1 
inner join salespeople s2 using(snum)
where  s1.comm <> s2.comm;

-- 105.Which salespeople have no orders between 10/03/1996 and 10/05/1996?

select s.sname from salespeople s 
left join orders o using(snum)
where o.odate NOT IN ('1996-10-03','1996-10-05');

-- 106.How many salespersons have succeeded in getting orders?
select DISTINCT s.sname from salespeople s 
left join orders o using(snum)
where s.snum IN (select  o.snum from orders);

-- 107.How many customers have placed orders?

select DISTINCT c.cname from customers c 
inner join orders o using(cnum)
where c.cnum = o.cnum;

-- 108.On which date has each salesperson booked an order of maximum value?

SELECT o.snum, s.sname, o.odate, o.amt
FROM orders o
JOIN salespeople s ON o.snum = s.snum
WHERE (o.snum, o.amt) IN (
    SELECT snum, MAX(amt)
    FROM orders
    GROUP BY snum
);	

-- 109 109.Who is the most successful salesperson?


select s.sname, round(sum(o.amt * s.comm)) as MostSuccessful
from salespeople s 
left join orders o using(snum)
group by  s.sname
order by MostSuccessful DESC LIMIT 1;

-- 110.Who is the worst customer with respect to the company?

select s.sname, round(sum(o.amt * s.comm)) as MostWorst
from salespeople s 
left join orders o using(snum)
group by  s.sname
order by MostWorst ASC LIMIT 1;

-- 111.Are all customers not having placed orders greater than 200 totally been serviced by salespersons Peel or Serres?

select c.cnum
from  Customers c
left join Orders o ON c.cnum = o.cnum
where o.amt <= 200
and c.cname not in ('Peel', 'Serres');

-- 112.Which customers have the same rating?

select  c1.cname Customer1 ,c2.cname Customer2,  c2.rating from customers c1
cross join customers c2 using(rating)
where c1.cnum < c2.cnum;


-- 113 113.Find all orders greater than the average for October 4th.

select * from orders o 
where amt > (select avg(amt) from orders where odate = '1996-10-04') and odate = '1996-10-04' ;

-- 114.Which customers have above average orders?

select * from orders o 
where amt > (select avg(amt) from orders);

-- 115.List all customers with ratings above San Jose’s average.

select * from 
customers c 
where rating > (select avg(rating) from customers );

-- 116.Select the total amount in orders for each salesperson for whom the total is greater than the amount of the largest order in the table.

select s.sname, round(sum(o.amt),2) as LargestOrder
from salespeople s 
left join orders o using(snum)
group by s.sname
having sum(o.amt) > (select max(amt) from orders);


-- 117.Give names and numbers of all salespersons

select DISTINCT s.snum Numbers, s.sname SalesPerson from salespeople s;

-- 118.Select all salespersons by name and number who have customers in their city whom they don’t service.

select s.snum, s.sname
from salespeople s
where exists (
    select  1 
    from customers c
    where c.city = s.city and c.snum <> s.snum
);

-- 119.Which customers’ rating should be lowered?




-- 120.Is there a case for assigning a salesperson to Berlin?

select COUNT(o.onum) AS OrderInBerlin
from orders o
left join customers c using(cnum)
where c.city = 'Berlin';

-- 121.Is there any evidence linking the performance of a salesperson to the commission that he or she is being paid?

select s.sname, s.comm, count(o.onum) as OrderCount, max(o.amt) MaximumAmountOrder from salespeople s 
inner join orders o using(snum)
group by s.sname, s.comm;


-- 122.Does the total amount in orders by customer in Rome and London exceed the commission paid to salespersons in London and New York by more than 5 times?


-- 123.Which is the date, order number, amt and city for each salesperson (by name) for the maximum order he has obtained?

select s.sname, o.odate, o.onum, o.amt, c.city
from orders o
inner join customers c using(cnum)
inner join  salespeople s using(snum)
where o.amt = (
    select MAX(o2.amt)
    from orders o2
    where o2.snum = o.snum
)
order by s.sname;


-- 124.Which salesperson(s) should be fired?
select s.snum, s.sname
from salespeople s
where not exists (
    select 1
    from orders o
    where o.snum = s.snum
);

-- 125.What is the total income for the company?
select SUM(o.amt) AS total_income
from orders o;



-- 



create table example(id TINYINT, name varchar(5));

insert into example values(288, "Pranay");
	-- Error Code: 1264. Out of range value for column 'id' at row 1

insert into example values(-1, "Yash");
insert into example values(-130, "Yash");
	-- Error Code: 1264. Out of range value for column 'id' at row 1

select * from example;
insert into example values(-130, "Yash");


create table EX1(id TINYINT, name varchar(5));
insert into example values(-2, "Pranay");

insert into example values(12, "Hemant");

-- restrictions 
-- Create view sand check whether you can delete a record from tables or not if there are more than 2 joins 
create view view1
as 
(select * from salespeople s
join orders o using(snum));

select * from view1;
 
 
delete from view1 where city = 'New York';


create view view2
as 
(select * from example s);


select * from view2;

-- delete from view and record gets deleted as its an single tbale 
delete from example where name = 'Yash';

-- verfying the above statement
select * from view2;

select * from example;


-- 2nd restriction 
select * from view1;

insert into view1(SNUM, SNAME, CITY, COMM, onum, amt, odate, cnum) values(1008, 'Pranay','California',0.50,3010, 100.20, '1996-10-20',2000), 
						(1009, 'Yash','New York',0.20,3012, 50.20, '1996-10-25',2012);
	-- error -- Error Code: 1393. Can not modify more than one base table through a join view 'practiceset.view1'
-- 3rd rest 
	-- if view having group by clause, having, then we cannot perform update 
    
use practiceset;
create view view3
as 
(select sname, count(*) as CountEmployee from salespeople group by sname having count(*) >= 1 );


select * from view3;

insert into view3(sname, CountEmployee) values('Pranay', 199);
	-- Error Code: 1471. The target table view3 of the INSERT is not insertable-into

-- 

CREATE TABLE parts (
    partid VARCHAR(10) PRIMARY KEY,
    parentpartid VARCHAR(10)
);

INSERT INTO parts (partid, parentpartid) VALUES
('A', 'A'),  
('B', 'A'),  
('C', 'A'),  
('D', 'B'),  
('E', 'B'),  
('F', 'C'),  
('G', 'D');  


WITH RECURSIVE tab AS (
    SELECT 
        partid AS originalpartid, 
        parentpartid AS immediateparent, 
        parentpartid AS topmostparent, 
        0 AS level
    FROM parts
    UNION ALL
    SELECT 
        p.partid AS originalpartid, 
        p.parentpartid AS immediateparent, 
        t.immediateparent AS topmostparent, 
        t.level + 1 AS level
    FROM tab t
    JOIN parts p 
    ON t.topmostparent = p.partid
    WHERE p.partid <> p.parentpartid
)
SELECT * FROM tab;





select routine_name from information_schema.routines where routine_schema = 'HR';

show variables like 'transaction_isolation';

	




-- ----------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------


-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------


-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------


-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------------------------------------------------------------------------------------


-- ----------------------------------------------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------------------------------------------




























