CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,      -- Integer for unique identifier
    first_name VARCHAR(50) NOT NULL,                 -- Variable-length string for first name
    last_name VARCHAR(50) NOT NULL,                  -- Variable-length string for last name
    email VARCHAR(100) UNIQUE NOT NULL,              -- Variable-length string for email, unique constraint
    date_of_birth DATE,                              -- Date for birth date
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP   -- Timestamp for record creation time
);

INSERT INTO customers (first_name, last_name, email, date_of_birth)
VALUES ('John', 'Doe', 'john.doe@example.com', '1990-01-01');

select * from customers;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,         -- Integer for unique identifier
    customer_id INT NOT NULL,                        -- Integer for linking to customers table
    order_date DATETIME NOT NULL,                    -- DateTime for order date and time
    order_status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled') DEFAULT 'Pending',  -- ENUM for order status
    total_amount DECIMAL(10, 2) NOT NULL,            -- Decimal for total amount with precision
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) -- Foreign key constraint
);

INSERT INTO orders (customer_id, order_date, order_status, total_amount)
VALUES (1, NOW(), 'Pending', 99.99);

select * from orders;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,       -- Integer for unique identifier
    product_name VARCHAR(100) NOT NULL,              -- Variable-length string for product name
    product_description TEXT,                        -- Text for detailed product description
    price DECIMAL(10, 2) NOT NULL,                   -- Decimal for product price
    stock_quantity INT NOT NULL                      -- Integer for quantity in stock
);

INSERT INTO products (product_name, product_description, price, stock_quantity)
VALUES ('Laptop', 'High-performance laptop', 999.99, 50);

select * from products;

CREATE TABLE user_preferences (
    user_id INT AUTO_INCREMENT PRIMARY KEY,          -- Integer for unique identifier
    username VARCHAR(50) NOT NULL,                   -- Variable-length string for username
    preferences SET('News', 'Sports', 'Movies', 'Music', 'Tech') NOT NULL  -- SET for multiple preferences
);

INSERT INTO user_preferences (username, preferences)
VALUES ('john_doe', 'News,Tech,Movies');

select * from user_preferences;

CREATE TABLE binary_example (
    id INT AUTO_INCREMENT PRIMARY KEY,         -- Integer for unique identifier
    fixed_binary BINARY(16),                   -- Fixed-length binary data
    var_binary VARBINARY(256)                  -- Variable-length binary data
);

INSERT INTO binary_example (fixed_binary, var_binary)
VALUES ('0101010101010101', 'Hello World');

select * from binary_example;

CREATE TABLE blob_example (
    id INT AUTO_INCREMENT PRIMARY KEY,         -- Integer for unique identifier
    tiny_blob TINYBLOB,                        -- Very small binary large object
    normal_blob BLOB,                          -- Small binary large object
    medium_blob MEDIUMBLOB,                    -- Medium binary large object
    long_blob LONGBLOB                         -- Large binary large object
);

INSERT INTO blob_example (medium_blob)
VALUES ('This is a medium size binary data. Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

select * from blob_example;





