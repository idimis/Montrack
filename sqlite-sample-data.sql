-- Insert into users
INSERT INTO users (email, password_hash, pin, sso_provider_id, sso_provider_user_id, name, quotes, language, currency, image_url, created_at, updated_at)
VALUES 
('user1@example.com', 'hashed_password1', '1234', 1, 'sso_user1', 'Alice', 'Live life to the fullest', 'English', 'USD', 'http://example.com/image1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('user2@example.com', 'hashed_password2', '5678', 1, 'sso_user2', 'Bob', 'Carpe Diem', 'English', 'USD', 'http://example.com/image2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert into sso_providers
INSERT INTO sso_providers (name, url, created_at, updated_at)
VALUES 
('Google', 'http://google.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Facebook', 'http://facebook.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert into wallets
INSERT INTO wallets (user_id, name, amount, is_active, created_at, updated_at)
VALUES 
(1, 'Main Wallet', 1000, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 'Savings Wallet', 500, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(1, 'Expense Wallet', 200, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert into notifications
INSERT INTO notifications (user_id, name, description, is_unread, created_at, updated_at)
VALUES 
(1, 'Welcome!', 'Thanks for joining us!', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 'Update Available', 'New features have been added!', 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert into goals
INSERT INTO goals (wallet_id, name, description, amount, attachment_url, created_at, updated_at)
VALUES 
(1, 'Buy a new car', 'Save for a new car purchase', 20000, 'http://example.com/car.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 'Vacation Fund', 'Save for a trip to Hawaii', 3000, 'http://example.com/vacation.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert into pockets
INSERT INTO pockets (wallet_id, name, description, emoji, amount_limit, created_at, updated_at)
VALUES 
(1, 'Groceries', 'Budget for weekly groceries', '0x1F35A', 200, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),  -- ASCII for '🍚' (rice)
(1, 'Entertainment', 'Fun and leisure activities', '0x1F3AE', 100, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),  -- ASCII for '🎮' (video game)
(2, 'Travel', 'Savings for future travels', '0x1F6EB', 1500, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);  -- ASCII for '✈️' (airplane)

-- Insert into goal_records
INSERT INTO goal_records (goal_id, name, amount, created_at, updated_at)
VALUES 
(1, 'Initial Deposit', 5000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 'First Contribution', 1000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert into pocket_records
INSERT INTO pocket_records (pocket_id, name, amount, is_expense, attachment_url, created_at, updated_at)
VALUES 
(1, 'Grocery Shopping', 150, 1, 'http://example.com/grocery_receipt.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(1, 'Weekly Shopping', 100, 1, 'http://example.com/weekly_shopping.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 'Movie Night', 30, 1, 'http://example.com/movie_ticket.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, 'Flight to Hawaii', 1200, 0, 'http://example.com/hawaii_flight.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
