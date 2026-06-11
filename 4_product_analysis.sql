# PRODUCT ANALYSIS

# Top 10 products by sales
SELECT
    `Product Name`,
    ROUND(SUM(Sales),2) AS total_sales
FROM superstore
GROUP BY `Product Name`
ORDER BY total_sales DESC
LIMIT 10;

# Top 10 products by profit
SELECT
    `Product Name`,
    ROUND(SUM(Profit),2) AS total_profit
FROM superstore
GROUP BY `Product Name`
ORDER BY total_profit DESC
LIMIT 10;

# Least profitable products
SELECT
    `Product Name`,
    ROUND(SUM(Profit),2) AS total_profit
FROM superstore
GROUP BY `Product Name`
ORDER BY total_profit ASC
LIMIT 10;