electric-proxy:
	docker compose -f compose.yaml up

migrate:
	DEBUG="prisma*" npx prisma migrate deploy

prisma-migrate-dev:
	DEBUG="prisma*" npx prisma migrate dev
