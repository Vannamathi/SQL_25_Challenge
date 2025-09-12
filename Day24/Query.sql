-- DAY 24 – Real-world Problem Solving 
-- Problem Statement: Find the top 3 products with the highest total sales in 2024.

-- Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

-- Create orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert products
INSERT INTO products (product_id, product_name) VALUES
(1, 'Laptop'),
(2, 'Smartphone'),
(3, 'Headphones'),
(4, 'Monitor'),
(5, 'Keyboard');

-- Insert orders
INSERT INTO orders (order_id, product_id, quantity, price, order_date) VALUES
(101, 1, 2, 800.00, '2024-01-10'),
(102, 2, 5, 300.00, '2024-02-15'),
(103, 3, 10, 50.00, '2024-03-20'),
(104, 1, 1, 800.00, '2024-04-25'),
(105, 4, 3, 200.00, '2024-05-05'),
(106, 2, 2, 300.00, '2024-06-12'),
(107, 5, 7, 40.00, '2024-07-19'),
(108, 3, 5, 50.00, '2024-08-22'),
(109, 1, 3, 800.00, '2024-09-30'),
(110, 2, 4, 300.00, '2024-10-10');

-- QUERY

 SELECT 
		p.product_name,
        SUM(o.quantity * o.price) AS total_sales
        FROM orders o
        JOIN products p ON o.product_id = p.product_id
        WHERE YEAR(o.order_date) = 2024
        GROUP BY p.product_name
        ORDER BY total_sales DESC
        LIMIT 3;
        
        
