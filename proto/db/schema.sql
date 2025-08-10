-- SQL dump generated using DBML (dbml.dbdiagram.io)
-- Database: PostgreSQL
-- Generated at: 2025-08-10T19:40:34.833Z

CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "username" varchar(120) UNIQUE NOT NULL,
  "password_hash" varchar(128) NOT NULL,
  "birthday" date,
  "created_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "samples" (
  "id" serial PRIMARY KEY,
  "code" varchar(64) UNIQUE NOT NULL,
  "donor_id" int NOT NULL,
  "collected_at" timestamptz NOT NULL,
  "stored_at" varchar(64)
);

ALTER TABLE "samples" ADD FOREIGN KEY ("donor_id") REFERENCES "users" ("id");
