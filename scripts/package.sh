#!/usr/bin/env bash
# Builds one ZIP per skill (for Claude.ai "Upload skill") and a bundle of all of them.
# Usage: scripts/package.sh   → dist/<skill>.zip and dist/before-you-build-skills.zip
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
dist="$root/dist"
rm -rf "$dist"
mkdir -p "$dist/skills"

cd "$root/skills"
for dir in */; do
  name="${dir%/}"
  [ -f "$name/SKILL.md" ] || { echo "skip $name: no SKILL.md" >&2; continue; }
  (zip -qr "$dist/skills/$name.zip" "$name" -x '*.DS_Store')
  echo "built $name.zip"
done

cd "$dist/skills"
zip -q "$dist/before-you-build-skills.zip" ./*.zip
echo "built before-you-build-skills.zip"
