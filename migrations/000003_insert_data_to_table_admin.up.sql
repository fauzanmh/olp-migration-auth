BEGIN;

INSERT INTO admins (username, password, created_at)
VALUES ('system', '$2a$10$OjoSwTLaCjBXvwKli1QNaeBM8zA/0f5gHGUvR4JC9Mfljyuopzhru', 0);

COMMIT;