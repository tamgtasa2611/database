CREATE DATABASE project_1_d01k14;
USE project_1_d01k14;

CREATE TABLE admins (
	id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE customers (
	id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    gender INT,
    address TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE categories (
	id INT AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE producers (
	id INT AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE furnitures (
	id INT AUTO_INCREMENT,
    name VARCHAR(255),
    quantity INT,
    price FLOAT,
    material VARCHAR(255),
    length VARCHAR(100),
    width VARCHAR(100),
    height VARCHAR(100),
    room VARCHAR(255),
    category_id INT,
    producer_id INT,
    image TEXT,
    PRIMARY KEY (id)
);

ALTER TABLE furnitures ADD FOREIGN KEY (category_id) REFERENCES categories(id);
ALTER TABLE furnitures ADD FOREIGN KEY (producer_id) REFERENCES producers(id);

CREATE TABLE orders (
	id INT AUTO_INCREMENT,
    date_buy DATE,
    status INT,
    customer_id INT,
    admin_id INT,
    receiver_name VARCHAR(255),
    receiver_phone VARCHAR(20),
    receiver_address TEXT,
    PRIMARY KEY (id)
);

ALTER TABLE orders ADD FOREIGN KEY (customer_id) REFERENCES customers(id);
ALTER TABLE orders ADD FOREIGN KEY (admin_id) REFERENCES admins(id);

CREATE TABLE order_details (
	order_id INT,
    furniture_id INT,
    price FLOAT,
    quantity INT,
    PRIMARY KEY (order_id, furniture_id)
);

ALTER TABLE order_details ADD FOREIGN KEY (order_id) REFERENCES orders(id);
ALTER TABLE order_details ADD FOREIGN KEY (furniture_id) REFERENCES furnitures(id);
