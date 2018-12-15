DROP DATABASE IF EXISTS bamazonDB;

CREATE DATABASE bamazonDB;

USE  bamazonDB;

CREATE TABLE products (
    item_id INT NOT NULL,
    product_name VARCHAR(50),
    department_name VARCHAR(50),
    price DECIMAL(4,2),
    stock_quantity INT NOT NULL,
    PRIMARY KEY (product_name)
);

INSERT INTO products(item_id, product_name, department_name, price,stock_quantity)
VALUES (629, "Giant Inflatable Pool Floatie", "Toys", 25.99, 22);

INSERT INTO products(item_id, product_name, department_name, price,stock_quantity)
VALUES (878, "Apple Slicer", "Home", 7.99, 12);

INSERT INTO products(item_id, product_name, department_name, price,stock_quantity)
VALUES (1200, "Succulent Christmas Tree", "Garden", 8.99, 4);

INSERT INTO products(item_id, product_name, department_name, price,stock_quantity)
VALUES (503, "Dog Sweater", "Pets", 23.99, 12);

INSERT INTO products(item_id, product_name, department_name, price,stock_quantity)
VALUES (515, "Claw Caps for Cats", "Pets", 10.58, 6);

INSERT INTO products(item_id, product_name, department_name, price,stock_quantity)
VALUES (900, "Yoga Cat Calendar", "Home", 11.53, 2);

INSERT INTO products(item_id, product_name, department_name, price,stock_quantity)
VALUES (1020, "White Board", "Office", 25.30, 8);

INSERT INTO products(item_id, product_name, department_name, price,stock_quantity)
VALUES (725, "Sounds Machine", "Toys", 11.99, 8);

INSERT INTO products(item_id, product_name, department_name, price,stock_quantity)
VALUES (223, "Unicorn Snot", "Cosmetics", 12.99, 4);

INSERT INTO products(item_id, product_name, department_name, price,stock_quantity)
VALUES (151, "Inflatable T-Rex Costume", "Costumes", 48.83, 4);

