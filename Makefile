export $UID = $(id -u)
export $GID = $(id -g)

run:
	docker-compose up -d

install:
	docker-compose build

refresh:
	docker-compose down
	docker-compose rm -f
	docker-compose build
	docker-compose up -d

sql:
	docker-compose run db psql -h db -U docker