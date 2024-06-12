.PHONY: clear

up:
	docker compose -p elk up

clear:
	docker compose -p elk down
	docker volume rm $$(docker volume ls -q)

# Generate nginx access log
gen:
	python log_ingest_data/gen-nginx-access-log.py --filename log_ingest_data/nginx-access-log.log --lines 2000

