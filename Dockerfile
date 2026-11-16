# Start from official pgvector base image
FROM pgvector/pgvector:pg16

# Install PostGIS, and upgrade preinstalled packages to pick up security fixes
# published since the base image was built
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends postgresql-16-postgis && \
    rm -rf /var/lib/apt/lists/*

# Optional: confirm extensions work
RUN /usr/lib/postgresql/16/bin/postgres --version
