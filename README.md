## Prisma / ElectricSQL hangs during migration

Steps to reproduce:

1. `git clone git@github.com:recurser/electric-sql-debugging.git`
1. `cd electric-sql-debugging`
1. `yarn install`

Run the sync service:

1. `source .env`
1. `make electric-proxy`

In another tab:

1. `source .env`
1. `make prisma-migrate-dev`

The prisma debug log gets to `SENDING RPC CALL`... and seems to hang, migrating nothing.
