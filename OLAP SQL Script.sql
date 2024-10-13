-- Dimension table for customers
CREATE DATABASE junebatch;
CREATE TABLE dim_customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

-- Dimension table for products
CREATE TABLE dim_products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);

-- Fact table for sales
CREATE TABLE fact_sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    sale_date DATE,
    quantity INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES dim_customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES dim_products(product_id)
);


-- Insert data into dimension tables
INSERT INTO dim_customers (customer_id, first_name, last_name, email)
VALUES (1, 'Raj', 'Kanth', 'kanth@bepec.com');

INSERT INTO dim_products (product_id, product_name, price)
VALUES (1, 'Laptop', 999.99);

-- Insert data into fact table
INSERT INTO fact_sales (customer_id, product_id, sale_date, quantity, total_amount)
VALUES (1, 1, '2024-06-01', 2, 1999.98);


SELECT
    p.product_name,
    SUM(f.quantity) AS total_quantity,
    SUM(f.total_amount) AS total_sales
FROM
    fact_sales f
JOIN
    dim_products p ON f.product_id = p.product_id
GROUP BY
    p.product_name;
