```shell
# hosts
https://docker.local - site
http://localhost:8081 - phpAdminer
http://localhost:8082 - redisAdmin
http://localhost:8025 - MailHog
```
```shell
# docker commands
docker-compose build --no-cache
docker-compose up -d
docker-compose exec php bash

docker-compose run --rm composer install
docker-compose run --rm composer update
docker-compose run --rm artisan key:generate
docker-compose run --rm artisan migrate

docker-compose run --rm npm run install
docker-compose run --rm npm run dev
```
