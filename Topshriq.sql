DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS shops;

CREATE TABLE shops (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(100)
);

CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    price INT,
    shop_id INT,
    FOREIGN KEY (shop_id) REFERENCES shops(id)
);

INSERT INTO shops (id, name, address)VALUES
(1, 'Havas', 'Chilonzor'),
(2, 'Carrefour', 'Sergeli'),
(3, 'Texnomart', 'Yakkasaroy');

INSERT INTO products (id, name, price, shop_id)VALUES
(1, 'Guruch', 18000, 1),
(2, 'Yog''', 25000, 1),
(3, 'Shakar', 14000, 1),
(4, 'Sabzi', 6000, 2),
(5, 'Piyoz', 4500, 2),
(6, 'Kartoshka', 7000, 2),
(7, 'Noutbuk', 6500000, 3),
(8, 'Sichqoncha', 120000, 3),
(9, 'Klaviatura', 250000, 3);

SELECT * FROM shops;
SELECT * FROM products;
SELECT * FROM products WHERE shop_id = 1;

UPDATE products SET price = 4500 WHERE id = 1;
UPDATE products SET shop_id = 1 WHERE id = 6;
UPDATE shops SET name = 'Havas', address = 'Chilonzor' WHERE id = 1;

SELECT * FROM shops;
SELECT * FROM products;