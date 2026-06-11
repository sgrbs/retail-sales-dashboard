# DATA QUALITY CHECKS

#  Count total number of records in the dataset
SELECT COUNT(*) AS total_records
FROM superstore;

# Count total unique orders
SELECT COUNT(DISTINCT `Order ID`) AS total_orders
FROM superstore;

# Count total unique customers
SELECT COUNT(DISTINCT `Customer ID`) AS total_customers
FROM superstore;

# Check for missing values in Sales column
SELECT *
FROM superstore
WHERE Sales IS NULL;

# Check for missing values in Profit column
SELECT *
FROM superstore
WHERE Profit IS NULL;