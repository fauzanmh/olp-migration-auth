BEGIN;

DROP TABLE IF EXISTS admins;

CREATE TABLE admins (
    id bigint(20) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username varchar(30) NOT NULL,
    password varchar(255) NOT NULL,
    created_at bigint(20) NOT NULL,
    updated_at bigint(20),
    deleted_at bigint(20)
);

COMMIT;