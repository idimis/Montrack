-- Insert sample data into users
INSERT INTO users (email, password_hash, pin, sso_provider_id, sso_provider_user_id, name, image_url, quotes, language, currency, created_at, updated_at, deleted_at) 
VALUES 
('alice@example.com', 'hashedpassword_alice', '1111', 1, 'alice_google', 'Alice Smith', 'https://example.com/image_alice.jpg', 'Quote Alice', 'en', 'EUR', '2023-01-10 09:00:00', '2023-01-12 11:00:00', NULL),
('bob@example.com', 'hashedpassword_bob', '2222', 2, 'bob_facebook', 'Bob Johnson', 'https://example.com/image_bob.jpg', 'Quote Bob', 'en', 'GBP', '2023-02-15 14:00:00', '2023-02-17 16:00:00', '2023-05-10 08:00:00');

-- Insert sample data into sso_providers
INSERT INTO sso_providers (name, url, created_at, updated_at, deleted_at) 
VALUES 
('Google', 'https://google.com', '2022-01-01 08:00:00', '2022-01-05 14:00:00', NULL),
('Facebook', 'https://facebook.com', '2022-02-01 09:00:00', '2022-02-03 13:00:00', NULL);

-- Insert sample data into wallets
INSERT INTO wallets (user_id, name, amount, is_active, created_at, updated_at, deleted_at) 
VALUES 
(1, 'Main Wallet', 6000, TRUE, '2023-03-02 11:00:00', '2023-03-03 09:30:00', NULL),
(1, 'Emergency Fund', 4000, TRUE, '2023-03-10 10:30:00', '2023-03-12 12:00:00', NULL),
(2, 'Bob’s Wallet', 1500, TRUE, '2023-04-05 16:00:00', '2023-04-07 18:00:00', '2023-06-15 09:00:00');

-- Insert sample data into pockets
INSERT INTO pockets (wallet_id, name, description, emoji, amount_limit, created_at, updated_at, deleted_at) 
VALUES 
(1, 'Food Budget', 'Monthly food budget', ':pizza:', 400, '2023-05-15 10:00:00', '2023-05-17 11:30:00', NULL),
(1, 'Fitness', 'Budget for gym and sports', ':weight_lifter:', 200, '2023-05-20 14:00:00', '2023-05-22 14:30:00', NULL),
(2, 'Travel Fund', 'Travel expenses for the year', ':passport_control:', 1500, '2023-06-10 09:00:00', '2023-06-12 12:00:00', NULL);

-- Insert sample data into pocket_records
INSERT INTO pocket_records (pocket_id, name, amount, is_expense, created_at, updated_at, deleted_at) 
VALUES 
(1, 'Grocery Shopping', 300, TRUE, '2023-07-05 14:00:00', '2023-07-06 15:00:00', NULL),
(1, 'Local Market', 80, TRUE, '2023-07-11 13:00:00', '2023-07-12 14:30:00', NULL),
(2, 'Gym Membership', 50, TRUE, '2023-08-10 15:00:00', '2023-08-11 16:00:00', NULL),
(2, 'Yoga Class', 40, TRUE, '2023-08-15 17:00:00', '2023-08-16 18:00:00', NULL),
(3, 'Hotel Booking', 700, TRUE, '2023-09-05 11:00:00', '2023-09-06 12:00:00', NULL);

-- Insert sample data into goals
INSERT INTO goals (wallet_id, name, description, amount, attachment_url, created_at, updated_at, deleted_at) 
VALUES 
(1, 'New Phone', 'Saving for a new smartphone', 800, 'https://example.com/phone.jpg', '2023-10-05 12:00:00', '2023-10-06 13:00:00', NULL),
(2, 'World Tour', 'Saving for a trip around the world', 3000, 'https://example.com/world_tour.jpg', '2023-11-02 10:00:00', '2023-11-03 11:00:00', NULL);

-- Insert sample data into goal_records
INSERT INTO goal_records (goal_id, name, amount, created_at, updated_at, deleted_at) 
VALUES 
(1, 'Initial Contribution', 400, '2023-12-05 08:00:00', '2023-12-06 08:30:00', NULL),
(1, 'Second Contribution', 300, '2024-01-10 10:00:00', '2024-01-12 10:30:00', NULL),
(2, 'First Deposit', 600, '2024-02-02 11:00:00', '2024-02-03 12:00:00', NULL);

-- Insert sample data into notifications
INSERT INTO notifications (user_id, name, description, is_unread, created_at, updated_at, deleted_at) 
VALUES 
(1, 'Spending Limit Exceeded', 'You have exceeded your food budget.', TRUE, '2024-03-05 15:00:00', '2024-03-06 16:00:00', NULL),
(2, 'Goal Update', 'You have reached your travel savings goal.', FALSE, '2024-04-10 17:00:00', '2024-04-12 17:30:00', NULL);
