# CUSTOMER INTELLIGENCE ANALYSIS

# Rank customers based on total sales using a window function
SELECT
    `Customer Name`,
    ROUND(SUM(Sales),2) AS total_sales,

    -- Assign ranking based on highest sales
    RANK() OVER (
        ORDER BY SUM(Sales) DESC
    ) AS customer_rank

FROM superstore
GROUP BY `Customer Name`;

# Identify the most profitable customers
SELECT
    `Customer Name`,
    ROUND(SUM(Profit),2) AS total_profit
FROM superstore
GROUP BY `Customer Name`
ORDER BY total_profit DESC
LIMIT 10;