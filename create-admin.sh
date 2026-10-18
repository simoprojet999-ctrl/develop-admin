#!/usr/bin/env sh
# Create the requested Pterodactyl administrator account after the panel is installed
# and its database migrations have completed.
set -eu

ADMIN_USERNAME="${ADMIN_USERNAME:-7826514908}"
ADMIN_PASSWORD="${ADMIN_PASSWORD:-7826514908}"
ADMIN_EMAIL="${ADMIN_EMAIL:-admin7826514908@example.com}"
ADMIN_FIRST_NAME="${ADMIN_FIRST_NAME:-Moreno}"
ADMIN_LAST_NAME="${ADMIN_LAST_NAME:-Admin}"

if [ ! -f artisan ]; then
  echo "Error: run this script from the Pterodactyl panel root (where artisan is located)." >&2
  exit 1
fi

php artisan p:user:make \
  --email="$ADMIN_EMAIL" \
  --username="$ADMIN_USERNAME" \
  --name-first="$ADMIN_FIRST_NAME" \
  --name-last="$ADMIN_LAST_NAME" \
  --password="$ADMIN_PASSWORD" \
  --admin=1
