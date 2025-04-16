# Welcome to [Slidev](https://github.com/slidevjs/slidev)!

To start the slide show:

- `npm install`
- `npm run dev` runs both slidev & cloudflare workers locally (including local d1 database)
- visit http://localhost:3030
- GH Actions deploys changes to production workers
- DB migrations are not applied in CICD yet...need to run manually.
  - delete .wrangler/state/d1 to reset local db
  - `npx wrangler d1 migrations apply prod1` to apply migrations to local db
  - CAUTION `npx wrangler d1 migrations apply prod1 --remote` to run sql script on remote (cloud) db
  - as the schema changes, reference: https://developers.cloudflare.com/d1/reference/migrations/
- run local seed data `npx wrangler d1 execute prod1 --file seed.sql`
- `npx wrangler d1 execute prod1 ...` to run sql scripts on local db

- Now with PNPM, from the root directory, just run `pnpm install` and `pnpm -r dev` to start the slide show.

- when building locally, pass the following as an environment variable: `export NODE_OPTIONS=--max-old-space-size=6144`
