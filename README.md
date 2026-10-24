The source code for the webpage of Giovina Nicolai: www.pflanzenlabor.ch

# Installation

## Install apache2, php and mariadb.
```sh
sudo apt install apache2 mariadb-server php php-mysql php-mbstring
```

## Install composer
```sh
mkdir bin
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'c8b085408188070d5f52bcfe4ecfbee5f727afa458b2573b8eaaf77b3419b0bf2768dc67c86944da1544f06fa544fd47') { echo 'Installer verified'.PHP_EOL; } else { echo 'Installer corrupt'.PHP_EOL; unlink('composer-setup.php'); exit(1); }"
php composer-setup.php --install-dir=bin
php -r "unlink('composer-setup.php');"
php bin/composer.phar config vendor-dir server/vendor
```

## Install dependencies
```
php bin/composer.phar install
```

## Crate Database and database user
```
sudo mysql
```

the in the prompt:
```mysql
CREATE DATABASE pflanzenlabor;
CREATE USER pflanzenlabor@localhost IDENTIFIED BY '__some_password__';
GRANT ALL_PRIVILEGES ON pflanzenlabor.* TO pflanzenlabor@localhost;
source server/db-dump/__some_dump_file__
```
