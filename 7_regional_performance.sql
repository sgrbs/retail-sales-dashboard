# REGIONAL PERFORMANCE ANALYSIS

# Regional sales
SELECT
    Region,
    ROUND(SUM(Sales),2) AS total_sales
FROM superstore
GROUP BY Region
ORDER BY total_sales DESC;

# Regional profit
SELECT
    Region,
    ROUND(SUM(Profit),2) AS total_profit
FROM superstore
GROUP BY Region
ORDER BY total_profit DESC;

# State profitability
SELECT
    State,
    ROUND(SUM(Profit),2) AS total_profit
FROM superstore
GROUP BY State
ORDER BY total_profit DESC
LIMIT 10;