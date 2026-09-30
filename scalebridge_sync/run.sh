#!/bin/sh
set -eu

PUBLIC_URL="$(jq -r '.public_url // empty' /data/options.json)"

if [ -z "${PUBLIC_URL}" ]; then
  echo "ERROR: public_url is not configured."
  exit 1
fi

echo "Starting ScaleBridge Sync"
echo "Public URL: ${PUBLIC_URL}"

exec /usr/local/bin/scalebridge-sync run \
  --config /data \
  --bind 0.0.0.0 \
  --public-url "${PUBLIC_URL}"
