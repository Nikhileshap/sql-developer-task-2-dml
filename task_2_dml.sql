CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;

CREATE TABLE Customers (
    customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20) 
);

CREATE TABLE Products (
    product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL
);

CREATE TABLE Orders (
    order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
        ON DELETE CASCADE
);

CREATE TABLE Order_Items (
    order_item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Customers (first_name, last_name, email, phone) 
VALUES ('John', 'Doe', 'john.doe@tech.com', '555-1234');

INSERT INTO Customers (first_name, last_name, email) 
VALUES ('Jane', 'Smith', 'jane.smith@email.com');

INSERT INTO Products (name, description, price, stock_quantity)
VALUES ('Gaming Laptop', 'High performance model.', 1200.00, 15);

INSERT INTO Products (name, description, price, stock_quantity)
VALUES ('Wireless Mouse', 'Ergonomic design.', 25.50, 200);

INSERT INTO Orders (customer_id, order_date, total_amount)
VALUES (1, NOW(), 1225.50);

INSERT INTO Orders (customer_id, order_date, total_amount)
VALUES (2, NOW(), 25.50);

INSERT INTO Order_Items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1200.00),
(1, 2, 1, 25.50),
(2, 2, 1, 25.50);

UPDATE Products
SET price = price * 1.10
WHERE product_id = 2;

DELETE FROM Orders
WHERE order_id = 2;

SELECT '--- Customers (Verify NULL handling) ---' AS Status;
SELECT * FROM Customers;

SELECT '--- Orders (Verify DELETE operation) ---' AS Status;
SELECT * FROM Orders;

SELECT '--- Products (Verify UPDATE operation) ---' AS Status;
SELECT * FROM Products;

SELECT '--- Order Items (Verify CASCADE deletion) ---' AS Status;
SELECT * FROM Order_Items;