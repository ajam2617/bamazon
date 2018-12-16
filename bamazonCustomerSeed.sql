DROP DATABASE IF EXISTS bamazonDB;

CREATE DATABASE bamazonDB;

USE  bamazonDB;

CREATE TABLE products (
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(50),
    department_name VARCHAR(50),
    price DECIMAL(4,2),
    stock_quantity INT NOT NULL,
    PRIMARY KEY (item_id)
);

INSERT INTO products(product_name, department_name, price,stock_quantity)
VALUES ("Giant Inflatable Pool Floatie", "Toys", 25.99, 22);

INSERT INTO products(product_name, department_name, price,stock_quantity)
VALUES ("Apple Slicer", "Home", 7.99, 12);

INSERT INTO products(product_name, department_name, price,stock_quantity)
VALUES ("Succulent Christmas Tree", "Garden", 8.99, 4);

INSERT INTO products(product_name, department_name, price,stock_quantity)
VALUES ("Dog Sweater", "Pets", 23.99, 12);

INSERT INTO products(product_name, department_name, price,stock_quantity)
VALUES ("Claw Caps for Cats", "Pets", 10.58, 6);

INSERT INTO products(product_name, department_name, price,stock_quantity)
VALUES ("Yoga Cat Calendar", "Home", 11.53, 2);

INSERT INTO products(product_name, department_name, price,stock_quantity)
VALUES ("White Board", "Office", 25.30, 8);

INSERT INTO products(product_name, department_name, price,stock_quantity)
VALUES ("Sounds Machine", "Toys", 11.99, 8);

INSERT INTO products(product_name, department_name, price,stock_quantity)
VALUES ("Unicorn Snot", "Cosmetics", 12.99, 4);

INSERT INTO products(product_name, department_name, price,stock_quantity)
VALUES ("Inflatable T-Rex Costume", "Costumes", 48.83, 4);

