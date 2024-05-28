.PHONY: clear

up:
	docker compose -p elk up

clear:
	docker compose -p elk down
	docker volume rm $$(docker volume ls -q)
