#!/usr/bin/env bash
# Builds one installable zip per datapack into dist/
set -e
mkdir -p dist
for p in corrupted_beacon anime_katana chain_scythe; do
  rm -f "dist/$p.zip"
  (cd "$p" && zip -r "../dist/$p.zip" pack.mcmeta data -x '*.DS_Store' > /dev/null)
  echo "built dist/$p.zip"
done
