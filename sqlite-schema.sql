CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    email TEXT,
    password_hash TEXT,
    pin TEXT,
    sso_provider_id INTEGER,
    sso_provider_user_id TEXT,
    name TEXT,
    quotes TEXT,
    language TEXT,
    currency TEXT,
    image_url TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    deleted_at DATETIME
);

CREATE TABLE sso_providers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    url TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    deleted_at DATETIME
);

CREATE TABLE wallets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    name TEXT,
    amount INTEGER,
    is_active BOOLEAN,
    created_at DATETIME,
    updated_at DATETIME,
    deleted_at DATETIME
);

CREATE TABLE notifications (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    name TEXT,
    description TEXT,
    is_unread BOOLEAN,
    created_at DATETIME,
    updated_at DATETIME,
    deleted_at DATETIME
);

CREATE TABLE goals (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    wallet_id INTEGER,
    name TEXT,
    description TEXT,
    amount INTEGER,
    attachment_url TEXT,  
    created_at DATETIME,
    updated_at DATETIME,
    deleted_at DATETIME
);

CREATE TABLE pockets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    wallet_id INTEGER,
    name TEXT,
    description TEXT,
    emoji TEXT,  
    amount_limit INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    deleted_at DATETIME
);

CREATE TABLE goal_records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    goal_id INTEGER,
    name TEXT,
    amount INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    deleted_at DATETIME
);

CREATE TABLE pocket_records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pocket_id INTEGER,
    name TEXT,
    amount INTEGER,
    is_expense BOOLEAN,
    attachment_url TEXT,  
    created_at DATETIME,
    updated_at DATETIME,
    deleted_at DATETIME
);
