electric-proxy:
	docker compose -f compose.yaml up

prisma-migrate-dev:
	DEBUG="prisma*" npx prisma migrate dev --name init --schema prisma/schema.prisma
