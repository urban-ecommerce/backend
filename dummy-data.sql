-- users table
INSERT INTO users (name, surname, email, password, addresss, city, province, cap, country, phone, role)
VALUES
('Alice', 'Rossi', 'alice.rossi@example.com', 'password123', 'Via Roma 10', 'Roma', 'RM', '00100', 'Italia', '+390612345678', 'customer'),
('Marco', 'Verdi', 'marco.verdi@example.com', 'password123', 'Corso Italia 20', 'Milano', 'MI', '20100', 'Italia', '+390255667788', 'staff'),
('Elena', 'Bianchi', 'elena.bianchi@example.com', 'password123', 'Piazza Duomo 5', 'Napoli', 'NA', '80100', 'Italia', '+390812233445', 'admin'),
('Giovanni', 'Neri', 'giovanni.neri@example.com', 'password123', 'Via Milano 15', 'Torino', 'TO', '10100', 'Italia', '+390112233445', 'customer'),
('Sara', 'Galli', 'sara.galli@example.com', 'password123', 'Piazza San Marco 3', 'Venezia', 'VE', '30100', 'Italia', '+390412345678', 'customer'),
('Luca', 'Ricci', 'luca.ricci@example.com', 'password123', 'Corso Firenze 45', 'Genova', 'GE', '16100', 'Italia', '+390102233445', 'staff'),
('Valentina', 'Moretti', 'valentina.moretti@example.com', 'password123', 'Via Garibaldi 22', 'Bologna', 'BO', '40100', 'Italia', '+390512345678', 'customer'),
('Antonio', 'De Luca', 'antonio.deluca@example.com', 'password123', 'Via Dante 14', 'Palermo', 'PA', '90100', 'Italia', '+390912233445', 'customer'),
('Francesca', 'Riva', 'francesca.riva@example.com', 'password123', 'Via Manzoni 7', 'Firenze', 'FI', '50100', 'Italia', '+390552345678', 'customer'),
('Matteo', 'Conti', 'matteo.conti@example.com', 'password123', 'Viale Roma 9', 'Bari', 'BA', '70100', 'Italia', '+390802233445', 'admin');

-- categories table
INSERT INTO categories (name, description, image)
VALUES
('Uomo', 'Abbigliamento e accessori per uomo', 'uomo.jpg'),
('Donna', 'Abbigliamento e accessori per donna', 'donna.jpg'),
('Bambini', 'Abbigliamento per bambini e neonati', 'bambini.jpg'),
('Scarpe', 'Calzature per uomo, donna e bambini', 'scarpe.jpg'),
('Accessori', 'Borse, cappelli e altri accessori', 'accessori.jpg');

-- products table
INSERT INTO products (name, description, price, available_quantity, category_id, image)
VALUES
('Giacca Elegante', 'Giacca elegante in lana per occasioni speciali', 129.99, 30, 1, 'giacca_elegante.jpg'),
('Jeans Slim Fit', 'Jeans aderenti in denim elasticizzato', 49.99, 100, 1, 'jeans_slim_fit.jpg'),
('Vestito Estivo', 'Vestito leggero per le giornate calde', 39.99, 80, 2, 'vestito_estivo.jpg'),
('Felpa con Cappuccio', 'Felpa calda e confortevole con cappuccio', 59.99, 50, 2, 'felpa_cappuccio.jpg'),
('T-shirt Bambino', 'T-shirt in cotone per bambini', 14.99, 150, 3, 'tshirt_bambino.jpg'),
('Sneakers Sportive', 'Scarpe comode per il tempo libero', 79.99, 40, 4, 'sneakers_sportive.jpg'),
('Cappotto Invernale', 'Cappotto caldo per la stagione fredda', 159.99, 20, 1, 'cappotto_invernale.jpg'),
('Occhiali da Sole', 'Occhiali con protezione UV', 29.99, 60, 5, 'occhiali_sole.jpg'),
('Borsa in Pelle', 'Borsa elegante in pelle', 89.99, 30, 5, 'borsa_pelle.jpg'),
('Sandali Estivi', 'Sandali comodi per l’estate', 39.99, 50, 4, 'sandali_estivi.jpg');

-- orders table
INSERT INTO orders (user_id, total, shipping_address, payment_method)
VALUES
(1, 179.98, 'Via Roma 10, Roma, RM, 00100', 'credit_card'),
(2, 49.99, 'Corso Italia 20, Milano, MI, 20100', 'paypal'),
(3, 89.99, 'Piazza Duomo 5, Napoli, NA, 80100', 'wire_transfer'),
(4, 129.99, 'Via Milano 15, Torino, TO, 10100', 'credit_card'),
(5, 199.99, 'Piazza San Marco 3, Venezia, VE, 30100', 'paypal');

-- order_details table
INSERT INTO order_details (order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 129.99),
(1, 3, 1, 39.99),
(2, 2, 1, 49.99),
(3, 4, 2, 59.99),
(4, 5, 3, 14.99),
(5, 6, 1, 79.99),
(5, 7, 1, 159.99),
(4, 8, 1, 29.99),
(3, 9, 1, 89.99),
(2, 10, 2, 39.99);

-- carts table
INSERT INTO carts (user_id, product_id, quantity)
VALUES
(1, 4, 1),
(2, 6, 1),
(3, 5, 2),
(4, 7, 1),
(5, 8, 2),
(6, 9, 1),
(7, 10, 3),
(8, 1, 2),
(9, 2, 1),
(10, 3, 1);