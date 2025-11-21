/* DML - Data definition language its means consist of commands used to define and manage data schema and structrue. common DDL commands includes
CREATE, ALTER and DELETE. */

use classtest;

CREATE TABLE items (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    category VARCHAR(100),
    price DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0
);


CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE,
    phone VARCHAR(20),
    city VARCHAR(100)
);


CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    items_id INT,
    quantity INT NOT NULL,
    order_date DATE,
    
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (items_id) REFERENCES items(id)
);


select*from  items;

select*from  customers;
select*from  orders;

INSERT INTO items (name, category, price, stock)
VALUES 
('Wireless Mouse', 'Electronics', 499.00, 50),
('Bluetooth Speaker', 'Electronics', 1299.00, 30),
('Office Chair', 'Furniture', 5499.00, 15),
('Water Bottle', 'Kitchen', 199.00, 100),
('Notebook Diary', 'Stationery', 89.00, 200);

INSERT INTO customers (full_name, email, phone, city)
VALUES
('Arun Kumar', 'aru@example.com', '9876543210', 'Chennai'),
('Priya R', 'prya@example.com', '9123456780', 'Coimbatore'),
('Suresh Babu', 'suresh@example.com', '9090909090', 'Madurai'),
('Lakshmi Devi', 'lakshmi@example.com', '9988776655', 'Salem'),
('Vijay Raj', 'vijay@example.com', '9000012345', 'Trichy');



INSERT INTO orders (customer_id, product_id, quantity, order_date)
VALUES
(1, 2, 1, '2025-01-10'),
(3, 1, 2, '2025-01-11'),
(2, 5, 5, '2025-01-12'),
(4, 3, 1, '2025-01-12'),
(5, 4, 3, '2025-01-13');


select*from  items;

select*from  customers;
select*from  orders;


