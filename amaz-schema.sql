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
VALUES ('Apples', 'Grocery', 0.99, 172);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Marble side table', 'Furniture', 66.99, 12), 
('Bananas', 'Grocery', 0.99, 402);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Condensed cream of chicken', 'Grocery', 1.99, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Craft Paper', 'Office', 9.99, 800), 
('Dalai Lama Bust', 'Home Goods', 399.99, 7), 
('Eraser', 'Office', 1.99, 1287), 
('Frame (8x10 inches)', 'Home Goods', 0.99, 402);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Goat cheese', 'Grocery', 6.99, 102), 
('Halo Bolt Portable Charger', 'Electronics', 129.99, 73), 
('Igloo', 'Outdoor', 1200.99, 4), 
('Jacquard Gold and Blue Blazer', 'Clothing', 69.99, 26),
('Know My Name', 'Books', 18.67, 126),
('Lavender Essential Oil', 'Home Goods', 15.62, 84),
('Mother of Dragons Stemless Wine Glass', 'Kitchen', 16.98, 327),
('No Show Socks (pack of 6)', 'Clothing', 14.99, 126),
('Opti-Free Contact Solution', 'Health', 12.67, 89),
('Pet Poop Bags', 'Household', 11.99, 1267);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Queen Sheets', 'Home Goods', 66.99, 102), 
('Pulse Oximeter', 'Health', 59.95, 13), 
('Record Player', 'Electronics', 159.99, 44), 
('Spray Bottle (Amber Glass)', 'Household', 23.99, 126),
('Thunderbolt to HDMI Adapter', 'Electronics', 39.99, 561),
('Lavender Essential Oil', 'Home Goods', 15.62, 84),
('Underarm Deoderant (no aluminum)', 'Health', 6.94, 270),
('Vitruvi Diffuser', 'Home Goods', 120.99, 62),
('Wireless Mouse', 'Electronics', 79.99, 89),
('Xbox One Wireless Controller', 'Electronics', 99.99, 167),
('Zero Gravity Lounge Chair', 'Furniture', 89.95, 33);

SELECT * FROM products;
