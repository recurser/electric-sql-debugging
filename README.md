## Prisma / ElectricSQL hangs during migration

Steps to reproduce:

1. `createdb electric_sql_debugging`
1. `source .env`
1. `make electric-proxy`

In another tab:

1. `source .env`
1. `make prisma-migrate-dev`

The prisma debug log gets to `SENDING RPC CALL`... and seems to hang, migrating nothing.
