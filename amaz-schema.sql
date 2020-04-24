DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
item_id INT AUTO_INCREMENT NOT NULL,
product_name VARCHAR(100) NOT NULL,
department_name VARCHAR(100),
price DECIMAL(10,2) NOT NULL,
stock_quantity INT, 
PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Trader Josie Hot Sauce', 'Grocery', 6.99, 72);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Marble side table', 'Furniture', 66.99, 12), 
('Bananas', 'Grocery', 0.99, 402);

SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Condensed cream of chicken', 'Grocery', 1.99, 100);

UPDATE products SET stock_quantity = stock_quantity - 1 WHERE item_id = 3;
