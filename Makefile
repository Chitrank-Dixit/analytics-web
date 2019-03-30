all: run

run: setup up

setup:
    docker-compose build

up:
	docker-compose up -d

reload:
	docker-compose up -d

rm:
	docker-compose kill analytics_web && docker-compose rm --force --all analytics_web

stop:
	docker-compose stop --timeout 3

clean:
    docker-compose down --remove-orphans
	docker system prune

logs:
	docker cp analytics_web:/usr/src/app/logs/analytics_web.log .

ps:
	docker-compose ps

