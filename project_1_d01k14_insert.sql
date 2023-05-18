USE project_1_d01k14;

INSERT INTO admins(name, email, password) VALUES 
('Admin 1', 'admin1@gmail.com', 'admin1'),
('Admin 2', 'admin2@gmail.com', 'admin2'),
('Admin 3', 'admin3@gmail.com', 'admin3'),
('Admin 4', 'admin4@gmail.com', 'admin4'),
('Admin 5', 'admin5@gmail.com', 'admin5');
select * from admins;

INSERT INTO customers(name, email, password, phone, gender, address) VALUES
('Kylian Mbappe', 'mp3@gmail.con', '123456', '0987654321', '1', 'Paris, France'),
('Cristiano Ronaldo', 'cr7ta@gmail.con', '123456', '0987654322', '0', 'Sporting, Portugal'),
('Lionel Messi', 'lpepsi@gmail.con', '123456', '0987654323', '1', 'Barcelona, Spain'),
('Karim Benzema', 'bendamde@gmail.con', '123456', '0987654324', '1', 'Real Madrid, Spain'),
('Erling Haaland', 'cogaihaaland@gmail.con', '123456', '0987654325', '0', 'Manchester, England');
select * from customers;

INSERT INTO categories(name) VALUES
('Bàn'),
('Ghế'),
('Giường'),
('Tủ quần áo'),
('Tủ bếp');
select * from categories;

INSERT INTO producers(name) VALUES
('IKEA'),
('Herman Miller'),
('Crate & Barrel'),
('Steelcase'),
('Restoration Hardware');
select * from producers;

INSERT INTO furnitures(name, quantity, price, material, length, width, height, room, category_id, producer_id) VALUES
('Bàn ăn số 1', '100', '3000000', 'Gỗ', '200', '100', '100', 'Kitchen', '1', '4'),
('Bàn làm việc số 1', '100', '4000000', 'Gỗ', '120', '60', '100', 'Living room', '1', '3'),
('Ghế văn phòng số 1', '100', '1000000', 'Da', '', '', '', 'Living room', '2', '1'),
('Ghế nhựa số 1', '100', '200000', 'Nhựa', '', '', '', 'Living room', '3', '2'),
('Giường đơn số 1', '100', '7000000', 'Gỗ', '220', '100', '60', 'Bedroom', '3', '5'),
('Giường tầng số 1', '100', '12000000', 'Gỗ', '220', '100', '200', 'Bedroom', '3', '1'),
('Tủ quần áo trẻ em số 1', '100', '2000000', 'Nhựa', '200', '60', '100', 'Bedroom', '4', '3'),
('Tủ quần áo người lớn số 1', '100', '300000', 'Gỗ', '200', '60', '200', 'Bedroom', '4', '4'),
('Tủ bếp 1 ngăn số 1', '100', '1000000', 'Gỗ', '100', '60', '100', 'Kitchen', '5', '2'),
('Tủ bếp 2 ngăn số 1', '100', '2000000', 'Gỗ', '200', '60', '100', 'Kitchen', '5', '5');
SELECT * from furnitures;

INSERT INTO orders(date_buy, status, customer_id, admin_id) VALUES
('2023-05-18', '1', '5', '2'),
('2023-05-17', '1', '2', '3'),
('2023-05-16', '1', '4', '5'),
('2023-05-15', '1', '1', '4'),
('2023-05-14', '1', '3', '1');
SELECT * FROM orders;

INSERT INTO order_details(order_id, furniture_id, price, quantity) VALUES
('1', '7', '2000000', '1'),
('2', '2', '4000000', '2'),
('3', '3', '1000000', '2'),
('4', '8', '3000000', '1'),
('5', '4', '200000', '4');
SELECT * FROM order_details;



