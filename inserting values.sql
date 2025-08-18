-- Inserting values

insert into Customers (name, email, phone, password, address, profile_picture, date_joined, is_verified, last_login) values
('Rahul Sharma', 'rahul@gmail.com', '9362847393', 'pass1', 'Delhi, India', 'img/user1.jpg', '2025-08-01', true, '2025-08-17 09:00:00'),
('Priya Patil', 'priya@gmail.com', '8352947218', 'pass2', 'Mumbai, India', 'img/user2.jpg', '2025-08-02', true, null),
('John Smith', 'john@example.com', '9034567890', 'pass3', 'London, UK', 'img/user3.jpg', '2025-08-03', FALSE, '2025-08-10 16:00:00'),
('Emily Clark', 'emily@example.com', '9134567821', 'pass4', 'New York, USA', 'img/user4.jpg', '2025-08-04', TRUE, '2025-08-17 08:30:00'),
('Gatha Gupta', 'amit@example.com', '9334567890', 'pass5', 'Kolkata, India', 'img/user5.jpg', '2025-08-05', FALSE, NULL),
('Sara Lee', 'sara@example.com', '9934567891', 'pass6', 'Sydney, Australia', 'img/user6.jpg', '2025-08-06', TRUE, '2025-08-01 14:15:00'),
('Michael Tan', 'michael@example.com', '9234567899', 'pass7', 'Singapore', 'img/user7.jpg', '2025-08-07', FALSE, NULL),
('David Chan', 'david@example.com', '9134567899', 'pass8', 'Hong Kong', 'img/user8.jpg', '2025-08-08', TRUE, '2025-08-15 13:00:00'),
('Alex Kim', 'alex@example.com', '9234567877', 'pass9', 'Seoul, Korea', 'img/user9.jpg', '2025-08-09', TRUE, NULL),
('Fatima Noor', 'fatima@example.com', '9334567898', 'pass10', 'Dubai, UAE', 'img/user10.jpg', '2025-08-10', FALSE, NULL);


INSERT INTO Destinations (name, country, description, image_url) VALUES
('Agra', 'India', 'Home of the Taj Mahal', 'img/agra.jpg'),
('Paris', 'France', 'City of lights and love', 'img/paris.jpg'),
('Kyoto', 'Japan', 'Famous for temples and cherry blossoms', 'img/kyoto.jpg'),
('Sydney', 'Australia', 'Vibrant city and beaches', 'img/sydney.jpg'),
('Santorini', 'Greece', 'Beautiful island, white houses, blue domes', 'img/santorini.jpg'),
('Cape Town', 'South Africa', 'Scenic coast and mountain', 'img/capetown.jpg'),
('Rome', 'Italy', 'Ancient city, history and food', 'img/rome.jpg'),
('Rio de Janeiro', 'Brazil', 'Beaches, Carnival and Christ statue', 'img/rio.jpg'),
('New York', 'USA', 'Skyscrapers and city life', 'img/ny.jpg'),
('Dubai', 'UAE', 'Luxury shopping and skyscrapers', 'img/dubai.jpg');


