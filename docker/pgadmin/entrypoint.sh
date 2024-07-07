#!/bin/sh

cat > /pgadmin4/servers.json <<EOF
{
  "Servers": {
    "1": {
      "Group": "Servers",
      "Name": "Local Postgres",
      "Host": "${POSTGRES_HOST}",
      "Port": 5432,
      "MaintenanceDB": "${POSTGRES_DB}",
      "Username": "${POSTGRES_USER}",
      "PassFile": "/pgpass",
      "SSLMode": "prefer"
    }
  }
}
EOF

echo "${POSTGRES_HOST}:${POSTGRES_PORT}:${POSTGRES_DB}:${POSTGRES_USER}:${POSTGRES_PASSWORD}" > /pgpass

chmod 600 /pgpass

sh /entrypoint.orig.sh