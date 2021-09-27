# Online Learning Platform Migration (Auth)
## Deskripsi
Untuk repo ini digunakan sebagai migration database auth

## Cara Install
### Pertama 
Jalankan perintah dibawah ini pada cmd:

	go get -tags 'mysql' github.com/golang-migrate/migrate/v4/cmd/migrate@latest
	
atau ketikkan (menggunakan make file)

    make install

### Selanjutnya
Buka file Makefile setting Database

    DB_USER=root
    DB_PASSWORD=
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_NAME=olp_atuh
    DB_SSL=disable



### Cara Menjalankan
Jalankan perintah dibawah ini pada cmd:
    
    make migrate-up

