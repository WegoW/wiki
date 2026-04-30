---
title: Wiki um Filme & Serien erweitern + auf GitHub Pages
created: 2026-04-30
status: plan
tags: [wiki, imdb, quartz, github-pages, filme, serien]
---

# Plan: Konzert-Wiki um Filme & Serien erweitern + GitHub Pages

## Goal

Das bestehende Obsidian-Wiki (`/root/obsidian/wiki/`) und die Quartz GitHub Pages Site (`github.com/WegoW/Konzerte`) um kuratierte Film- und Serien-Inhalte aus der IMDb-Ratings-CSV erweitern. Gemeinsame Site mit Querverlinkungen zwischen Konzerten und Filmen.

## Status Quo

| Was | Status |
|-----|--------|
| Wiki existiert | ✅ Konzert-Tickets, Entities, Queries, Concepts |
| Quartz-GitHub Pages (`/root/Konzerte/`) | ✅ Läuft, pushed Konzert-Content auf `WegoW.github.io/Konzerte` |
| Sync-Skript (`sync-concerts.sh`) | ✅ Filtert nur Konzert-Content – **entfernt aktuell alles andere** |
| `queries/film-history.md` | ✅ Existiert (Phase 1 abgeschlossen) |
| `concepts/film-genres.md` | ✅ Existiert (Phase 1 abgeschlossen) |
| IMDb CSV (`/root/data/imdb_ratings.csv`) | ✅ 3.993 Titel, 3.589 Filme, 305 Serien |
| Regisseur-Seiten (Entity) | ❌ Noch nicht angelegt |
| Film/Serien-Ordner im Wiki | ❌ Noch nicht vorhanden |
| Trakt-Kopplung | ❌ Optional, später |

## Prinzipien

1. **Keine 4.000 Einzelseiten** — das Wiki ist kuratiert, keine Datenbank
2. **CSV bleibt die Quelle** — Wiki-Seiten zeigen nur Aggregate und Highlights
3. **Querverlinkungen sind der Wert** — Konzert ↔ Film-Links machen das Wiki einzigartig
4. **Eine Site** — Konzerte + Filme + Serien zusammen auf `WegoW.github.io/Konzerte`

## Schritt-für-Schritt-Plan

### Schritt 1 — Wiki-Ordner-Struktur erweitern

Neue Verzeichnisse im Wiki anlegen:
```
wiki/
├── entities/              ← Konzert-Artists (bestehend)
├── filme/                 ← NEU: aggregierte Filmseiten
│   ├── regisseure/        ← NEU: Regisseur-Entity-Seiten
│   └── genres/            ← NEU: Genre-Seiten
├── serien/                ← NEU: aggregierte Serienseiten
├── queries/               ← bestehend (film-history.md schon da)
├── concepts/              ← bestehend (film-genres.md schon da)
└── index.md               ← wird erweitert
```

**Warum Unterordner?** Quartz hat `Plugin.FolderPage()` – jeder Ordner bekommt automatisch eine Übersichtsseite. Das erspart manuelle Navigation.

### Schritt 2 — Generierungs-Script bauen

Ein Python-Script, das aus der IMDb-CSV aggregierte Wiki-Seiten generiert:

**2a) `filme/regisseure/` — Top-Regisseure mit Entity-Seiten**

Für jeden Regisseur mit **11+ Filmen** (aktuell 18 Regisseure) eine Entity-Seite anlegen:
```yaml
---
title: Christopher Nolan
type: entity
tags: [person, director, film, imdb]
films_watched: 12
average_rating: 7.92
---
# Christopher Nolan

## Gesehene Filme

| Film | Jahr | ⭐ |
|------|------|-----|
| [[filme/dark-knight|The Dark Knight]] | 2008 | 9 |
| [[filme/inception|Inception]] | 2010 | 10 |
...

## Statistik
- Filme gesamt: 12
- ⌀-Bewertung: 7.92
- ⭐10: 2 Filme
- ⭐4-: 0 Filme

## Cross-Links
🎵 [[entities/hans-zimmer|Hans Zimmer]] — regelmäßiger Komponist
```

**2b) `filme/genres/` — Genre-Seiten (automatisch)**

Nur Top-10-Genres als Entity-Seiten. Inhalt ähnlich wie `concepts/film-genres.md` aber als eigenständige Seiten.

**2c) `filme/top-50.md` — Persönliche Bestenliste**

Top 50 Filme sortiert nach ⭐, bei Gleichstand nach Datum (neuer = höher).

**2d) `serien/top-10.md` — Serien-Highlights**

Top-Serien mit ⭐8+

**2e) Cross-Links automatisch erkennen**

CSV-Scan: Jeden Konzert-Künstler (aus `entities/`) in `Directors`- und `Title`-Spalten suchen.
Bei Treffer: Verlinkung in der Entity-Seite des Künstlers ergänzen (einmalig, dann per Hand kuratiert).

### Schritt 3 — Sync-Script anpassen (`sync-concerts.sh`, `/root/Konzerte/`)

