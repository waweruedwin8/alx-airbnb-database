--  Users
INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Walker', 'alice@example.com', 'hashed_pw1', '0712345678', 'host'),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '0723456789', 'guest'),
  ('33333333-3333-3333-3333-333333333333', 'Charlie', 'Johnson', 'charlie@example.com', 'hashed_pw3', NULL, 'guest'),
  ('44444444-4444-4444-4444-444444444444', 'Dana', 'Lee', 'dana@example.com', 'hashed_pw4', '0734567890', 'admin');

--  Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('aaaa1111-aaaa-1111-aaaa-111111aaaa11', '11111111-1111-1111-1111-111111111111', 'Cozy Cabin', 'A cozy wooden cabin in the woods.', 'Nanyuki', 3500.00),
  ('bbbb2222-bbbb-2222-bbbb-222222bbbb22', '11111111-1111-1111-1111-111111111111', 'Beach House', 'A spacious beach house with ocean views.', 'Diani', 7500.00);

--  Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('book1111-book-1111-book-111111book11', 'aaaa1111-aaaa-1111-aaaa-111111aaaa11', '22222222-2222-2222-2222-222222222222', '2025-06-01', '2025-06-03', 7000.00, 'confirmed'),
  ('book2222-book-2222-book-222222book22', 'bbbb2222-bbbb-2222-bbbb-222222bbbb22', '33333333-3333-3333-3333-333333333333', '2025-07-10', '2025-07-12', 15000.00, 'pending');

-- Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay1111-pay1-1111-pay1-111111pay111', 'book1111-book-1111-book-111111book11', 7000.00, 'credit_card'),
  ('pay2222-pay2-2222-pay2-222222pay222', 'book2222-book-2222-book-222222book22', 15000.00, 'paypal');

--  Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('rev1111-rev1-1111-rev1-111111rev111', 'aaaa1111-aaaa-1111-aaaa-111111aaaa11', '22222222-2222-2222-2222-222222222222', 5, 'Amazing place, very peaceful!'),
  ('rev2222-rev2-2222-rev2-222222rev222', 'bbbb2222-bbbb-2222-bbbb-222222bbbb22', '33333333-3333-3333-3333-333333333333', 4, 'Great location but could use better Wi-Fi.');

-- Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('msg1111-msg1-1111-msg1-111111msg111', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi, is the Cozy Cabin available this weekend?'),
  ('msg2222-msg2-2222-msg2-222222msg222', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Yes, it’s available from Friday.');

