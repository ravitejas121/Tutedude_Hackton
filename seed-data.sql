-- Seed data for StreetFood Connect

-- Insert sample categories
INSERT INTO categories (name, description) VALUES
('Vegetables', 'Fresh vegetables and produce'),
('Fruits', 'Fresh fruits and seasonal produce'),
('Grains & Cereals', 'Rice, wheat, and other grains'),
('Spices & Seasonings', 'Spices, herbs, and seasonings'),
('Dairy Products', 'Milk, cheese, yogurt, and dairy items'),
('Oils & Fats', 'Cooking oils and fats'),
('Meat & Po  'Milk, cheese, yogurt, and dairy items'),
('Oils & Fats', 'Cooking oils and fats'),
('Meat & Poultry', 'Fresh meat, chicken, and poultry products'),
('Seafood', 'Fresh fish and seafood'),
('Beverages', 'Drinks, juices, and beverage ingredients'),
('Snacks & Confectionery', 'Snacks, sweets, and confectionery items'),
('Frozen Foods', 'Frozen vegetables, fruits, and prepared foods'),
('Dry Goods', 'Lentils, beans, nuts, and dried items');

-- Insert sample users (vendors)
INSERT INTO users (email, password_hash, first_name, last_name, phone, user_type, is_verified) VALUES
('rajesh.vendor@example.com', '$2b$10$hashedpassword1', 'Rajesh', 'Kumar', '+91-9876543210', 'vendor', true),
('priya.vendor@example.com', '$2b$10$hashedpassword2', 'Priya', 'Sharma', '+91-9876543211', 'vendor', true),
('amit.vendor@example.com', '$2b$10$hashedpassword3', 'Amit', 'Patel', '+91-9876543212', 'vendor', true);

-- Insert sample users (sellers)
INSERT INTO users (email, password_hash, first_name, last_name, phone, user_type, is_verified) VALUES
('fresh.seller@example.com', '$2b$10$hashedpassword4', 'Suresh', 'Gupta', '+91-9876543213', 'seller', true),
('spice.seller@example.com', '$2b$10$hashedpassword5', 'Meera', 'Singh', '+91-9876543214', 'seller', true),
('dairy.seller@example.com', '$2b$10$hashedpassword6', 'Ravi', 'Agarwal', '+91-9876543215', 'seller', true);

-- Insert business profiles for vendors
INSERT INTO business_profiles (user_id, business_name, business_type, business_description, address, city, state, zip_code, rating, total_reviews) VALUES
(1, 'Rajesh Food Cart', 'food-cart', 'Popular street food cart serving delicious Indian snacks and meals', '123 MG Road, Near Metro Station', 'Mumbai', 'Maharashtra', '400001', 4.8, 24),
(2, 'Priya Kitchen Express', 'food-truck', 'Mobile food truck specializing in South Indian cuisine', '456 Brigade Road', 'Bangalore', 'Karnataka', '560001', 4.6, 18),
(3, 'Amit Chaat Corner', 'street-stall', 'Traditional chaat and snack stall with 15 years of experience', '789 Connaught Place', 'Delhi', 'Delhi', '110001', 4.9, 32);

-- Insert business profiles for sellers
INSERT INTO business_profiles (user_id, business_name, business_type, business_description, address, city, state, zip_code, rating, total_reviews) VALUES
(4, 'Fresh Veggie Mart', 'wholesaler', 'Premium quality fresh vegetables and fruits supplier', '321 Wholesale Market, Sector 12', 'Mumbai', 'Maharashtra', '400002', 4.9, 42),
(5, 'Spice Kingdom', 'distributor', 'Authentic spices and seasonings from across India', '654 Spice Bazaar, Old City', 'Hyderabad', 'Telangana', '500001', 4.8, 35),
(6, 'Dairy Fresh Co.', 'distributor', 'Fresh dairy products with daily delivery service', '987 Dairy Lane, Industrial Area', 'Pune', 'Maharashtra', '411001', 4.7, 28);

-- Insert vendor details
INSERT INTO vendor_details (user_id, cuisine_type, operating_hours, specialties) VALUES
(1, 'indian', '9 AM - 9 PM', 'Vada Pav, Pav Bhaji, Dosa, Idli'),
(2, 'indian', '11 AM - 10 PM', 'Masala Dosa, Uttapam, Filter Coffee, Sambar'),
(3, 'indian', '4 PM - 11 PM', 'Bhel Puri, Pani Puri, Aloo Tikki, Chole Bhature');

-- Insert seller details
INSERT INTO seller_details (user_id, product_categories, delivery_radius, minimum_order_value) VALUES
(4, 'Fresh vegetables, Fruits, Leafy greens', 25, 500.00),
(5, 'Spices, Herbs, Seasonings, Masalas', 50, 300.00),
(6, 'Milk, Paneer, Butter, Yogurt, Cheese', 20, 200.00);

-- Insert sample products
INSERT INTO products (seller_id, category_id, name, description, unit, price_per_unit, minimum_order_quantity, stock_quantity, is_available) VALUES
-- Fresh Veggie Mart products
(4, 1, 'Fresh Onions', 'Premium quality red onions, locally sourced', 'kg', 25.00, 5, 500, true),
(4, 1, 'Tomatoes', 'Fresh ripe tomatoes, perfect for cooking', 'kg', 30.00, 3, 300, true),
(4, 1, 'Potatoes', 'High-quality potatoes, ideal for all dishes', 'kg', 20.00, 10, 800, true),
(4, 2, 'Bananas', 'Fresh bananas, perfectly ripe', 'dozen', 40.00, 2, 100, true),

-- Spice Kingdom products
(5, 4, 'Garam Masala', 'Authentic blend of aromatic spices', 'kg', 400.00, 1, 50, true),
(5, 4, 'Turmeric Powder', 'Pure turmeric powder, premium quality', 'kg', 200.00, 1, 80, true),
(5, 4, 'Red Chili Powder', 'Spicy red chili powder, medium heat', 'kg', 300.00, 1, 60, true),
(5, 4, 'Cumin Seeds', 'Whole cumin seeds, aromatic and fresh', 'kg', 350.00, 1, 40, true),

-- Dairy Fresh Co. products
(6, 5, 'Fresh Milk', 'Pure cow milk, delivered daily', 'liter', 45.00, 5, 200, true),
(6, 5, 'Paneer', 'Fresh homemade paneer, soft and creamy', 'kg', 280.00, 1, 30, true),
(6, 5, 'Butter', 'Fresh white butter, unsalted', 'kg', 320.00, 1, 25, true),
(6, 5, 'Yogurt', 'Fresh homemade yogurt, thick and creamy', 'kg', 60.00, 2, 50, true);

-- Insert sample orders
INSERT INTO orders (vendor_id, seller_id, order_number, status, total_amount, delivery_address, delivery_date, notes) VALUES
(1, 4, 'ORD-001', 'delivered', 2450.00, '123 MG Road, Near Metro Station, Mumbai, Maharashtra, 400001', '2024-01-15', 'Please deliver fresh vegetables in the morning'),
(1, 5, 'ORD-002', 'shipped', 1200.00, '123 MG Road, Near Metro Station, Mumbai, Maharashtra, 400001', '2024-01-16', 'Need spices for evening preparation'),
(1, 6, 'ORD-003', 'confirmed', 800.00, '123 MG Road, Near Metro Station, Mumbai, Maharashtra, 400001', '2024-01-17', 'Daily dairy products order'),
(2, 4, 'ORD-004', 'packed', 1800.00, '456 Brigade Road, Bangalore, Karnataka, 560001', '2024-01-16', 'Mixed vegetables for South Indian dishes'),
(3, 5, 'ORD-005', 'delivered', 950.00, '789 Connaught Place, Delhi, Delhi, 110001', '2024-01-14', 'Chaat masala and spices');

-- Insert order items
INSERT INTO order_items (order_id, product_id, quantity, unit_price, total_price) VALUES
-- Order 1 items
(1, 1, 20, 25.00, 500.00),  -- 20kg onions
(1, 2, 15, 30.00, 450.00),  -- 15kg tomatoes
(1, 3, 25, 20.00, 500.00),  -- 25kg potatoes
(1, 4, 25, 40.00, 1000.00), -- 25 dozen bananas

-- Order 2 items
(2, 5, 1, 400.00, 400.00),  -- 1kg garam masala
(2, 6, 2, 200.00, 400.00),  -- 2kg turmeric
(2, 7, 1, 300.00, 300.00),  -- 1kg chili powder
(2, 8, 1, 350.00, 350.00),  -- 1kg cumin seeds

-- Order 3 items
(3, 9, 10, 45.00, 450.00),  -- 10L milk
(3, 10, 1, 280.00, 280.00), -- 1kg paneer
(3, 12, 1, 60.00, 60.00);   -- 1kg yogurt

-- Insert sample reviews
INSERT INTO reviews (reviewer_id, reviewed_id, order_id, rating, comment) VALUES
(1, 4, 1, 5, 'Excellent quality vegetables, always fresh and delivered on time. Highly recommended!'),
(1, 5, 2, 4, 'Good quality spices, authentic taste. Delivery was a bit delayed but overall satisfied.'),
(2, 4, 4, 5, 'Fresh vegetables, perfect for our South Indian dishes. Great service!'),
(3, 5, 5, 5, 'Best spice supplier in the area. Quality is consistent and prices are reasonable.');

-- Insert sample messages
INSERT INTO messages (sender_id, receiver_id, subject, message, is_read) VALUES
(1, 4, 'Regular Order Schedule', 'Hi, I would like to set up a regular weekly order for vegetables. Can we discuss the pricing for bulk orders?', true),
(4, 1, 'Re: Regular Order Schedule', 'Hello Rajesh, I would be happy to discuss bulk pricing. We can offer 10% discount for weekly orders above ₹2000. Let me know your requirements.', false),
(2, 5, 'New Spice Requirements', 'I am looking for some specialty South Indian spices. Do you have sambar powder and rasam powder in stock?', true),
(5, 2, 'Re: New Spice Requirements', 'Yes, we have both sambar powder and rasam powder. I can prepare a custom blend as per your taste requirements.', false);
