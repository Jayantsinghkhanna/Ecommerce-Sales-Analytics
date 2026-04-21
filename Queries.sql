SELECT SUM(revenue) AS total_revenue
FROM ecom;

SELECT COUNT(*) AS total_orders
FROM ecom;

SELECT AVG(revenue) AS Avg_order_value
FROM ecom;

# Revenue by Category
SELECT category,
       ROUND(SUM(revenue), 2) AS total_revenue
FROM ecom
GROUP BY category
ORDER BY total_revenue DESC; 

# Monthly Revenue Trend (TIME ANALYSIS)
SELECT month,
       SUM(revenue) AS total_revenue
FROM ecom
GROUP BY month
ORDER BY month;

#Payment Method Analysis
SELECT payment_method,
       COUNT(*) AS transactions,
       ROUND(SUM(revenue), 2) AS total_revenue
FROM ecom
GROUP BY payment_method
ORDER BY total_revenue DESC;

#Top Customers (High Value Users)
SELECT user_id,
       SUM(revenue) AS total_spent
FROM ecom
GROUP BY user_id
ORDER BY total_spent DESC
LIMIT 10;

#Discount Impact Analysis
SELECT discount_,
       AVG(revenue) AS avg_revenue
FROM ecom
GROUP BY discount_
ORDER BY discount_;

#Category-wise Discount Strategy
SELECT category,
       AVG(discount_) AS avg_discount,
       SUM(revenue) AS total_revenue
FROM ecom
GROUP BY category
ORDER BY total_revenue DESC;