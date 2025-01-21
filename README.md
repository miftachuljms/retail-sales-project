# Retail Sales Analysis SQL Project

## Project Overview

**Project Title**: Retail Sales Analysis  
**Level**: Beginner  
**Database**: `retail_sales_project`

This project is designed to demonstrate SQL skills and techniques typically used by data analysts to explore, clean, and analyze retail sales data. The project involves setting up a retail sales database, performing exploratory data analysis (EDA), and answering specific business questions through SQL queries. This project is ideal for those who are starting their journey in data analysis and want to build a solid foundation in SQL.

## Objectives

1. **Set up a retail sales database**: Create and populate a retail sales database with the provided sales data.
2. **Data Cleaning**: Identify and remove any records with missing or null values.
3. **Exploratory Data Analysis (EDA)**: Perform basic exploratory data analysis to understand the dataset.
4. **Business Analysis**: Use SQL to answer specific business questions and derive insights from the sales data.

## Project Structure

### 1. Database Setup

- **Database Creation**: The project starts by creating a database named `retail_sales_project`.
- **Table Creation**: A table named `retail_sales` is created to store the sales data. The table structure includes columns for transaction ID, sale date, sale time, customer ID, gender, age, product category, quantity sold, price per unit, cost of goods sold (COGS), and total sale amount.

### 2. Data Exploration & Cleaning

- **Record Count**: Determine the total number of records in the dataset.
- **Customer Count**: Find out how many unique customers are in the dataset.
- **Category Count**: Identify all unique product categories in the dataset.
- **Null Value Check**: Check for any null values in the dataset and delete records with missing data.

### 3. Data Analysis & Findings

The following SQL queries were developed to answer specific business questions:

1. **Write a SQL query to retrieve all columns for sales made on '2022-11-05'.**
2. **Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022.**
3. **Write a SQL query to calculate the total sales (total_sale) for each category.**
4. **Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.**
5. **Write a SQL query to find all transactions where the total_sale is greater than 1000.**
6. **Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.**
7. **Write an SQL query to find the total number of transactions (transaction_id) made by each age category in each product category (Example: Young <=25, Adult between 26 to 45, and Senior >45).**
8. **Write a SQL query to calculate the average sale for each month. Find out the best-selling month in each year.**
9. **Write a SQL query to find the top 5 customers based on the highest total sales.**
10. **Write a SQL query to find the number of unique customers who purchased items from each category.**
11. **Write a SQL query to create each shift and the number of orders (Example: Morning <=12, Afternoon Between 12 & 17, Evening >17).**

## Findings

- Several transactions were made with the purchase of the most number of 4 items.
- The highest total sales are in the electronics product category.
- The highest average sales will be in 2022.
- The most purchased product category by different shoppers is clothing.
- The most purchases were made during evening.
- High-Value Transactions: Several transactions had a total sale amount greater than 1000, indicating premium purchases.
- The demographics of customers are at an average age of 40.42 years. 
- Female dominate purchases in the beauty product category, while male dominate purchases in the clothing and electronics product categories.
- Of the three existing product categories, the adult age category dominates purchases in the beauty and clothing product categories, while for electronics it is dominated by senior.

## Suggestion

1. **Evening Promotions**: Offer evening-specific sales or discounts since most purchases happen in the evening.
2. **Target High-Value Buyers**: Create exclusive deals or loyalty programs for customers with high-value transactions.
3. **Promote Electronics**: Focus marketing on electronics since they generate the highest sales. Consider bundle deals.
4. **Expand Clothing Selection**: Since clothing is popular, introduce new styles and seasonal collections.
5. **Gender-Specific Marketing**: Tailor ads for beauty products to females, and for clothing/electronics to males.
6. **Age-Based Marketing**: Target products like senior-friendly electronics to older customers and beauty items to adults.
7. **Leverage 2022 Success**: Identify successful strategies from 2022 and replicate them for the next few years.
8. **Cross-Sell**: Suggest related products from other categories to boost sales (e.g., beauty with electronics or accessories with clothing).

## Author - Miftachul Jannah Meilina Subekti

- **E-mail**: [Send me e-mail](miftachuljms@gmail.com)
- **LinkedIn**: [Connect with me professionally](https://www.linkedin.com/in/miftachuljms)
- **Portfolio Website**: [Visit my website](https://miftachuljms.my.canva.site/portfolio)

Thank you!
