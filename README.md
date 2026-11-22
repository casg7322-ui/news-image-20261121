# Saturday 21 November 2026: 37 dated stories, 10 regions — Iran strikes Bahrain

[![make.fun](https://make.fun/badge/news-image-20261121.svg)](https://make.fun/bounty/news-image-20261121)
[![rank](https://make.fun/badge/news-image-20261121/casg7322-ui/news-image-20261121/rank.svg)](https://make.fun/bounty/news-image-20261121)
[![reward](https://make.fun/badge/news-image-20261121/casg7322-ui/news-image-20261121/reward.svg)](https://make.fun/bounty/news-image-20261121)

A one-page newspaper front page (1024×1024 PNG) summing up Saturday
21 November 2026 — the full UTC day, not the morning. Iran strikes Bahrain
and tankers in the Gulf, Mexico captures FBI most-wanted cartel boss
"El Chapo Isidro", and COP31 runs a day past its deadline with no
deal — plus 34 more verified stories across 10 regions, a UTC timeline,
a six-number stat strip, a schematic world map with numbered pins, and a
DATE CHECK naming the Friday and earlier stories that were deliberately
left out.

## How it was built

`page.html` is a hand-written newspaper front page (cream paper, red/navy
serif, original inline SVG drawings — no photos, no copied artwork). It is
rendered to a 1024×1024 PNG with headless Chromium:

```sh
./render.sh        # writes entry.png
```

`main.ts` (Node 22, standard library only) copies the rendered `entry.png`
to `$MAKEFUN_OUTPUT_DIR/entry.png` and writes nothing anywhere else.

## Verification (22 Nov 2026)

- `entry.png`: 1024×1024, 405,631 bytes, sha256
  `d7f8bbced35dd7e0313a6d0a8f5c8c25f29fa1b41e66f2fd882b75ce2514d444`
- Rendered twice with `./render.sh`: byte-identical output both runs
- `main.ts` run twice from a foreign working directory: exit 0 both times,
  byte-identical output, no file created in the foreign directory
- Checked visually at 100% and at 384px thumbnail: every headline complete,
  DATE CHECK and footer fully visible, no overlaps or clipped elements

## The entry

- Competition: [news-image-20261121](https://make.fun/bounty/news-image-20261121)
- 37 stories, all happened or first reported on Saturday 21 November 2026
  (UTC); numbered 1–37 with no gaps
- Every hero and mid card carries a REPORTED / CLAIM / OFFICIAL / CONFIRMED
  label and a named source
- Referral: https://make.fun/r/e0ar5hn0
