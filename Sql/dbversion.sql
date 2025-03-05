BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS "DbVersion" (
    "Version" NUMBER NOT NULL CONSTRAINT "PK___Version" PRIMARY KEY
);

-- Insert value if not exists
INSERT INTO "DbVersion" ("Version")
SELECT 0
WHERE NOT EXISTS (SELECT * FROM "DbVersion");

COMMIT;