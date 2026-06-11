# TIME SERIES ANALYSIS

# Monthly sales trend
SELECT
    YEAR(`Order Date`) AS order_year,
    MONTH(`Order Date`) AS order_month,
    ROUND(SUM(Sales),2) AS monthly_sales
FROM superstore
GROUP BY
    YEAR(`Order Date`),
    MONTH(`Order Date`)
ORDER BY
    order_year,
    order_month;