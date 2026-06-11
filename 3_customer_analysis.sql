# CUSTOMER ANALYSIS

# Identify top 10 customers based on total sales
SELECT
    `Customer Name`,
    ROUND(SUM(Sales),2) AS total_sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY total_sales DESC
LIMIT 10;

# Analyze sales and profit by customer segment
SELECT
    Segment,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit
FROM superstore
GROUP BY Segment
ORDER BY total_sales DESC;

# Identify top 10 states by sales performance
SELECT
    State,
    ROUND(SUM(Sales),2) AS total_sales
FROM superstore
GROUP BY State
ORDER BY total_sales DESC
LIMIT 10;