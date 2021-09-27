# DATABASE
DB_USER=root
DB_PASSWORD=
DB_HOST=127.0.0.1
DB_PORT=3306
DB_NAME=olp_auth
DB_SSL=disable

# INSTALL PROGRAM
install:
	go install -tags 'mysql' github.com/golang-migrate/migrate/v4/cmd/migrate@latest

# DB MIGRATION
migrate-up:
	migrate -source file:./migrations/ -verbose -database 'mysql://${DB_USER}:${DB_PASSWORD}@tcp(${DB_HOST}:${DB_PORT})/${DB_NAME}' up

migrate-down:
	migrate -source file:./migrations/ -verbose -database 'mysql://${DB_USER}:${DB_PASSWORD}@tcp(${DB_HOST}:${DB_PORT})/${DB_NAME}' down 1

migrate-drop:
	migrate -source file:./migrations/ -verbose -database 'mysql://${DB_USER}:${DB_PASSWORD}@tcp(${DB_HOST}:${DB_PORT})/${DB_NAME}' drop
