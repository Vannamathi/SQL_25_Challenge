-- Day 22 
-- CTEs (WITH Clause)
/* CTEs are like writing a mini-story within your 
SQL query—breaking complex tasks into clear, reusable chapters. */
-- Create the sales table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    sale_date DATE
);

-- Insert sample data
INSERT INTO sales (sale_id, customer_id, amount, sale_date) VALUES
(1, 101, 500, '2025-09-01'),
(2, 102, 700, '2025-09-02'),
(3, 101, 300, '2025-09-03'),
(4, 103, 200, '2025-09-04'),
(5, 104, 800, '2025-09-05');

-- Use a CTE to calculate total sales per customer
WITH TotalSales AS (
	SELECT 
		  customer_id,
          SUM(amount) AS Total_amount
	FROM sales
    GROUP BY customer_id
)
SELECT 
	  customer_id,
      total_amount
FROM TotalSales
WHERE total_amount > 500
ORDER BY total_amount DESC;
