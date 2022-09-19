-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;
USE ecommerce_db;
CREATE TABLE Category (
id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
category_name VARCHAR (30) NOT NULL
);

CREATE TABLE Product (
id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
product_name VARCHAR (100) NOT NULL,
price DECIMAL(8,2) NOT NULL,
stock INTEGER NOT NULL DEFAULT '10',
category_id INTEGER,
CONSTRAINT fk_category FOREIGN KEY (category_id)REFERENCES category(id) ON DELETE SET NULL
);

CREATE TABLE Tag (
id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
tag_name VARCHAR (30)
);

CREATE TABLE ProductTag (
id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
product_id INTEGER,
tag_id INTEGER,
CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE,    
CONSTRAINT fk_tag FOREIGN KEY (tag_id) REFERENCES tag(id) ON DELETE SET NULL
);
