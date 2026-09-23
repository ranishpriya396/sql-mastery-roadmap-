-- Level 1 — Basic Subqueries
-- 1.	Find all products whose price is greater than the average product price.
use ecommerce_db;
select *from products 
where price > (select AVG(price) from products);

-- 2.	Find all products whose price is less than the average product price.
select  * from products 
where price < (select avg(price) from products);

-- 3.	Find the product with the highest price using a subquery.-- 
select * from products 
where price =(select max(price) from products );

-- 4.	Find the product with the lowest price using a subquery. 
select *from products 
where price = (select min(price) from products);

-- 5.	Find customers whose age is greater than the average customer age. 
select * from customers
where age > (select avg(age) from customers);
-- 6.	Find customers whose age is less than the average customer age. 
select *from customers
where age < (select avg(age) from customers);

-- 7.	Find orders whose total_amount is greater than the average order amount. 
select *from orders
where total_amount > (select avg(total_amount) from orders);

-- 8.	Find orders whose total_amount is less than the average order amount. 
select *from orders
where total_amount < (select avg(total_amount) from orders);

-- 9.	Find products whose stock is greater than the average stock. 
select *from products 
where stock > (select avg(stock) from products);

-- 10.	Find products whose stock is less than the average stock. 
select *from products 
where stock < (select avg(stock) from products);