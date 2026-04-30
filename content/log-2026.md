     1|     1|     1|     1|# Wiki Log
     2|     2|     2|     2|
     3|     3|     3|     3|> Chronological record of all wiki actions. Append-only.
     4|     4|     4|     4|> Format: `## [YYYY-MM-DD] action | subject`
     5|     5|     5|     5|> Actions: ingest, update, query, lint, create, archive, delete
     6|     6|     6|     6|> When this file exceeds 500 entries, rotate: rename to log-YYYY.md, start fresh.
     7|     7|     7|     7|
     8|     8|     8|     8|## [2026-04-25] ingest | Hörbuchliste
     9|     9|     9|     9|- Source: user-provided list
    10|    10|    10|    10|- Raw saved to: `raw/personal/audiobook-list-2026.md`
    11|    11|    11|    11|- Pages created:
    12|    12|    12|    12|  - `queries/audiobook-collection.md` — Übersicht über 119 Titel von 52 Autoren
    13|    13|    13|    13|  - `concepts/science-fiction.md` — Konzeptseite zum dominierenden Genre
    14|    14|    14|    14|  - `entities/max-goldt.md` — 11 Titel
    15|    15|    15|    15|  - `entities/perry-rhodan.md` — 11 Bände
    16|    16|    16|    16|  - `entities/terry-pratchett.md` — 8 Titel
    17|    17|    17|    17|  - `entities/philip-k-dick.md` — 7 Titel
    18|    18|    18|    18|  - `entities/daniel-suarez.md` — 6 Titel
    19|    19|    19|    19|  - `entities/peter-f-hamilton.md` — 6 Titel
    20|    20|    20|    20|  - `entities/stanislaw-lem.md` — 6 Titel
    21|    21|    21|    21|  - `entities/frank-schaetzing.md` — 4 Titel
    22|    22|    22|    22|- Index updated: 14 total pages
    23|    23|    23|    23|- Cross-references: Sammlung → Autoren → Science-Fiction → Sammlung
    24|    24|    24|    24|
    25|    25|    25|    25|## [2026-04-25] create | Wiki initialized
    26|    26|    26|    26|- Domain: Universal knowledge base
    27|    27|    27|    27|- Location: /root/obsidian/wiki
    28|    28|    28|    28|- Structure created with SCHEMA.md, index.md, log.md
    29|    29|    29|    29|- Connected to iOS Obsidian via Samba share
    30|    30|    30|    30|
    31|    31|    31|    31|## [2026-04-25] lint | Wiki health check
    32|    32|    32|    32|- Ran full lint: 13 broken links fixed, 5 trash items removed, 1 orphan re-linked
    33|    33|    33|    33|- Index cleaned: removed andrej-karpathy, llm-wiki-pattern (deleted pages)
    34|    34|    34|    34|- Tag 'personal' added to taxonomy
    35|    35|    35|    35|- SCHEMA.md, index.md, log.md updated
    36|    36|    36|    36|
    37|    37|    37|    37|## [2026-04-25] ingest | Konzertliste
    38|    38|    38|    38|- Source: user-provided list
    39|    39|    39|    39|- Raw saved to: `raw/personal/concert-list-2026.md`
    40|    40|    40|    40|- Pages created:
    41|    41|    41|    41|  - `queries/concert-collection.md` — Übersicht über 79 Konzerte von 52 Acts
    42|    42|    42|    42|  - `concepts/live-music.md` — Konzeptseite zu Live-Musik
    43|    43|    43|    43|  - `entities/prince.md` — 8 Konzerte
    44|    44|    44|    44|  - `entities/kid-creole-and-the-coconuts.md` — 4 Konzerte
    45|    45|    45|    45|  - `entities/joe-jackson.md` — 3 Konzerte
    46|    46|    46|    46|  - `entities/george-clinton.md` — 3 Konzerte
    47|    47|    47|    47|  - `entities/candy-dulfer.md` — 3 Konzerte
    48|    48|    48|    48|  - `entities/maceo-parker.md` — 3 Konzerte
    49|    49|    49|    49|  - `entities/bootsy-collins.md` — 2 Konzerte
    50|    50|    50|    50|  - `entities/james-brown.md` — 2 Konzerte
    51|    51|    51|    51|  - `entities/freak-power.md` — 2 Konzerte
    52|    52|    52|    52|  - `entities/jazzkantine.md` — 2 Konzerte
    53|    53|    53|    53|  - `entities/the-flying-pickets.md` — 2 Konzerte
    54|    54|    54|    54|  - `entities/tower-of-power.md` — 2 Konzerte
    55|    55|    55|    55|- Index updated: 28 total pages
    56|    56|    56|    56|- Cross-references: Sammlung → Künstler → Live-Musik → Sammlung
    57|    57|    57|    57|
    58|    58|    58|    58|## [2026-04-26] create | Angie Stone
    59|    59|    59|    59|- Source: concert-list-2026, eBay Tour Poster
    60|    60|    60|    60|- Pages created:
    61|    61|    61|    61|  - `entities/angie-stone.md` — Entity-Page mit Konzertinfo (14.03.2002, Scala Ludwigsburg)
    62|    62|    62|    62|- Index updated: 26 total pages
    63|    63|    63|    63|- Cross-references: Angie Stone → concert-collection → live-music → Prince → Maceo Parker
    64|    64|    64|    64|
    65|    65|    65|    65|## [2026-04-26] update | Kid Creole & The Coconuts
    66|    66|    66|    66|- Alle 4 Konzertdaten präzisiert
    67|    67|    67|    67|  - 17.11.1982 – Sindelfingen, Stadthalle (Tropical Gangsters Tour)
    68|    68|    68|    68|  - 9.4.1983 – Stuttgart, Liederhalle (Doppelganger/Lifeboat Party Tour)
    69|    69|    69|    69|  - 4.9.1985 – Stuttgart, Liederhalle (The Leisure Tour 1985)
    70|    70|    70|    70|  - 26.7.1991 – Stuttgart, Liederhalle (You Shoulda Told Me You Were... Tour)
    71|    71|    71|    71|- Source: setlist.fm, Konzertplakat Stuttgart 1985 (Liederhalle), Original-Tourposter (eBay/Sammler)
    72|    72|    72|    72|- Assets added: 4 Tourposter in assets/posters/kid-creole/
    73|    73|    73|    73|- Pages updated:
    74|    74|    74|    74|  - entities/kid-creole-and-the-coconuts.md — Tabelle, Poster, Quellen
    75|    75|    75|    75|  - raw/personal/concert-list-2026.md — Zeilen 36-39
    76|    76|    76|    76|  - queries/concert-collection.md — Kid-Creole-Zeile
    77|    77|    77|    77|
    78|    78|    78|    78|### Korrektur (26.04.2026)
    79|    79|    79|    79|- 1983: Venue korrigiert → **Hanns-Martin-Schleyer-Halle** (nicht Liederhalle)
    80|    80|    80|    80|- 1991: Venue korrigiert → **Cannstatter Wasen** (nicht Liederhalle)
    81|    81|    81|    81|
    82|    82|    82|    82|## [2026-04-26] update | Prince Tickets & Korrektur
    83|    83|    83|    83|- **Datumskorrektur:** 1. Juli 1992 → **25. Mai 1992** (anhand Original-Ticket korrigiert; Prince spielte am 1.7. in Madrid)
    84|    84|    84|    84|- **5 Ticket-Scans hinzugefügt** aus der Sammlung Walter Wego
    85|    85|    85|    85|- Pages updated:
    86|    86|    86|    86|  - entities/prince.md — Tabelle korrigiert, Ticket-Sektion erweitert, Anmerkungen ergänzt
    87|    87|    87|    87|  - raw/personal/concert-list-2026.md — Zeile 53 korrigiert (1.7. → 25.5.)
    88|    88|    88|    88|  - queries/concert-collection.md — Prince-Datum korrigiert
    89|    89|    89|    89|
    90|    90|    90|    90|## [2026-04-26] ingest | The B-52's
    91|    91|    91|    91|- Source: Original-Ticket/Poster (Sammlung Walter Wego)
    92|    92|    92|    92|- Präzisiert: 11/92 → **24. November 1992**, Kongresszentrum Killesberg Stuttgart
    93|    93|    93|    93|- Asset saved: `assets/posters/the-b-52s/tickets/1992-good-stuff-live.jpg`
    94|    94|    94|    94|- Pages created:
    95|    95|    95|    95|  - `entities/the-b-52s.md` — Entity-Page mit Konzertdetails (24.11.1992, Good Stuff Live! Tour)
    96|    96|    96|    96|- Pages updated:
    97|    97|    97|    97|  - `raw/personal/concert-list-2026.md` — Zeile 63 präzisiert
    98|    98|    98|    98|  - `index.md` — Eintrag + Seitenzahl (26→27)
    99|    99|    99|    99|
   100|   100|   100|   100|### Korrektur (26.04.2026)
   101|   101|   101|   101|- Line-up korrigiert: Auf dem Poster ist nicht Cindy Wilson, sondern **Julee Cruise** (*Twin Peaks*) — Cindy hatte nach *Cosmic Thing* eine Auszeit
   102|   102|   102|   102|
   103|   103|   103|   103|## [2026-04-26] ingest | 18 Tickets importiert (Batch 3)
   104|   104|   104|   104|- Source: Original-Tickets (Sammlung Walter Wego)
   105|   105|   105|   105|- **26 Ticket-Scans** hinzugefügt (18 Tickets + 8 Shared für Multi-Artist)
   106|   106|   106|   106|- Assets saved: 26 Dateien in assets/posters/*/tickets/
   107|   107|   107|   107|- Pages created (15 new entities):
   108|   108|   108|   108|  - `entities/wolf-maahn.md` — 10.02.1985, Maxim Stuttgart
   109|   109|   109|   109|  - `entities/stephan-eicher.md` — 22.05.1990, Schützenhaus
   110|   110|   110|   110|  - `entities/alexander-oneal.md` — 23.05.1991, Forum Ludwigsburg, All The Man Tour
   111|   111|   111|   111|  - `entities/the-blow-monkeys.md` — 15.05.1986, Röhre im Wagenburgtunnel
   112|   112|   112|   112|  - `entities/the-untouchables.md` — 05.11.1985, Maxim Stuttgart
   113|   113|   113|   113|  - `entities/janet-jackson.md` — 01.04.1995, Schleyer-Halle, European Tour 1995
   114|   114|   114|   114|  - `entities/chaka-khan.md` — 28.11.1988, Theaterhaus, *It's My Party*
   115|   115|   115|   115|  - `entities/oleta-adams.md` — 15.04.1994, Liederhalle Beethoven-Saal
   116|   116|   116|   116|  - `entities/jason-and-the-scorchers.md` — 1985, *Wanted! Live in Germany*
   117|   117|   117|   117|  - `entities/upfunkcoolo.md` — 03.07.1992, Theaterhaus
   118|   118|   118|   118|  - `entities/amp-fiddler.md` — 14.07.2004, Jazz Open (m. Afrika Bambaataa & George Clinton)
   119|   119|   119|   119|  - `entities/sheryl-crow.md` — 13.11.1996, LKA Longhorn (m. SOVORY)
   120|   120|   120|   120|  - `entities/incognito.md` — 20.07.2003, Jazz Open (m. Candy Dulfer & Malia)
   121|   121|   121|   121|  - `entities/malia.md` — 20.07.2003, Jazz Open (m. Candy Dulfer & Incognito)
   122|   122|   122|   122|  - `entities/afrika-bambaataa.md` — 14.07.2004, Jazz Open (m. Amp Fiddler & George Clinton)
   123|   123|   123|   123|- Pages updated (6):
   124|   124|   124|   124|  - `entities/james-brown.md` — +2005 Jazz Open (m. Jamie Lidell)
   125|   125|   125|   125|  - `entities/the-flying-pickets.md` — +2 Konzerte (1994 Scala + 1995 LKA)
   126|   126|   126|   126|  - `entities/joe-jackson.md` — +1995 Night Music Tour (Beethoven-Saal)
   127|   127|   127|   127|  - `entities/candy-dulfer.md` — +2003 Jazz Open (m. Incognito & Malia)
   128|   128|   128|   128|  - `entities/freak-power.md` — +1995 Röhre-Konzert
   129|   129|   129|   129|  - `entities/george-clinton.md` — +2004 Jazz Open (m. Amp Fiddler & Afrika Bambaataa)
   130|   130|   130|   130|- Raw updated: `concert-list-2026.md` — 22 Zeilen präzisiert + Name korrigiert (Afrikaa→Afrika)
   131|   131|   131|   131|- Index updated: 38→53 pages (+15 new entities)
   132|   132|   132|   132|
   133|   133|   133|   133|## [2026-04-26] ingest | Bootsy Collins Jazz Open 1998
   134|   134|   134|   134|- Source: Original-Ticket (Sammlung Walter Wego)
   135|   135|   135|   135|- Asset: `assets/posters/bootsy-collins/tickets/1998-jazz-open.jpg`
   136|   136|   136|   136|- Updated: `entities/bootsy-collins.md` — +Jazz Open 1998 mit Ticket
   137|   137|   137|   137|
   138|   138|   138|   138|## [2026-04-26] update | Kid Creole & The Coconuts (1991)
   139|   139|   139|   139|- Source: Stuttgart Summer Jam Festivalplakat (Sammlung Walter Wego)
   140|   140|   140|   140|- Asset: `assets/posters/kid-creole/1991-stuttgart-summer-jam.jpg`
   141|   141|   141|   141|- Asset: `assets/posters/kid-creole-and-the-coconuts/tickets/1991-stuttgart-summer-jam.jpg`
   142|   142|   142|   142|- **⚠️ Datumskorrektur:** 26.7.1991 → **6.7.1991**
   143|   143|   143|   143|- **Venue-Korrektur:** Cannstatter Wasen → **Reitstadion (Stuttgart Summer Jam)**
   144|   144|   144|   144|- Pages updated:
   145|   145|   145|   145|  - `entities/kid-creole-and-the-coconuts.md` — Datum, Venue, Tour korrigiert; Poster + Ticket hinzugefügt; Anmerkungen ergänzt
   146|   146|   146|   146|  - `raw/personal/concert-list-2026.md` — Datum korrigiert
   147|   147|   147|   147|  - `queries/concert-collection.md` — Datum korrigiert
   148|   148|   148|   148|
   149|   149|   149|   149|## [2026-04-26] update | Orte ergänzt (4 Konzerte)
   150|   150|   150|   150|- Quelle: Walter Wego (persönliche Erinnerung)
   151|   151|   151|   151|- Pages updated:
   152|   152|   152|   152|  - `entities/james-brown.md` — ?/86 → Stuttgart, Hanns-Martin-Schleyer-Halle
   153|   153|   153|   153|  - `entities/jason-and-the-scorchers.md` — ?/85 → Stuttgart, Maxim
   154|   154|   154|   154|  - `entities/prince-charles-and-the-city-beat-band.md` — 27.05.1984 → Stuttgart, Maxim
   155|   155|   155|   155|  - `entities/maceo-parker.md` — 08.11.2011 → Backnang, Walter-Baumgärtner-Saal
   156|   156|   156|   156|
   157|   157|   157|   157|## [2026-04-26] update | Daten präzisiert (7 Konzerte)
   158|   158|   158|   158|- Quelle: Websuche (setlist.fm, Wikipedia, SPEX-Archiv, Jazzopen-Programm)
   159|   159|   159|   159|- Recherchiert durch Hermes Agent
   160|   160|   160|   160|- Pages updated:
   161|   161|   161|   161|  - `entities/bootsy-collins.md` — 7/98 → **18.07.1998** (Jazzopen Stuttgart)
   162|   162|   162|   162|  - `entities/candy-dulfer.md` — 7/07 → **18.07.2007** (jazzopen Schlossplatz)
   163|   163|   163|   163|  - `entities/george-clinton.md` — ?/94 → **18.09.1994** (LKA Longhorn)
   164|   164|   164|   164|  - `entities/james-brown.md` — ?/86 → **20.06.1986** (Schleyer-Halle)
   165|   165|   165|   165|  - `entities/jason-and-the-scorchers.md` — ?/85 → **26.02.1985** (Maxim)
   166|   166|   166|   166|  - `entities/joe-jackson.md` — ?/86 → **09.12.1986** (Big World Tour, Liederhalle)
   167|   167|   167|   167|  - `entities/tower-of-power.md` — ?/93 → **14.07.1993** (LKA Longhorn)
   168|   168|   168|   168|- Additional: Konzertliste + Konzertsammlung aktualisiert
   169|   169|   169|   169|
   170|   170|   170|   170|## [2026-04-26] fix | Candy Dulfer — falsches Konzert entfernt
   171|   171|   171|   171|- Das recherchierte "18.07.2007 jazzopen Stuttgart" war ein Irrläufer — Candy Dulfer war 2007 nur in Winterbach (5zelt Spektakel mit Maceo Parker)
   172|   172|   172|   172|- Korrigiert:
   173|   173|   173|   173|  - `entities/candy-dulfer.md` — 4. Konzert entfernt, Anmerkung korrigiert
   174|   174|   174|   174|  - `queries/concert-collection.md` — 4→3 Konzerte, 18.07.2007 entfernt
   175|   175|   175|   175|- Das Bild des Winterbach-Tickets aktualisiert (besserer Scan)
   176|   176|   176|   176|
   177|   177|   177|   177|## [2026-04-26] create | 17 Entity-Pages — Orte ergänzt
   178|   178|   178|   178|- Quelle: Walter Wego (persönliche Erinnerung)
   179|   179|   179|   179|- **Namenskorrekturen:** Curtis Mayfied → Curtis Mayfield, The Wrigth Thing → The Wright Thing
   180|   180|   180|   180|- **Daten präzisiert:** Nils Landgren 7/98 → 18. Juli 1998 (Support für Bootsy Collins), Triband 7/07 → 14. Juli 2007 (Vorgruppe Joss Stone)
   181|   181|   181|   181|- Pages created (17):
   182|   182|   182|   182|  - `entities/andreas-dorau.md` — ?/95, Röhre im Wagenburgtunnel Stuttgart
   183|   183|   183|   183|  - `entities/bobby-womack.md` — ?/87, LKA Longhorn Stuttgart
   184|   184|   184|   184|  - `entities/curtis-mayfield.md` — ?/90, Schützenhaus Stuttgart
   185|   185|   185|   185|  - `entities/earth-wind-and-fire.md` — 10/88, Schleyerhalle Stuttgart
   186|   186|   186|   186|  - `entities/jamie-lidell.md` — 14.07.2005, Jazz Open (Support für James Brown)
   187|   187|   187|   187|  - `entities/lava.md` — —, ZAP Stuttgart
   188|   188|   188|   188|  - `entities/maceo-parker-and-wdr-bigband.md` — 08.11.2011, Backnang
   189|   189|   189|   189|  - `entities/mothers-finest.md` — —, Liederhalle Stuttgart
   190|   190|   190|   190|  - `entities/nils-landgren.md` — 18.07.1998, Liederhalle Stuttgart (Support für Bootsy Collins)
   191|   191|   191|   191|  - `entities/roy-hargrove.md` — 7/08, Jazz Open Stuttgart
   192|   192|   192|   192|  - `entities/sweet-honey-in-the-rock.md` — ?/?, Theaterhaus Stuttgart
   193|   193|   193|   193|  - `entities/the-commodores.md` — 10/88, Schleyerhalle Stuttgart (Support für Earth, Wind & Fire)
   194|   194|   194|   194|  - `entities/the-sos-band.md` — ?/86, Stadthalle Sindelfingen
   195|   195|   195|   195|  - `entities/the-wright-thing.md` — —, ZAP Stuttgart
   196|   196|   196|   196|  - `entities/triband.md` — 14.07.2007, Jazz Open (Vorgruppe Joss Stone)
   197|   197|   197|   197|  - `entities/trombone-shorty.md` — 12/11, Theaterhaus Stuttgart
   198|   198|   198|   198|  - `entities/violent-femmes.md` — ?/?, Maxim Stuttgart
   199|   199|   199|   199|- Pages updated:
   200|   200|   200|   200|  - `raw/personal/concert-list-2026.md` — 2 Namenskorrekturen, 2 Daten präzisiert
   201|   201|   201|   201|  - `queries/concert-collection.md` — Verwandte Einträge um 17 ergänzt
   202|   202|   202|   202|  - `index.md` — 17 neue Entities, Seitenzahl 54→71
   203|   203|   203|   203|
   204|   204|   204|   204|## [2026-04-26] lint | 12 Issues gefixt
   205|   205|   205|   205|- Quelle: Lint-Script (llm-wiki)
   206|   206|   206|   206|- **Gefixt:**
   207|   207|   207|   207|  - SHA256-Hash der Konzertliste neu berechnet (Source Drift)
   208|   208|   208|   208|  - Index: 3 fehlende Einträge ergänzt (ziggy-marley, wolf-maahn, daniel-suarez)
   209|   209|   209|   209|  - Orphans: 12 Entity-Pages in concert-collection verlinkt
   210|   210|   210|   210|  - Quality: 12 Pages mit `confidence: medium` versehen
   211|   211|   211|   211|  - SCHEMA.md: Tag-Taxonomie in Parser-kompatibles Format umgestellt
   212|   212|   212|   212|- **Verbleibend:** Keine offenen Issues ✅
   213|   213|   213|   213|
   214|   214|   214|   214|## [2026-04-26] update | Index-Struktur überarbeitet
   215|   215|   215|   215|- **Entities** in zwei Unterkapitel aufgeteilt: **## Konzerte** (56 Künstler) und **## Hörbücher** (8 Autoren)
   216|   216|   216|   216|- Sortierung: alphabetisch innerhalb jeder Kategorie
   217|   217|   217|   217|- Jeder Eintrag zeigt jetzt Konzertanzahl (z.B. „8 Konzerte besucht")
   218|   218|   218|   218|
   219|   219|   219|   219|## [2026-04-26] ingest | Earth, Wind & Fire — Ticket-Fund
   220|   220|   220|   220|- Quelle: Original-Ticket (Sammlung Walter Wego)
   221|   221|   221|   221|- **Earth, Wind & Fire** — 11. Oktober 1988 — Schleyer-Halle Stuttgart — Touch the World Tour '88 (präsentiert von TELE 5)
   222|   222|   222|   222|- **The Commodores** als Support Act bestätigt
   223|   223|   223|   223|- Datum präzisiert: 10/88 → **11. Oktober 1988**
   224|   224|   224|   224|- Asset saved:
   225|   225|   225|   225|  - `assets/posters/earth-wind-and-fire/tickets/1988-touch-the-world-tour.jpg`
   226|   226|   226|   226|  - `assets/posters/the-commodores/tickets/1988-touch-the-world-tour.jpg` (Shared)
   227|   227|   227|   227|- Pages updated:
   228|   228|   228|   228|  - `entities/earth-wind-and-fire.md` — Datum, Tour, Venue, Ticket, Anmerkungen
   229|   229|   229|   229|  - `entities/the-commodores.md` — Datum, Tour, Venue, Ticket, Anmerkungen (Support)
   230|   230|   230|   230|  - `raw/personal/concert-list-2026.md` — Datum präzisiert
   231|   231|   231|   231|
   232|   232|   232|   232|## [2026-04-26] create | Ziggy Marley — Stuttgart Summer Jam 1991
   233|   233|   233|   233|- Datum präzisiert: 7/91 → **6. Juli 1991** (Reitstadion Stuttgart)
   234|   234|   234|   234|- Pages created:
   235|   235|   235|   235|  - `entities/ziggy-marley.md` — 1 Konzert (Stuttgart Summer Jam 1991)
   236|   236|   236|   236|- Pages updated:
   237|   237|   237|   237|  - `entities/kid-creole-and-the-coconuts.md` — Anmerkung: Ziggy Marley als Headliner ergänzt
   238|   238|   238|   238|  - `raw/personal/concert-list-2026.md` — Datum präzisiert
   239|   239|   239|   239|  - `queries/concert-collection.md` — Ziggy Marley zu Verwandte Einträge
   240|   240|   240|   240|  - `index.md` — Ziggy Marley eingetragen, Seitenzahl 53→54
   241|   241|   241|   241|
   242|   242|   242|   242|## [2026-04-26] update | Chaka Khan — Support für Prince 1998
   243|   243|   243|   243|- **Chaka Khan** war Support Act für **Prince** am 23. August 1998 im Hallenstadion Zürich (New Power Soul Tour)
   244|   244|   244|   244|- Pages updated:
   245|   245|   245|   245|  - `entities/chaka-khan.md` — +2. Konzert (Support Act), Tickets/Anmerkungen erweitert, Prince verlinkt
   246|   246|   246|   246|  - `entities/prince.md` — Anmerkung: Chaka Khan als Support Act, gegenseitig verlinkt
   247|   247|   247|   247|  - `index.md` — Chaka Khan: 1→2 Konzerte
   248|   248|   248|   248|
   249|   249|   249|   249|## [2026-04-26] create | Larry Graham & Graham Central Station
   250|   250|   250|   250|- **Larry Graham & Graham Central Station** waren ebenfalls Support Act für Prince am 23. August 1998 im Hallenstadion Zürich
   251|   251|   251|   251|- Pages created:
   252|   252|   252|   252|  - `entities/larry-graham-and-graham-central-station.md` — 1 Konzert (Support Act)
   253|   253|   253|   253|- Pages updated:
   254|   254|   254|   254|  - `entities/prince.md` — Larry Graham als Support Act ergänzt
   255|   255|   255|   255|  - `entities/chaka-khan.md` — Larry Graham als gemeinsamen Support Act erwähnt
   256|   256|   256|   256|  - `index.md` — Larry Graham eingetragen
   257|   257|   257|   257|  - `queries/concert-collection.md` — Larry Graham zu Verwandte Einträge
   258|   258|   258|   258|
   259|   259|   259|   259|## [2026-04-26] update | Larry Graham — auch Support bei Prince Stuttgart
   260|   260|   260|   260|- **Larry Graham & Graham Central Station** waren ebenfalls Support Act beim Prince-Konzert am **26. Dezember 1998** in der Schleyerhalle Stuttgart
   261|   261|   261|   261|- Pages updated:
   262|   262|   262|   262|  - `entities/larry-graham-and-graham-central-station.md` — +2. Konzert (Stuttgart 26.12.1998)
   263|   263|   263|   263|  - `entities/prince.md` — Larry Graham/Chaka Khan als Support beider 1998-Konzerte vermerkt
   264|   264|   264|   264|  - `index.md` — Larry Graham: 1→2 Konzerte
   265|   265|   265|   265|
   266|   266|   266|   266|## [2026-04-26] create | Madhouse & Lois Lane — Prince-Supports
   267|   267|   267|   267|- **Madhouse** (Prince' Side-Project) — Support Act 4. Juni 1987, Schleyerhalle Stuttgart
   268|   268|   268|   268|- **Lois Lane** — Support Act 8. August 1990, Maimarkthalle Mannheim
   269|   269|   269|   269|- Korrektur: Chaka Khan war **nur** in Zürich Support (nicht in Stuttgart)
   270|   270|   270|   270|- Pages created:
   271|   271|   271|   271|  - `entities/madhouse.md` — 1 Konzert (Support für Prince 1987)
   272|   272|   272|   272|  - `entities/lois-lane.md` — 1 Konzert (Support für Prince 1990)
   273|   273|   273|   273|- Pages updated:
   274|   274|   274|   274|  - `entities/prince.md` — Alle Supports chronologisch aufgelistet + Verwandte Einträge ergänzt
   275|   275|   275|   275|  - `entities/chaka-khan.md` — Klarstellung: nur Zürich
   276|   276|   276|   276|  - `entities/larry-graham-and-graham-central-station.md` — Chaka nur Zürich, Larry beide
   277|   277|   277|   277|  - `index.md` — Madhouse + Lois Lane eingetragen
   278|   278|   278|   278|  - `queries/concert-collection.md` — Madhouse + Lois Lane zu Verwandte Einträge
   279|   279|   279|   279|
   280|   280|   280|   280|## [2026-04-26] update | Curtis Mayfield — Datum präzisiert
   281|   281|   281|   281|- Quelle: setlist.fm
   282|   282|   282|   282|- Curtis Mayfield — **27. März 1990** im **Alten Schützenhaus** Stuttgart (vorher ?/90)
   283|   283|   283|   283|- Pages updated:
   284|   284|   284|   284|  - `entities/curtis-mayfield.md` — Datum + Venue präzisiert
   285|   285|   285|   285|  - `raw/personal/concert-list-2026.md` — Zeile 13 aktualisiert
   286|   286|   286|   286|
   287|   287|   287|   287|## [2026-04-26] update | Bobby Womack — Datum präzisiert
   288|   288|   288|   288|- Quelle: setlist.fm
   289|   289|   289|   289|- Bobby Womack — **10. März 1988** im LKA Longhorn Stuttgart (vorher ?/87 – tatsächlich 1988!)
   290|   290|   290|   290|- Pages updated:
   291|   291|   291|   291|  - `entities/bobby-womack.md` — Datum korrigiert (1988 statt 1987)
   292|   292|   292|   292|  - `raw/personal/concert-list-2026.md` — Zeile 6 aktualisiert
   293|   293|   293|   293|
   294|   294|   294|   294|## [2026-04-26] update | Roy Hargrove — Datum präzisiert
   295|   295|   295|   295|- Quelle: Ticket Erykah Badu
   296|   296|   296|   296|- **Roy Hargrove** war Opening Act für **Erykah Badu** am **19. Juli 2008** bei den Jazz Open Stuttgart
   297|   297|   297|   297|- Datum präzisiert: 7/08 → **19. Juli 2008**
   298|   298|   298|   298|- Pages updated:
   299|   299|   299|   299|  - `entities/roy-hargrove.md` — Datum, Venue, Anmerkungen, Erykah Badu verlinkt
   300|   300|   300|   300|  - `entities/erykah-badu.md` — Roy Hargrove in Verwandte Einträge
   301|   301|   301|   301|  - `raw/personal/concert-list-2026.md` — Zeile 59 aktualisiert
   302|   302|   302|   302|
   303|   303|   303|   303|## [2026-04-26] update | Trombone Shorty — Datum präzisiert
   304|   304|   304|   304|- Trombone Shorty — **5. Dezember 2011** im Theaterhaus Stuttgart
   305|   305|   305|   305|- Pages updated:
   306|   306|   306|   306|  - `entities/trombone-shorty.md` — Datum präzisiert
   307|   307|   307|   307|  - `raw/personal/concert-list-2026.md` — Zeile 74 aktualisiert
   308|   308|   308|   308|
   309|   309|   309|   309|## [2026-04-26] update | Violent Femmes — Jahr präzisiert
   310|   310|   310|   310|- Violent Femmes — **?/85** im Maxim Stuttgart (vorher ?/?)
   311|   311|   311|   311|- Pages updated:
   312|   312|   312|   312|  - `entities/violent-femmes.md` — Jahr auf 1985 gesetzt
   313|   313|   313|   313|  - `raw/personal/concert-list-2026.md` — Zeile 76 aktualisiert
   314|   314|   314|   314|
   315|   315|   315|   315|
   316|   316|   316|## [2026-04-27] ingest | Trombone Shorty — Ticket-Scan hinzugefügt
   317|   317|   317|- Quelle: Original-Ticket (Sammlung Walter Wego)
   318|   318|   318|- Ticket-Scan eingepflegt (roter VVS-Kombi-Eintritt, Rückseite)
   319|   319|   319|- Kaufdatum auf Ticket: 26.10.2011 — Konzertdatum: 5.12.2011 (bestätigt ✅)
   320|   320|   320|- Asset saved: `assets/posters/trombone-shorty/tickets/2011-theaterhaus-stuttgart.jpg`
   321|   321|   321|- Pages updated:
   322|   322|   322|  - `entities/trombone-shorty.md` — Ticket-Bild, Venue präzisiert (Halle T2), Anmerkungen erweitert
   323|   323|   323|  - `log.md` — Eintrag hinzugefügt
   324|   324|   324|  - `index.md` — Status geprüft
   325|   325|   325|
   326|   326|   326|
   327|   327|## [2026-04-27] delete | Prince — falsches Cover entfernt
   328|   328|- Datei `assets/posters/prince/1988-lovesexy-tour.jpg` gelöscht (war kein Tourposter, sondern Bootleg-CD-Cover)
   329|   329|- Datei `assets/posters/prince/tickets/1988-lovesexy-tour.jpg` gelöscht
   330|   330|- Pages updated:
   331|   331|  - `entities/prince.md` — beide Bildverweise entfernt, Caption korrigiert
   332|   332|
   333|   333|
   334|## [2026-04-27] update | Prince — echtes Lovesexy-Poster eingefügt
   335|- Asset saved: `assets/posters/prince/1988-lovesexy-tour.jpg` — Original-Poster gefunden (SA., 27. AUG. '88, Stadion Bieberer Berg Offenbach, hr3 Open Air)
   336|- Pages updated:
   337|  - `entities/prince.md` — Tourposter-Bild und Caption wiederhergestellt (diesmal das echte Poster ✅)
   338|
   339|
## [2026-04-27] update | Prince — Nude-Tour-Poster ersetzt
- Asset updated: `assets/posters/prince/1990-nude-tour.jpg` — Original-SWF3-LIVETIME-Poster (8. August 1990, Maimarkthalle Mannheim)
- Pages updated:
  - `entities/prince.md` — Bild bereits referenziert, nur Datei getauscht

## [2026-04-27] update | The Wright Thing — Details präzisiert
- Quelle: Walter Wego (persönliche Erinnerung), Allgemeine Hotel- und Gastronomie-Zeitung (ahgz)
- **Neue Infos:**
  - Bandleader: **Jason Wright**
  - Stil: Soul, Funk, R'n'B, Pop
  - Wöchentliche Donnerstags-Residency im **ZAP Stuttgart** (1997–2003)
  - **10 Konzerte** zwischen 1999 und 2003 besucht
- **Statistik-Update:** Gesamtzahl 79→88, häufigster Act: Prince→The Wright Thing
- Pages updated:
  - `entities/the-wright-thing.md` — Beschreibung, Tabelle, Anmerkungen, Quellen erweitert
  - `raw/personal/concert-list-2026.md` — "—" → "1999–2003"
  - `queries/concert-collection.md` — The Wright Thing in "Acts mit mehreren Besuchen" (10x), Gesamtzahl 79→88, häufigster Act geändert, updated-Datum

## [2026-04-27] lint | 3 Issues gefixt
- Quelle: Lint-Script (llm-wiki)
- **Gefixt:**
  - `entities/maceo-parker-and-wdr-bigband.md` gelöscht (Konzert bereits in Maceo Parker gelistet)
  - `queries/concert-collection.md` — Verwandter Eintrag maceo-parker-and-wdr-bigband entfernt
  - `SCHEMA.md` — Tags `band` und `live-music` zur Taxonomy hinzugefügt
  - `raw/personal/concert-list-2026.md` — SHA256 neu berechnet (Source Drift behoben)
- Verbleibend: Keine offenen Issues ✅
  - `index.md` — 1→10 Konzerte, updated-Datum

## [2026-04-27] update | Prince — Ticket-Bild 2002 + NPG Music Club
- Quelle: Online gefundenes Ticket (kein Original aus Sammlung Wego)
- **NPG Music Club:** Bei beiden 2002er-Konzerten (13.10. Frankfurt, 30.10. Zürich) als Mitglied beim Soundcheck dabei
- **Prince — 13. Oktober 2002, Festhalle Frankfurt**
  - One Nite Alone… Tour, Innenraum Stehplatz, EUR 52,30
  - Asset saved: `assets/posters/prince/tickets/2002-festhalle-frankfurt.jpg`
- Pages updated:
  - `entities/prince.md` — Ticket-Bild 2002 eingefügt, Beschreibung ergänzt, updated-Datum

## [2026-04-27] update | Prince — CTS-Ticket 1990 (Nude Tour) hinzugefügt
- Quelle: Online gefundenes Ticket (kein Original aus Sammlung Wego)
- **Prince — 8. August 1990, Maimarkthalle Mannheim**
  - CTS-Ticket (Computer Ticket Service) — SWF 3 LIVETIME — Nr. 003 — DM 51,00
  - Asset saved: `assets/posters/prince/tickets/1990-maimarkthalle-cts.jpg`
- **Korrektur:** "SWE 3" → "SWF 3" (Südwestfunk) im bestehenden Eintrag gefixt
- Pages updated:
  - `entities/prince.md` — CTS-Ticket-Bild + Beschreibung ergänzt, "SWE 3"-Tippfehler korrigiert, updated-Datum

## [2026-04-27] update | Black Beat Night 1989 — Mother's Finest, Chaka Khan + Maze
- Quelle: Original-Festivalplakat (Sammlung Walter Wego)
- **Poster gefunden:** Black Beat Night 1989, Liederhalle Stuttgart
- Line-Up: Mother's Finest, Chaka Khan, Maze feat. Frankie Beverly, She Rockers & Lisa M.
- Genauer Tag unbekannt, Jahr 1989 durch Poster bestätigt
- Pages updated:
  - `entities/mothers-finest.md` — Datum — → ?/89, Festival-Info, Poster-Bild, Anmerkungen, Verwandte Einträge
  - `entities/chaka-khan.md` — +3. Konzert (?/89 Black Beat Night), Poster-Bild
  - `entities/maze-feat-frankie-beverly.md` — **NEU** (1 Konzert, Black Beat Night 1989, Poster-Bild)
  - `raw/personal/concert-list-2026.md` — #47 Mother's Finest: — → ?/89; + #81 Chaka Khan (?/89); + #82 Maze feat. Frankie Beverly (?/89)
  - `queries/concert-collection.md` — Gesamtzahl 94→96, Acts 59→60, Chaka Khan 2→3 Konzerte, Maze in Verwandte Einträge
  - `index.md` — Konzerte 94→96, Seiten 71→72, Chaka Khan 2→3, Maze neu
- Assets saved:
  - `assets/posters/mothers-finest/1989-black-beat-night.jpg`
  - `assets/posters/mothers-finest/tickets/1989-black-beat-night.jpg`
  - `assets/posters/chaka-khan/1989-black-beat-night.jpg`
  - `assets/posters/chaka-khan/tickets/1989-black-beat-night.jpg`
  - `assets/posters/maze-feat-frankie-beverly/1989-black-beat-night.jpg`
  - `assets/posters/maze-feat-frankie-beverly/tickets/1989-black-beat-night.jpg`

## [2026-04-27] create | SoulBeAround
- Quelle: Walter Wego (persönliche Angabe)
- **SoulBeAround** — 26. Juli 2014 — Kulturwerk (Open Air), Stuttgart — Lange Ostnacht
- Kein Ticket-Scan vorhanden
- Pages created:
  - `entities/soulbearound.md` — Entity-Page mit 1 Konzert
- Pages updated:
  - `raw/personal/concert-list-2026.md` — +#83 SoulBeAround
  - `queries/concert-collection.md` — Gesamtzahl 96→97, Acts 60→61, Letztes Konzert aktualisiert, SoulBeAround in Verwandte Einträge
  - `index.md` — Konzerte 96→97, Seiten 72→73, SoulBeAround eingetragen

## [2026-04-27] create | Cultured Pearls
- Source: Jazzkantine-Ticket 1996 (Sammlung Walter Wego)
- **Cultured Pearls** als Support-Act für **Jazzkantine** (5. März 1996, Theaterhaus Stuttgart) dokumentiert
- Asset saved: `assets/posters/cultured-pearls/tickets/1996-jazzkantine-support.jpg` (shared mit Jazzkantine)
- Pages created:
  - `entities/cultured-pearls.md` — Support-Only Artist
- Pages updated:
  - `entities/jazzkantine.md` — Verwandte Einträge: Cultured Pearls verlinkt
  - `index.md` — Cultured Pearls eingetragen, Seiten 73→74

## [2026-04-27] create | P.M. Dawn
- Source: De La Soul-Ticket 1991 (Sammlung Walter Wego)
- **P.M. Dawn** als Support-Act für **De La Soul** (15. September 1991, Forum Ludwigsburg) dokumentiert
- Asset saved: `assets/posters/p-m-dawn/tickets/1991-de-la-soul-support.jpg` (shared mit De La Soul)
- Pages created:
  - `entities/p-m-dawn.md` — Support-Only Artist
- Pages updated:
  - `entities/de-la-soul.md` — Verwandte Einträge: P.M. Dawn verlinkt
  - `index.md` — P.M. Dawn eingetragen, Seiten 74→75
- Concert list updated:
  - `raw/personal/concert-list-2026.md` — +84 Cultured Pearls, +85 P.M. Dawn
  - `queries/concert-collection.md` — Gesamtzahl 97→99, Acts 61→63
  - `index.md` — Konzerte 97→99

## [2026-04-27] create | Sovory
- Source: Sheryl Crow-Ticket 1996 (Sammlung Walter Wego)
- **Sovory** als Support-Act für **Sheryl Crow** (13. November 1996, LKA Longhorn Stuttgart) dokumentiert
- Asset saved: `assets/posters/sovory/tickets/1996-sheryl-crow-support.jpg` (shared mit Sheryl Crow)
- Pages created:
  - `entities/sovory.md` — Support-Only Artist
- Pages updated:
  - `entities/sheryl-crow.md` — Verwandte Einträge: Sovory verlinkt
  - `raw/personal/concert-list-2026.md` — +86 Sovory
  - `queries/concert-collection.md` — Gesamtzahl 99→100, Acts 63→64
  - `index.md` — Konzerte 99→100, Seiten 75→76, Sovory eingetragen

## [2026-04-27] create | Daran & Et Les Chaises
- Source: Willy DeVille-Ticket 1996 (Sammlung Walter Wego)
- **Daran & Et Les Chaises** als Support-Act für **Willy DeVille** (4. März 1996, Forum Ludwigsburg) dokumentiert
- Asset saved: `assets/posters/daran-et-les-chaises/tickets/1996-willy-deville-support.jpg` (shared mit Willy DeVille)
- Pages created:
  - `entities/daran-et-les-chaises.md` — Support-Only Artist
- Pages updated:
  - `entities/willy-deville.md` — Verwandte Einträge: Daran & Et Les Chaises verlinkt
  - `raw/personal/concert-list-2026.md` — +87 Daran & Et Les Chaises
  - `queries/concert-collection.md` — Gesamtzahl 100→101, Acts 64→65
  - `index.md` — Konzerte 100→101, Seiten 76→77, Daran & Et Les Chaises eingetragen

## [2026-04-30] create | IMDb-Ratings ins Wiki integrieren (Phasen 1-3)
- Quelle: IMDb CSV-Export (3.993 Titel, 3.589 Filme, 305 Serien)
- **Schema aktualisiert:**
  - `SCHEMA.md` — Tags hinzugefügt: animation, director, documentary, film, series
- **Neue Query-Seite:**
  - `queries/film-history.md` — 3.993 Titel, Statistiken, Top-Listen, Cross-Links zu Konzert-Entities
- **Neue Concept-Seite:**
  - `concepts/film-genres.md` — Genre-Analyse mit Ø-Bewertungen und Mustern
- **Neue Entity-Seiten (Cross-Links zu Konzert-Künstlern):**
  - `entities/purple-rain.md` — ⭐8 — Prince (Regie + Hauptrolle), verlinkt auf [[prince]]
  - `entities/labyrinth.md` — ⭐7 — David Bowie als Jareth, verlinkt auf [[david-bowie]]
  - `entities/blues-brothers.md` — ⭐9 — James Brown Cameo, verlinkt auf [[james-brown]]
  - `entities/get-on-up.md` — ⭐7 — James Brown Biopic, verlinkt auf [[james-brown]]
  - `entities/superfly.md` — ⭐6 — Curtis Mayfield Soundtrack, verlinkt auf [[curtis-mayfield]]
- **Neue Entity-Seiten (Regisseure):**
  - `entities/steven-spielberg.md` — 31 Filme, Ø 7.29
  - `entities/ridley-scott.md` — 26 Filme, Ø 6.77
  - `entities/clint-eastwood.md` — 22 Filme, Ø 6.95
  - `entities/ron-howard.md` — 20 Filme, Ø 6.80
  - `entities/martin-scorsese.md` — 19 Filme, Ø 7.11
  - `entities/brian-de-palma.md` — 19 Filme, Ø 6.79
  - `entities/woody-allen.md` — 18 Filme, Ø 6.33
  - `entities/roland-emmerich.md` — 17 Filme, Ø 5.94
  - `entities/steven-soderbergh.md` — 17 Filme, Ø 6.06
  - `entities/tim-burton.md` — 15 Filme, Ø 6.80
  - `entities/guy-ritchie.md` — 15 Filme, Ø 6.53
  - `entities/barry-levinson.md` — 15 Filme, Ø 6.13
  - `entities/tony-scott.md` — 14 Filme, Ø 6.00
  - `entities/francis-ford-coppola.md` — 13 Filme, Ø 6.92
  - `entities/robert-zemeckis.md` — 13 Filme, Ø 7.08
  - `entities/christopher-nolan.md` — 12 Filme, Ø 7.92 (höchster Ø)
  - `entities/david-fincher.md` — 12 Filme, Ø 7.17
  - `entities/wes-anderson.md` — 12 Filme, Ø 6.83
  - `entities/terry-gilliam.md` — 12 Filme, Ø 6.42
  - `entities/john-landis.md` — 13 Filme, Ø 6.92
  - `entities/james-mangold.md` — 11 Filme, Ø 6.82
- **Bestehende Seiten aktualisiert (Cross-Links zurück):**
  - `entities/prince.md` — 🎬 Purple Rain in Verwandte Einträge
  - `entities/david-bowie.md` — 🎬 Labyrinth in Verwandte Einträge
  - `entities/james-brown.md` — 🎬 Blues Brothers + Get On Up in Verwandte Einträge
  - `entities/curtis-mayfield.md` — 🎬 Superfly in Verwandte Einträge
- **Index aktualisiert:**
  - `index.md` — Seite 77→100, neues Kapitel "Filme & Serien" mit Entities + Regisseuren,
    Concepts um film-genres ergänzt, Queries um film-history ergänzt

## [2026-04-28] lint | 2 Issues gefixt
- Quelle: Lint-Script (llm-wiki)
- **Gefixt:**
  - `SCHEMA.md` — Tag `music` zur Taxonomy hinzugefügt (fehlte bei soulbearound.md)
  - `entities/soulbearound.md` — `confidence: medium` gesetzt (single source)
  - `raw/personal/concert-list-2026.md` — SHA256 neu berechnet (Source Drift behoben)
  - `raw/personal/audiobook-list-2026.md` — SHA256 neu berechnet (Source Drift behoben)
- Verbleibend: Keine offenen Issues ✅

## [2026-04-27] update | The S.O.S. Band — Datum präzisiert
- Quelle: Ticket-Sammlung (Walter Wego)
- The S.O.S. Band — **11. Dezember 1986**, Stadthalle Sindelfingen (vorher ?/86)
- Pages updated:
  - `entities/the-sos-band.md` — ?/86 → 11. Dezember 1986, Anmerkungen aktualisiert
  - `raw/personal/concert-list-2026.md` — Zeile 68 aktualisiert

