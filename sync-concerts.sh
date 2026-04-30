#!/bin/bash
set -e

# Sync-Skript: Kopiert nur Konzert-relevante Inhalte aus dem Wiki
# ins Quartz-Repo und pushed auf GitHub Pages.

WIKI="/root/obsidian/wiki"
REPO="/root/Konzerte"

echo "==> Syncing concert-only content to GitHub Pages repo..."

# 0. Auto-update concert count in Wiki index.md BEFORE sync
python3 << 'PYEOF'
import re

# Read the maintained concert count from queries/concert-collection.md
with open("/root/obsidian/wiki/queries/concert-collection.md", 'r') as f:
    query_content = f.read()

match = re.search(r'\*\*Gesamtzahl:\*\*\s*(\d+)\s*Konzerte', query_content)
if match:
    concert_count = int(match.group(1))
else:
    # Fallback: count concert rows in all entity files
    import glob
    concert_count = 0
    for path in glob.glob("/root/obsidian/wiki/entities/*.md"):
        with open(path) as f:
            text = f.read()
        concert_count += len(re.findall(r'\|\s*\d+\s*\|\s*\*\*\d', text))

wiki_index = "/root/obsidian/wiki/index.md"
with open(wiki_index, 'r') as f:
    content = f.read()

content = re.sub(r'^## Konzerte(?:\s*\(\d+\))?\s*$', f'## Konzerte ({concert_count})', content, flags=re.M)
with open(wiki_index, 'w') as f:
    f.write(content)
print(f"  Wiki index.md: Updated concert count to ({concert_count})")
PYEOF

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
#    Behält: Konzert-Entities + Film/Regisseur-Entities + Film-Entities
for file in "$REPO/content/entities"/*.md; do
  [ -f "$file" ] || continue
  # Prüfe nur das Frontmatter (erste 20 Zeilen, zwischen --- und ---)
  frontmatter=$(head -20 "$file" | sed -n '/^---$/,/^---$/p' 2>/dev/null)
  if echo "$frontmatter" | grep -qiE '(culture|art|director|film|imdb)'; then
    continue  # Hat relevantes Tag — behalten
  fi
  echo "  Removing non-concert entity: $(basename "$file")"
  rm -f "$file"
done

# 4. index.md bereinigen – Hörbuch/SciFi-Einträge und leere Sektionen entfernen
python3 << 'PYEOF'
import re

index_path = "/root/Konzerte/content/index.md"
with open(index_path, 'r') as f:
    content = f.read()

# Remove audiobook/scifi entries
content = re.sub(r'^- \[\[.*?(suarez|schaetzing|goldt|rhodan|hamilton|philip-k-dick|stanislaw-lem|pratchett|science-fiction|audiobook-collection).*?\n', '', content, flags=re.I | re.M)

# Remove empty "## Hörbücher" section (heading + optional blank lines until next ##)
content = re.sub(r'## Hörbücher\n\n(?=## )', '', content)

# Count concerts from the maintained query (source of truth)
with open("/root/obsidian/wiki/queries/concert-collection.md", 'r') as f:
    query_content = f.read()
match = re.search(r'\*\*Gesamtzahl:\*\*\s*(\d+)\s*Konzerte', query_content)
if match:
    concert_count = int(match.group(1))
else:
    concert_count = len(re.findall(r'^\|\s*\d+\s*\|', list_content, re.M))

# Update concert count in published index
content = re.sub(r'^## Konzerte(?:\s*\(\d+\))?\s*$', f'## Konzerte ({concert_count})', content, flags=re.M)

# Update page count
page_count = len(re.findall(r'^- \[\[', content, re.M))
content = re.sub(r'Total pages: \d+', f'Total pages: {page_count}', content)

# Replace intro text for GitHub Pages (keep last-updated + total-pages)
content = re.sub(
    r'(# Wiki Index\n\n)> Content catalog\. Every wiki page listed under its type with a one-line summary\.\n> Read this first to find relevant pages for any query\.\n',
    r'\1> Dieses Wiki ist mein persönliches Archiv aller Konzerte, die ich live erlebt habe, sowie meiner gesehenen und bewerteten Filme und Serien aus über 50 Jahren Kino- und TV-Geschichte. Jeder Eintrag umfasst Bewertungen, Statistiken und – wo vorhanden – Querverweise zwischen Konzerten und Filmen.\n',
    content
)

with open(index_path, 'w') as f:
    f.write(content)

print(f"  index.md cleaned + intro replaced ({page_count} pages, {concert_count} concerts)")
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
