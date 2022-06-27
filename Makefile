build:
	docker-compose -f docker-compose.yml build --no-cache app


test:
	docker-compose -f docker-compose.yml run --rm app npm test


up:
	docker-compose -f docker-compose.yml up --abort-on-container-exit


push:
	docker-compose -f docker-compose.yml push app


ci:
	docker-compose -f docker-compose.yml build --no-cache app
	docker-compose -f docker-compose.yml up --abort-on-container-exit
	docker-compose -f docker-compose.yml push app