#!/usr/bin/env bash
# Creates a new dated log entry from templates/log-entry.md and links it in log/README.md.
# Usage: ./new-entry.sh "short title"
set -euo pipefail

cd "$(dirname "$0")"

if [ $# -lt 1 ]; then
  echo "Usage: ./new-entry.sh \"short title\"" >&2
  exit 1
fi

title="$*"
date="$(date +%Y-%m-%d)"
slug="$(echo "$title" | tr '[:upper:]' '[:lower:]' \
  | sed -e 's/å/a/g; s/ä/a/g; s/ö/o/g; s/Å/a/g; s/Ä/a/g; s/Ö/o/g' -e 's/[^a-zA-Z0-9]\{1,\}/-/g' -e 's/^-//; s/-$//' | tr '[:upper:]' '[:lower:]')"
file="log/${date}-${slug}.md"

if [ -e "$file" ]; then
  echo "Already exists: $file" >&2
  exit 1
fi

sed -e "s/{{date:YYYY-MM-DD}}/${date}/" -e "s/{{title}}/${title//\//\\/}/" templates/log-entry.md > "$file"

marker='<!-- new-entry.sh adds new entries directly below this line -->'
link="- [${date} – ${title}](${date}-${slug}.md)"
awk -v m="$marker" -v l="$link" '{print} $0==m {print l}' log/README.md > log/README.md.tmp
mv log/README.md.tmp log/README.md

echo "Created $file"
