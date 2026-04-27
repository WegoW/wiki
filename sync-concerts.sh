#!/bin/bash
set -e

# Sync-Skript: Kopiert nur Konzert-relevante Inhalte aus dem Wiki
# ins Quartz-Repo und pushed auf GitHub Pages.

WIKI="/root/obsidian/wiki"
REPO="/root/Konzerte"

echo "==> Syncing concert-only content to GitHub Pages repo..."

# 1. Alles aus dem Wiki syncen (außer .obsidian, .trash)
rsync -av --delete \
  --exclude='.obsidian' \
  --exclude='.trash' \
  "$WIKI/" "$REPO/content/"

# 2. Bekannte Nicht-Konzert-Dateien entfernen
rm -f "$REPO/content/concepts/science-fiction.md"
rm -f "$REPO/content/queries/audiobook-collection.md"
rm -f "$REPO/content/raw/personal/audiobook-list-2026.md"

# 3. Nicht-Konzert Entities automatisch erkennen und entfernen
# (Dateien ohne Konzert-Keywords wie "Gesehenes Konzert", "Ticket", "Tour", "Live")
for file in "$REPO/content/entities"/*.md; do
  [ -f "$file" ] || continue
  if ! grep -qiE '(gesehenes konzert|ticket|tour|live|konzert|auftritt|venue|bühne)' "$file"; then
    echo "  Removing non-concert entity: $(basename "$file")"
    rm -f "$file"
  fi
done

# 4. index.md bereinigen – Hörbuch/SciFi-Einträge entfernen
python3 << 'PYEOF'
import re

index_path = "/root/Konzerte/content/index.md"
with open(index_path, 'r') as f:
    lines = f.readlines()

filtered = []
for line in lines:
    # Remove audiobook/scifi entries
    if re.search(r'suarez|schaetzing|goldt|rhodan|hamilton|philip-k-dick|stanislaw-lem|pratchett|science-fiction|audiobook-collection', line, re.I):
        continue
    filtered.append(line)

content = ''.join(filtered)
page_count = len(re.findall(r'^- \[\[', content, re.M))
content = re.sub(r'Total pages: \d+', f'Total pages: {page_count}', content)

with open(index_path, 'w') as f:
    f.write(content)

print(f"  index.md cleaned ({page_count} pages)")
PYEOF

# 5. Git commit + push
cd "$REPO"
git add -A

if git diff --cached --quiet; then
  echo "==> No changes to publish."
  exit 0
fi

git commit -m "Sync concert wiki content $(date +%Y-%m-%d)"

# Push via Token aus .env
set -a
source /root/.hermes/.env >/dev/null 2>&1
set +a

git push "https://${HERMES_BACKUP_TOKEN}@github.com/WegoW/Konzerte.git" main

echo "==> Done! GitHub Pages will update in ~2 minutes."
echo "    URL: https://WegoW.github.io/Konzerte"
