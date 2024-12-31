-- DataBase 
use products;
--  checking all data from product_data table
select*from product_data;

-- Removing $ from cost and sale price to perform calculations.
update product_data
set  `cost price`=replace( `cost price`,'$',''),
`sale price`=replace( `sale price`,'$','');
-- changing the data types of cost and sale price to int from text.
alter table product_data
modify column `cost price` int,
modify column `sale price` int;

-- calculating revenue and total cost

-- Query 1:performing a join between product data table and product sales table.
select*from 
product_data AS A
join product_sales AS B
ON A.`Product ID`= B.Product;

-- query 3:calculating revenue and total cost
select*,
 (`cost Price`*`units sold`) AS total_cost,
(`sale Price`*`units sold`) AS revenue
from product_data AS A
join product_sales AS B
ON A.`Product ID`= B.Product;

-- Query 4: Changing the data type of date column to 'date' from Text.
alter table product_Sales 
modify column `date` DATE;

-- Query 5:formatting the date column into month and year coulumn.
select*,
 (`cost Price`*`units sold`) AS total_cost,
(`sale Price`*`units sold`) AS revenue,
 date_format(date,'%M') AS month,
date_format(date,'%Y') AS Year
from product_data AS A
join product_sales AS B
ON A.`Product ID`= B.Product;

-- Query 6: joining all 3 tables together.
select A.Product,
A.Category,
A.Brand,
A.description,
A.`cost Price`,
A.`sale Price`,
A.`Image URL`,
B.date,
B.`customer type`,
B.`Discount Band`,
B.`Units Sold`,
B.Country,
C.Discount,
 (`cost Price`*`units sold`) AS total_cost,
(`sale Price`*`units sold`) AS revenue,
(1-`Discount`*1.0/100)*(`sale Price`*`units sold`) AS Discount_revenue,
 date_format(date,'%M') AS month,
date_format(date,'%Y') AS Year
from product_data AS A
join product_sales AS B
ON A.`Product ID`= B.Product
join discount_data AS C
on upper(trim(B.`Discount Band`))=upper(trim(C.`Discount Band`));

 