-- Query 1: Use EXTRACT(MONTH FROM order_date) for month
SELECT 
    EXTRACT(MONTH FROM order_date) AS month
FROM 
    sales_data;

-- Query 2: Group by year/month
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month
FROM 
    sales_data
GROUP BY 
    EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date);

-- Query 3: Use SUM() for revenue
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS revenue
FROM 
    sales_data
GROUP BY 
    EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date);

-- Query 4: COUNT(DISTINCT order_id) for volume
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS revenue,
    COUNT(DISTINCT order_id) AS volume
FROM 
    sales_data
GROUP BY 
    EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date);

-- Query 5: Use ORDER BY for sorting
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS revenue,
    COUNT(DISTINCT order_id) AS volume
FROM 
    sales_data
GROUP BY 
    EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month;

-- Query 6: Limit results for specific time periods
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS revenue,
    COUNT(DISTINCT order_id) AS volume
FROM 
    sales_data
GROUP BY 
    EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month
LIMIT 12;