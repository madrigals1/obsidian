source .env

docker run \
 -e hostname=${SERVER_URL} \
 -e database=${COUCHDB_DATABASE} \
 -e username=${COUCHDB_USER} \
 -e password=${COUCHDB_PASSWORD} \
 -e passphrase=${LIVESYNC_PASSPHRASE} \
 docker.io/oleduc/docker-obsidian-livesync-couchdb:master \
 deno -A /scripts/generate_setupuri.ts