INSERT INTO TourPackages (title, description, price, duration, destination_id, start_date, end_date, max_persons, images, package_type, is_featured) VALUES
('Taj Mahal Sunrise', 'Sunrise view at the Taj Mahal and old Agra fort', 15000, 2, 1, '2025-09-01', '2025-09-03', 20, 'img/taj1.jpg,img/taj2.jpg', 'Historical', TRUE),
('Romantic Paris', 'Couples special: Eiffel Tower, Louvre, cruise', 55000, 5, 2, '2025-09-05', '2025-09-10', 15, 'img/paris1.jpg,img/paris2.jpg', 'Romantic', TRUE),
('Kyoto Temples', 'Zen gardens and world-famous shrines', 40000, 4, 3, '2025-09-12', '2025-09-16', 12, 'img/kyoto1.jpg,img/kyoto2.jpg', 'Cultural', FALSE),
('Sydney Adventure', 'City, beaches and wildlife encounters', 70000, 6, 4, '2025-09-18', '2025-09-24', 25, 'img/sydney1.jpg,img/sydney2.jpg', 'Adventure', TRUE),
('Santorini Islands', 'Escape to Greek paradise with cruises', 75000, 6, 5, '2025-09-26', '2025-10-02', 20, 'img/santorini1.jpg,img/santorini2.jpg', 'Romantic', FALSE),
('Cape Town Safari', 'Wildlife safari and coastline experience', 60000, 5, 6, '2025-10-04', '2025-10-09', 18, 'img/safari1.jpg,img/cape1.jpg', 'Wildlife', TRUE),
('Rome Experience', 'Ruins, museums and Italian cuisine', 50000, 4, 7, '2025-10-11', '2025-10-15', 20, 'img/rome1.jpg,img/rome2.jpg', 'Historical', FALSE),
('Rio Carnival', 'Enjoy the world’s largest party!', 85000, 7, 8, '2025-10-17', '2025-10-24', 30, 'img/rio1.jpg,img/rio2.jpg', 'Festival', TRUE),
('NYC Discover', 'Broadway, museums, city landmarks', 65000, 6, 9, '2025-10-26', '2025-11-01', 22, 'img/nyc1.jpg,img/nyc2.jpg', 'Urban', FALSE),
('Dubai Luxury', 'Shopping, desert safaris, and skyscraper tours', 80000, 5, 10, '2025-11-03', '2025-11-08', 28, 'img/dubai1.jpg,img/dubai2.jpg', 'Luxury', TRUE);


INSERT INTO Discounts (discount_id,code, description, percentage, valid_from, valid_to) VALUES
(1, 'FESTIVE10', '10% off for festival season', 10, '2025-08-01', '2025-09-30'),
(2, 'EARLYBIRD', '5% discount for early booking', 5, '2025-07-01', '2025-08-31'),
(3, 'COUPLES', 'Special for couples, 7% off', 7, '2025-09-01', '2025-09-30'),
(4, 'LONGSTAY', '12% off for trips over 7 days', 12, '2025-08-15', '2025-10-15'),
(5, 'WINTERFUN', '6% off winter bookings', 6, '2025-10-01', '2025-12-31'),
(6, 'FLASHSALE', 'Special 8% off on flash bookings', 8, '2025-08-20', '2025-09-10'),
(7, 'LOCALSAVER', 'Local travelers get 6% off', 6, '2025-09-01', '2025-09-30'),
(8, 'GROUP10', 'Groups of 4+ get 10% off', 10, '2025-08-01', '2025-09-30'),
(9, 'LOYAL5', 'Repeat customers save 5%', 5, '2025-09-01', '2025-09-30'),
(10, 'WELCOME7', 'First-time booking gets 7% off', 7, '2025-08-01', '2025-09-30');



INSERT INTO Bookings (booking_id, customer_id, package_id, booking_date, num_persons, status, special_requests, booking_source, cancelled_date, booking_reference, discount_id) VALUES
(1, 1, 1, '2025-08-10', 2, 'Confirmed', 'Vegetarian meals', 'Web', NULL, 'REFB001', 1),
(2, 2, 2, '2025-08-11', 1, 'Confirmed', NULL, 'Mobile App', NULL, 'REFB002', 2),
(3, 3, 3, '2025-08-12', 2, 'Pending', 'Near window seat', 'Agent', NULL, 'REFB003', NULL),
(4, 4, 4, '2025-08-13', 3, 'Confirmed', NULL, 'Web', NULL, 'REFB004', 3),
(5, 5, 5, '2025-08-14', 2, 'Cancelled', 'Airport pickup', 'Web', '2025-08-15', 'REFB005', NULL),
(6, 6, 6, '2025-08-15', 1, 'Confirmed', NULL, 'Agent', NULL, 'REFB006', 4),
(7, 7, 7, '2025-08-16', 1, 'Pending', 'Child seat needed', 'Web', NULL, 'REFB007', NULL),
(8, 8, 8, '2025-08-17', 4, 'Confirmed', NULL, 'Mobile App', NULL, 'REFB008', 2),
(9, 9, 9, '2025-08-18', 2, 'Confirmed', 'Late check-in', 'Agent', NULL, 'REFB009', NULL),
(10, 10,10, '2025-08-19', 2, 'Pending', NULL, 'Web', NULL, 'REFB010', 1);



