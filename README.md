# nginx-static-site
Static site builder based on NGinx

## Usage

* Fork this project

* Replace /site.zip with your site contents zipped file

* docker-compose up --build


## Wordpress static example

* Start wordpress container

```yml
version: '3.1'
services:
  wordpress:
    image: wordpress:5.3.2-php7.4-apache
    restart: always
    ports:
      - 80:80
    environment:
      WORDPRESS_DB_HOST: db
      WORDPRESS_DB_USER: exampleuser
      WORDPRESS_DB_PASSWORD: examplepass
      WORDPRESS_DB_NAME: exampledb

  db:
    image: mysql:5.7
    restart: always
    environment:
      MYSQL_DATABASE: exampledb
      MYSQL_USER: exampleuser
      MYSQL_PASSWORD: examplepass
      MYSQL_RANDOM_ROOT_PASSWORD: '1'
```

* Open http://localhost

* Perform initial configuration

* Create your website

* Open http://localhost/wp-admin

* Click Plugin -> Add New

* Search for "simply static"

* Install plugin and then select plugin and clic "Activate"

* Click "Simply Static" on menu at left -> Diagnositcs

* Verify that all is OK (you have to launch containerized version of Wordpress using the same published port as inside the container because Simply Static uses the initial configuration base URL for it to work)

* Click "Simply Static" -> Generate -> press button "Gerenate Static Files"

* Click "click here" to download file

* On target nginx project, rename file and replace /site.zip

* Run target container and open browser

