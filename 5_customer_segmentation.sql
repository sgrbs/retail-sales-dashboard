# CUSTOMER SEGMENTATION

# Categorize customers based on their total spending
SELECT
    `Customer Name`,
    ROUND(SUM(Sales),2) AS total_sales,

    # Segment customers into High, Medium, and Low Value groups
    CASE
        WHEN SUM(Sales) > 10000 THEN 'High Value'
        WHEN SUM(Sales) BETWEEN 5000 AND 10000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment

FROM superstore
GROUP BY `Customer Name`
ORDER BY total_sales DESC;