Aktuell **entfernt** das Script alle Nicht-Konzert-Entities. Das muss umgebaut werden:

**Änderungen:**
- **Schritt 2** (Bekannte Nicht-Konzert-Dateien entfernen) → *entfernen oder erweitern*, damit film-bezogene Dateien bleiben
- **Schritt 3** (Entity-Filter) → muss Film/Serien-Entities **behalten**, nicht löschen
- **Schritt 4** (index.md-Bereinigung) → Film/Serien-Einträge in der Navigation dürfen nicht rausgefiltert werden
- **Neuer Schritt 5 (oder erweitert):** Film/Serien-Sektionen in `index.md` ergänzen

**Resultat:** Sync läuft wie vorher, nimmt aber Film/Serien-Inhalte mit.

### Schritt 4 — Quartz-Konfiguration prüfen

`/root/Konzerte/quartz.config.ts`:
- `ignorePatterns`: Prüfen, ob `filme/`, `serien/` explizit erlaubt sind (sollten sie standardmäßig sein)
- Navigation/Folder-Pages: `Plugin.FolderPage()` ist bereits aktiv → Ordner werden automatisch angezeigt
- `baseUrl` bleibt gleich (gleiche Domain)
- Evtl. `nav` in `quartz.layout.ts` anpassen für bessere Übersicht

Test-Build lokal:
```bash
cd /root/Konzerte
npx quartz build --directory content
```
Prüfen ob `public/filme/` und `public/serien/` existieren.

### Schritt 5 — Push auf GitHub Pages

Ersten Sync mit Film/Serien-Content durchführen:
```bash
/root/Konzerte/sync-concerts.sh
```

Nach ~2 Minuten auf `https://WegoW.github.io/Konzerte` prüfen ob:
- `/filme/regisseure/` Seiten erreichbar sind
- `/filme/genres/` Seiten sichtbar sind
- Querverlinkungen funktionieren
- Konzert-Seiten noch da sind

### Schritt 6 (optional) — Cron-Job für regelmäßige Aktualisierung

Sobald das Script stabil läuft: Cron-Job einrichten, der monatlich die Film/Serien-Seiten neu generiert und pushed.

## Dateien, die sich ändern

| Datei | Änderung |
|-------|----------|
| NEU: `wiki/filme/regisseure/<director>.md` | ~18 neue Entity-Seiten |
| NEU: `wiki/filme/genres/<genre>.md` | ~10 neue Genre-Seiten |
| NEU: `wiki/filme/top-50.md` | 1 neue Seite |
| NEU: `wiki/serien/top-10.md` | 1 neue Seite |
| Geändert: `wiki/index.md` | Neue Sektionen für Filme/Serien |
| Geändert: `/root/Konzerte/sync-concerts.sh` | Weniger aggressives Filtern, Film/Serien-Erhalt |
| Geändert: `wiki/entities/<artist>.md` | Cross-Links zu Filmen (bei Treffern) |
| NEU: Generierungs-Script (irgendwo in skills oder als standalone) | Pipeline CSV → Wiki-Pages |

## Risiken & Trade-offs

| Risiko | Lösung |
|--------|--------|
| Wiki wird zu voll (30+ neue Seiten) | Sind alles aggregierte/kuratierte Seiten, kein Dump |
| Cross-Links automatisch falsch (z.B. "Prince" → "Prince of Persia") | Nur Entities mit manueller Prüfung verlinken, Script liefert nur Vorschläge |
| sync-concerts.sh löscht versehentlich Film-Seiten | Schritt 3 umbauen mit Whitelist-Ansatz statt Blacklist |
| Quartz Build-Zeit steigt | ~30 Seiten mehr ≠ merkbar |
| GitHub Pages braucht 2 Minuten | Akzeptabel |
| index.md wird unübersichtlich (Konzerte + Filme + Serien) | Klare Sektionen mit Filtern, ggf. separate Sub-Indices |

## Validierung

Nach der Implementierung:
1. `ls /root/obsidian/wiki/filme/regisseure/ | wc -l` → ~18
2. Lokaler Quartz-Build → `ls public/filme/regisseure/` existiert
3. `grep -c "filme" /root/obsidian/wiki/index.md` → Sektion vorhanden
4. Browser-Test der GitHub Pages Site

## Offene Fragen (vor der Umsetzung zu klären)

1. Sollen wirklich alle 18 Top-Regisseure eigene Seiten bekommen, oder nur die mit besonderer Relevanz (z.B. Cross-Links zu Konzerten)?
2. Für die Cross-Links: Reichen automatische Vorschläge (die ich dann per Hand freigebe) oder sollen die gleich ins Wiki geschrieben werden?
3. Serien-Seiten: Nur Top-10, oder soll's auch Serien-Genres/Regisseure geben?
4. Soll das Script als Hermes-Skill oder als standalone Python-Script abgelegt werden?

---

*Plan erstellt: 2026-04-30 | Nächster Schritt: Freigabe vom User abwarten vor Umsetzung*
