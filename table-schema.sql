CREATE TABLE "users" (
  "id" id,
  "email" text,
  "password_hash" text,
  "pin" text,
  "sso_provider_id" id,
  "sso_provider_user_id" text,
  "name" text,
  "quotes" text,
  "language" text,
  "currency" text,
  "image_url" text,
  "created_at" datetime,
  "updated_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "sso_providers" (
  "id" id,
  "name" text,
  "url" text,
  "created_at" datetime,
  "update_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "wallets" (
  "id" id,
  "user_id" id,
  "name" text,
  "amount" integer,
  "is_active" bool,
  "created_at" datetime,
  "updated_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "notifications" (
  "id" id,
  "user_id" id,
  "name" text,
  "description" text,
  "is_unread" bool,
  "created_at" datetime,
  "updated_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "goals" (
  "id" id,
  "wallet_id" id,
  "name" text,
  "description" text,
  "amount" integer,
  "attachment_url" text,
  "created_at" datetime,
  "updated_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "pockets" (
  "id" id,
  "wallet_id" id,
  "name" text,
  "description" text,
  "emoji" text,
  "created_at" datetime,
  "updated_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "goal_records" (
  "id" id,
  "goal_id" id,
  "name" text,
  "amount" integer,
  "created_at" datetime,
  "updated_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "pocket_records" (
  "id" id,
  "pocket_id" id,
  "name" text,
  "amount" integer,
  "attachment_url" text,
  "is_expense" bool,
  "created_at" datetime,
  "updated_at" datetime,
  "deleted_at" datetime
);

ALTER TABLE "wallets" ADD FOREIGN KEY ("id") REFERENCES "users" ("id");

ALTER TABLE "notifications" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "sso_providers" ADD FOREIGN KEY ("id") REFERENCES "users" ("sso_provider_id");

ALTER TABLE "pockets" ADD FOREIGN KEY ("wallet_id") REFERENCES "wallets" ("id");

ALTER TABLE "goals" ADD FOREIGN KEY ("wallet_id") REFERENCES "wallets" ("id");

ALTER TABLE "pocket_records" ADD FOREIGN KEY ("pocket_id") REFERENCES "pockets" ("id");

ALTER TABLE "goal_records" ADD FOREIGN KEY ("goal_id") REFERENCES "goals" ("id");
