---Query 1 viewing first 10 rows of the table
select * from `workspace`.`default`.`practical_1_bright_coffee_consultation` limit 10;

---Query 2 Viewing distinct store location
SELECT DISTINCT store_location
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`;

---Query 3 select specific columns
SELECT DISTINCT transaction_id,
                product_id,
                store_location
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`
LIMIT 20;

--- Query 4 using a column aslias
SELECT product_category AS Category,
       unit_price AS Price
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`
LIMIT 100;

---Query 5 filtering using WHERE
SELECT * 
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`
WHERE product_category = 'Coffee';

---Query 6 Filtering using WHERE and AND
SELECT *
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`
WHERE product_category= 'coffee beans'
AND unit_price >10;

---Query 7 Finding minimum unit price
SELECT MIN(unit_price) AS Min_Price
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`;

--- Query 8 finding Maximum unit price
SELECT MAX(unit_price) AS MAX_Price
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`;

---Query 9 filtering using WHERE and OR
SELECT *
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`
WHERE product_category = 'coffee'
or product_category = 'tea';

--- Query 10 filtering using WHERE and IN
SELECT*
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`
WHERE product_category IN ('COFFEE','TEA');

---Query 11 sorting results
SELECT product_category,
       unit_price
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`
ORDER BY unit_price DESC;

--- Query 12 Counting total transactions
SELECT COUNT(*)
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`;

---Query 13 calculate total sales
SELECT SUM(transaction_qty*unit_price) AS Total_Sales
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`;

---Query 14 Calculate minimum and maximum unit price
SELECT MIN(unit_price) AS Cheapest_Price,
       MAX(unit_price) AS Most_Expensive_Price
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`;

---Query 15 Total sales per category 
SELECT product_category,
       SUM(transaction_qty*unit_price) AS TOTAL_SALES
FROM `workspace`.`default`.`practical_1_bright_coffee_consultation`
GROUP BY product_category
ORDER BY TOTAL_SALES DESC;
