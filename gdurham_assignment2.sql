/* Assignment 2.sql 
   Grace Durham
   CS 150A, Fall 2019
*/

/* */
USE bookstore;

/* Query 0 */
SELECT user(), current_date();


/* Query 1 */

SELECT product_name, description
FROM product
WHERE category_id < 41;


/* Query 2 */

SELECT last_name, first_name, customer_id
FROM customer
WHERE customer_id != 77779;


/* Query 3 */

SELECT last_name, first_name, customer_id, email_address
FROM customer
WHERE customer_id = 88889;



/* Query 4 */


-- SELECT item_id AS 'The item_id column',
--        item_price AS 'The item_price column',
--        discount_amount AS 'The discount_amount column',
--        quantity AS 'The quantity column',
--        item_price * quantity AS price_total,
--        discount_amount * quantity AS discount_total,
--        (item_price - discount_amount) * quantity AS item_total
-- FROM orderitems
-- HAVING item_total > 500
-- ORDER BY item_total;

SELECT item_id,
item_price, discount_amount,
quantity,
item_price * quantity AS 'price_total',
discount_amount * quantity AS 'discount_total',
((item_price - discount_amount) * quantity) AS 'item_total'
FROM orderitems
WHERE ((item_price - discount_amount) * quantity) > 500
ORDER BY item_total ASC;



/* Query 5 */


SELECT item_id AS 'The item_id column',
       order_id AS 'The order_id column',
       item_price AS 'The item_price column'
FROM orderitems
WHERE item_price < 1000
ORDER BY item_price DESC;



/* Query 6 */


SELECT customer_id, email_address
FROM customer;



/* Query 7 */

SELECT DISTINCT customer_id
FROM orders;


/* Query 8 */

SELECT product_name AS 'The product_name column',
       list_price AS 'The list_price column',
       discount_percent AS 'The discount_percent column',
       list_price * (discount_percent/100) AS 'discount_amount',
       list_price - list_price * (discount_percent/100) AS 'discount_price'
FROM product 
ORDER BY discount_price
LIMIT 5;



/* Query 9 */


SELECT concat(last_name, ',', ' ', first_name) AS 'full_name'
FROM employee;


/*  Query 10 */

SELECT customer_id, line1, line2,
       CONCAT(city, ',', ' ', state) AS city_state,
       zip_code
FROM address;




/* Query 11 */


SELECT category_id, product_name
FROM product;


/* Query 12 */

SELECT product_name, list_price, 
       list_price + (list_price * 0.08) AS new_list_price
FROM product;
