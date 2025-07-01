SELECT 
    EXTRACT(YEAR FROM InvoiceDate) AS year,
    EXTRACT(MONTH FROM InvoiceDate) AS month,
    SUM(Quantity) AS total_quantity_sold,
    COUNT(DISTINCT InvoiceNo) AS order_volume,
    SUM(Quantity * UnitPrice) AS total_revenue
FROM online_sales_dataset
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;
DESCRIBE online_sales_dataset;