INSERT INTO Payments (booking_id, amount, payment_date, payment_method, payment_status, transaction_id, currency) VALUES
(1, 15000, '2025-08-10', 'Credit Card', 'Completed', 'TXN1001', 'INR'),
(2, 55000, '2025-08-11', 'PayPal', 'Completed', 'TXN1002', 'EUR'),
(3, 40000, '2025-08-12', 'Debit Card', 'Pending', 'TXN1003', 'JPY'),
(4, 70000, '2025-08-13', 'Credit Card', 'Completed', 'TXN1004', 'AUD'),
(5, 75000, '2025-08-14', 'Bank Transfer', 'Refunded', 'TXN1005', 'EUR'),
(6, 60000, '2025-08-15', 'Credit Card', 'Completed', 'TXN1006', 'ZAR'),
(7, 50000, '2025-08-16', 'PayPal', 'Completed', 'TXN1007', 'EUR'),
(8, 85000, '2025-08-17', 'Debit Card', 'Completed', 'TXN1008', 'BRL'),
(9, 65000, '2025-08-18', 'Credit Card', 'Completed', 'TXN1009', 'USD'),
(10,80000, '2025-08-19', 'Credit Card', 'Pending', 'TXN1010', 'AED');



INSERT INTO Reviews (customer_id, package_id, rating, comment, review_date, is_approved, reply) VALUES
(1, 1, 5, 'Amazing sunrise, the trip was well organized.', '2025-09-03', TRUE, 'Thank you for your feedback!'),
(2, 2, 4, 'Romantic Paris trip was worth it.', '2025-09-10', TRUE, NULL),
(3, 3, 5, 'Kyoto temples experience was spiritual.', '2025-09-16', TRUE, NULL),
(4, 4, 3, 'Enjoyed the city, but beach was crowded.', '2025-09-24', FALSE, NULL),
(5, 5, 4, 'Santorini cruise was beautiful.', '2025-10-02', TRUE, 'Glad you enjoyed!'),
(6, 6, 5, 'Safari was awesome, guides helped a lot.', '2025-10-09', TRUE, NULL),
(7, 7, 4, 'Rome food and sights were fantastic.', '2025-10-15', TRUE, 'Thank you!'),
(8, 8, 5, 'Carnival was a once in a lifetime event!', '2025-10-24', TRUE, NULL),
(9, 9, 3, 'NYC trip was nice but a bit rushed.', '2025-11-01', FALSE, NULL),
(10,10, 5, 'Dubai shopping and safari - loved it!', '2025-11-08', TRUE, 'Hope to serve you again!');



