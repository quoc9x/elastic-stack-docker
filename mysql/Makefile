.PHONY: up d

up:
	docker compose -p mysql up -d

clear:
	docker compose -p mysql down
	sudo rm -rf ./mysql-data
	sudo rm -rf ./mysql-log

p:
	sudo chmod +r -R mysql-log

l:
	docker logs -f mysql
