#!/usr/bin/env bash
# Run this ONCE on your own computer (Mac/Linux/Git Bash) from the repo root.
# It copies your site's images from Squarespace into ./assets before you cancel.
set -e
cd "$(dirname "$0")"; mkdir -p assets
while IFS='|' read -r name url; do
  [ -z "$name" ] && continue
  echo "Downloading $name"; curl -fL --retry 3 -o "assets/$name" "$url?format=2500w" || curl -fL -o "assets/$name" "$url"
done < images.txt
curl -fL -o favicon.ico "https://images.squarespace-cdn.com/content/v1/689bed8c386e9d5d1c2c1327/1755141956049-SEM1NMLIIWES1ZDUGMMD/favicon.ico" || true
echo "Done. Open index.html to check, then delete images.txt and the download scripts if you like."
