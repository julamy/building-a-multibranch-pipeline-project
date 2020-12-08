nano db/init.sql

docker-compose stop db && docker-compose rm -f db  && docker volume rm book_db-data -f && docker-compose run -p 8000:8000 server

docker-compose run db

CONTAINER=$(docker ps | grep postgres | cut -d' ' -f1); docker-compose run data sh -c "apk update -f && apk add postgresql && psql -h $CONTAINER -U postgres thoughts"
