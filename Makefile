up:
	docker compose up -d
build:
	docker compose build --no-cache --force-rm
stop:
	docker compose stop
down:
	docker compose down --remove-orphans
restart:
	@make down
	@make up
rebuild:
	@make down
	@make build
	@make up
destroy:
	docker compose down --rmi all --volumes --remove-orphans
destroy-volumes:
	docker compose down --volumes --remove-orphans
ps:
	docker compose ps
db:
	docker compose exec db ash
pscale:
	docker compose exec db ash -c 'pscale auth login'
sql:
	docker compose exec db ash -c 'pscale shell $$DB_NAME $$DB_BRANCH'
