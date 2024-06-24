electric-generate:
	./node_modules/.bin/electric-sql generate --client-path ./src/@generated/electric-sql

electric-proxy:
	docker run \
    -e "AUTH_MODE=insecure" \
    -e "DATABASE_REQUIRE_SSL=false" \
    -e "DATABASE_URL=$(DATABASE_URL)" \
    -e "ELECTRIC_WRITE_TO_PG_MODE=direct_writes" \
    -e "LOG_LEVEL=debug" \
    -e "PG_PROXY_PASSWORD=password" \
    -p 5133:5133 \
    -p 5433:5433 \
    -p 65432:65432 \
    -t \
    electricsql/electric:0.12

migrate:
	DEBUG="prisma*" npx prisma migrate deploy

prisma-migrate-dev:
	DEBUG="prisma*" npx prisma migrate dev

prisma-migrate-new:
	DEBUG="prisma*" npx prisma migrate dev --create-only
