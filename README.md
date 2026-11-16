# postgres-pgvector-postgis

Postgres 16 Docker images with pgvector and PostGIS, published to GHCR.

## Images
- `ghcr.io/ontherivt/pgvector-postgis:pg16`: Postgres 16 + pgvector (from `pgvector/pgvector:pg16`) + PostGIS
- `ghcr.io/ontherivt/pgvector-postgis:pg16-turbo`: the same image with durability turned off (`fsync`, `synchronous_commit` and `full_page_writes` off) and larger memory settings. For tests and CI only; never use it for data you need to keep.

## Update policy
- Rebuilt weekly via GitHub Actions (Mondays 09:00 UTC), on every push to `main`, and on manual dispatch
- Each build re-pulls the base image and runs `apt-get upgrade`
- `LAST_BUILD` records the time and digests of the last scheduled build; each update is a commit
- Each build is scanned with Trivy (fixable HIGH/CRITICAL fail the run and post to Slack)

## Tagging
- Immutable tags: `pg16-YYYY-MM-DD`, `pg16-turbo-YYYY-MM-DD`
- Moving tags: `pg16`, `latest`, `pg16-turbo`, `latest-turbo`

Downstream apps should pin immutable tags.
