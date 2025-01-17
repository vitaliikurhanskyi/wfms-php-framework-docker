composer install

Apache - 2.4
PHP - 8.0
MariaDB - 10.1


docker-compose up -d
docker-compose down
docker exec -it {container name} bash
ls -li
pwd
docker {container name} nginx -s reload


Пересоберите образ:
docker build -t php_apache .
После сборки образа снова запустите контейнер:
docker run -it --rm php_apache bash
