-- ここに初回投入データとかCreateTableとか書く
CREATE TABLE "user" (
  "user_id" varchar PRIMARY KEY,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL
);

CREATE TABLE "accounts" (
  "account_id" varchar PRIMARY KEY,
  "user_id" varchar NOT NULL,
  "username" varchar NOT NULL
);

ALTER TABLE "accounts" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("user_id");
