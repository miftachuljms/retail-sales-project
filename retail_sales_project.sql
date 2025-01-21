-- CREATE TABLE --
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales (
							transactions_id INT PRIMARY KEY,
							sale_date DATE,
							sale_time TIME,
							customer_id INT,
							gender VARCHAR(15),
							age INT,
							category VARCHAR(15),
							quantity INT,
							price_per_unit FLOAT,
							cogs FLOAT,
							total_sale FLOAT
							);

SELECT * FROM retail_sales;
SELECT COUNT(*) FROM retail_sales;


-- DATA CLEANING --
--- 1. Missing Value
SELECT * 
FROM retail_sales
WHERE
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	customer_id IS NULL
	OR
	gender IS NULL
	OR
	age IS NULL
	OR
	category IS NULL
	OR
	quantity IS NULL
	OR
	price_per_unit IS NULL
	OR
	cogs IS NULL
	OR
	total_sale IS NULL;

--- 2. Drop Missing Value
DELETE FROM retail_sales
WHERE
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	customer_id IS NULL
	OR
	gender IS NULL
	OR
	age IS NULL
	OR
	category IS NULL
	OR
	quantity IS NULL
	OR
	price_per_unit IS NULL
	OR
	cogs IS NULL
	OR
	total_sale IS NULL;


-- DATA EXPLORATION --
--- 1. How  many sales we have?
SELECT COUNT(*) total_sales FROM retail_sales;

--- 2. How many unique customers we have?
SELECT COUNT(DISTINCT customer_id) total_cust FROM retail_sales;

--- 3. How many categories we have?
SELECT DISTINCT category FROM retail_sales;


-- DATA ANALYSIS --
--- 1. Write a SQL query to retrieve all columns for sales made on '2022-11-05'.
SELECT * 
FROM retail_sales
WHERE sale_date = '2022-11-05';

--- 2. Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022.
SELECT *
FROM retail_sales
WHERE 
    category = 'Clothing'
    AND 
    TO_CHAR(sale_date, 'YYYY-MM') = '2022-11'
    AND
    quantity >= 4;

--- 3. Write a SQL query to calculate the total sales (total_sale) for each category.
SELECT
	category,
	SUM(total_sale) net_sale,
	COUNT(*) total_orders
FROM retail_sales
GROUP BY 1;

--- 4. Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
SELECT 
	ROUND(AVG(age), 2) avg_age
FROM retail_sales
WHERE category = 'Beauty';

--- 5. Write a SQL query to find all transactions where the total_sale is greater than 1000.
SELECT * 
FROM retail_sales
WHERE total_sale > 1000;

--- 6. Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
SELECT 
	category,
	gender,
	COUNT(transactions_id) total_transactions
FROM retail_sales
GROUP BY 1, 2
ORDER BY 1, 2;

--- 7. Write an SQL query to find the total number of transactions (transaction_id) made by each age category in each product category (Example: Young <=25, Adult between 26 to 45, and Senior >45).
SELECT 
	category,
	CASE
		WHEN age < 25  THEN 'Young'
		WHEN age BETWEEN 25 AND 45 THEN 'Adult'
		ELSE 'Senior'
	END AS age_category,
	COUNT(transactions_id) total_transactions
FROM retail_sales
GROUP BY 1, 2
ORDER BY 1, 2;

--- 8. Write a SQL query to calculate the average sale for each month. Find out the best-selling month in each year.
SELECT 
	year,
	month,
	avg_sale
FROM 
(
	SELECT
		EXTRACT(YEAR FROM sale_date) AS year,
		EXTRACT(MONTH FROM sale_date) AS month,
		AVG(total_sale) avg_sale,
		RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY AVG(total_sale) DESC) AS rank
	FROM retail_sales
	GROUP BY 1, 2
) AS t1
WHERE rank = 1;

--- 9. Write a SQL query to find the top 5 customers based on the highest total sales.
SELECT 
	customer_id,
	SUM(total_sale) total_sales
FROM retail_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

--- 10. Write a SQL query to find the number of unique customers who purchased items from each category.
SELECT 
	COUNT(DISTINCT(customer_id)) cnt_unique_cust,
	category
FROM retail_sales
GROUP BY 2;

--- 11. Write a SQL query to create each shift and the number of orders (Example: Morning <=12, Afternoon Between 12 & 17, Evening >17).
WITH hourly_sale
AS
(
SELECT 
	CASE
		WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
		WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
		ELSE 'Evening'
	END AS shift
FROM retail_sales
)
SELECT
	shift,
	COUNT(*) total_orders
FROM hourly_sale
GROUP BY shift;
