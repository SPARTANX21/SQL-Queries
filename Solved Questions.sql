
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
https://labs.odinschool.com/practice-grounds/sql/3zk8w6a3z/8-foundation-w3d1-ct

8. Foundation-W3D1-CT
Classroom Tasks (QFC31)
-- ----------------------------------------------------------------------------------------------------------------------------
https://labs.odinschool.com/practice-grounds/sql/3znkq8cvh/23-advanced-w2d2-ct
23-advanced-w2d2-ct

81.Create a temporary table named TempOrders that contains Order_id and Order_Date from the orders table and show the complete TempOrders table.

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




