INSERT INTO Guides (name, phone, email, language, experience_years, rating, bio, profile_picture) VALUES
('Rajiv Kumar', '9812345678', 'rajiv.guide@example.com', 'Hindi', 8, 4.8, 'Expert in North Indian tours', 'img/guide1.jpg'),
('Marie Lambert', '3312345678', 'marie.guide@example.com', 'French', 10, 4.6, 'Paris specialist and art historian', 'img/guide2.jpg'),
('Takashi Aoki', '819012345678', 'takashi.guide@example.com', 'Japanese', 12, 4.9, 'Zen gardens and shrines expert', 'img/guide3.jpg'),
('Lisa Brown', '612345678', 'lisa.guide@example.com', 'English', 6, 4.7, 'Australian wildlife and city tours', 'img/guide4.jpg'),
('Dimitrios Hatzis', '3023456789', 'dimitrios.guide@example.com', 'Greek', 9, 4.5, 'Aegean cultural tours', 'img/guide5.jpg'),
('Nandi Maseko', '2723456789', 'nandi.guide@example.com', 'English', 7, 4.7, 'Cape Town nature specialist', 'img/guide6.jpg'),
('Gianluca Rossi', '390234567890', 'gianluca.guide@example.com', 'Italian', 11, 4.8, 'Rome historical walks', 'img/guide7.jpg'),
('Carlos Mendes', '552123456789', 'carlos.guide@example.com', 'Portuguese', 5, 4.4, 'Carnival and beach tours', 'img/guide8.jpg'),
('Angela Chen', '12123456789', 'angela.guide@example.com', 'Mandarin', 8, 4.3, 'Asia-Pacific experience', 'img/guide9.jpg'),
('Omar Al-Farsi', '97123456789', 'omar.guide@example.com', 'Arabic', 10, 4.6, 'Dubai and Middle East tours', 'img/guide10.jpg');



INSERT INTO PackageGuides (package_id, guide_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10,10);




INSERT INTO Activities (package_id, name, activity_date, start_time, end_time, location, description) VALUES
(1, 'Taj Mahal Visit', '2025-09-02', '2025-09-02 06:00', '2025-09-02 09:00', 'Agra', 'Guided sunrise tour'),
(2, 'Eiffel Tower Tour', '2025-09-06', '2025-09-06 14:00', '2025-09-06 18:00', 'Paris', 'Evening city lights'),
(3, 'Temple Walk', '2025-09-14', '2025-09-14 09:00', '2025-09-14 12:00', 'Kyoto', 'Fushimi Inari Shrine'),
(4, 'Bondi Beach', '2025-09-20', '2025-09-20 10:00', '2025-09-20 14:00', 'Sydney', 'Beach relax and swim'),
(5, 'Santorini Cruise', '2025-09-28', '2025-09-28 17:00', '2025-09-28 21:00', 'Santorini', 'Sunset cruise'),
(6, 'Safari', '2025-10-06', '2025-10-06 07:00', '2025-10-06 13:00', 'Cape Town', 'Wildlife safari'),
(7, 'Colosseum Tour', '2025-10-13', '2025-10-13 09:00', '2025-10-13 12:00', 'Rome', 'History walk'),
(8, 'Samba Night', '2025-10-19', '2025-10-19 20:00', '2025-10-19 23:00', 'Rio', 'Samba dance experience'),
(9, 'Broadway Show', '2025-10-28', '2025-10-28 19:00', '2025-10-28 22:00', 'New York', 'Evening musical'),
(10,'Desert Safari', '2025-11-05', '2025-11-05 15:00', '2025-11-05 20:00', 'Dubai', 'Jeep ride and dinner');



INSERT INTO Admins (username, password, role, email, last_login) VALUES
('admin1', 'adminpass1', 'SuperAdmin', 'admin1@site.com', '2025-08-16 22:00'),
('admin2', 'adminpass2', 'Manager', 'admin2@site.com', '2025-08-16 10:00'),
('admin3', 'adminpass3', 'Support', 'admin3@site.com', NULL),
('admin4', 'adminpass4', 'Finance', 'admin4@site.com', '2025-08-15 17:00'),
('admin5', 'adminpass5', 'IT', 'admin5@site.com', '2025-08-10 09:30'),
('admin6', 'adminpass6', 'Marketing', 'admin6@site.com', '2025-08-12 14:45'),
('admin7', 'adminpass7', 'TravelOps', 'admin7@site.com', '2025-08-13 12:10'),
('admin8', 'adminpass8', 'Content', 'admin8@site.com', '2025-08-08 16:40'),
('admin9', 'adminpass9', 'HR', 'admin9@site.com', NULL),
('admin10','adminpass10', 'Legal', 'admin10@site.com', NULL);




