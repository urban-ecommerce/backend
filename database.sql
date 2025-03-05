CREATE DATABASE IF NOT EXISTS clothes_db;
USE clothes_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    addresss VARCHAR(255),
    city VARCHAR(100),
    province VARCHAR(100),
    cap VARCHAR(5),
    country VARCHAR(100),
    phone VARCHAR(13),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    role ENUM('admin', 'staff', 'customer') DEFAULT 'customer'
);

CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    image VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    available_quantity INT NOT NULL,
    category_id INT,
    image VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    state ENUM('pending', 'shipped', 'delivered', 'canceled') DEFAULT 'pending',
    total DECIMAL(10, 2) NOT NULL,
    shipping_address VARCHAR(255) NOT NULL,
    payment_method ENUM('credit_card', 'paypal', 'wire_transfer') NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS order_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS carts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
    UNIQUE (user_id, product_id)
);


-- DATABASE DATA

/* INSERT INTO categories (name, description) VALUES
('Uomo', 'Abbigliamento per uomo'),
('Donna', 'Abbigliamento per donna'),
('Bambini', 'Abbigliamento per bambini');

INSERT INTO products (name, description, price, quantity, category_id) VALUES
('Maglietta Uomo', 'Maglietta in cotone per uomo', 19.99, 100, 1),
('Jeans Donna', 'Jeans skinny per donna', 49.99, 80, 2),
('Felpa Bambini', 'Felpa con cappuccio per bambini', 29.99, 50, */