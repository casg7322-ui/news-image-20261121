# Saturday 21 November 2026 — The World in One Day

[![make.fun](https://make.fun/badge/news-image-20261121.svg)](https://make.fun/bounty/news-image-20261121)
[![rank](https://make.fun/badge/news-image-20261121/casg7322-ui/news-image-20261121/rank.svg)](https://make.fun/bounty/news-image-20261121)
[![reward](https://make.fun/badge/news-image-20261121/casg7322-ui/news-image-20261121/reward.svg)](https://make.fun/bounty/news-image-20261121)

One front page that sums up Saturday 21 November 2026: COP31 running into
overtime, three Houthi missiles intercepted over Riyadh, and a magnitude 6.7
earthquake in central Peru — plus 29 more verified stories across 7 regions,
a 6-number stat strip, a schematic world map with numbered pins, and a DATE
CHECK naming the Friday and earlier stories that were deliberately left out.

## How it was built

`page.html` is a hand-written newspaper front page (cream paper, red/navy
serif, original SVG drawings — no photos, no copied artwork). It is rendered
to a 1024×1024 PNG with headless Chromium:

```sh
./render.sh        # writes out/entry.png
```

`main.ts` (Node 22, standard library only) copies the rendered `entry.png`
to `$MAKEFUN_OUTPUT_DIR/entry.png` and writes nothing anywhere else.

## The entry

- Competition: [news-image-20261121](https://make.fun/c/news-image-20261121)
- 32 stories, all happened or first reported on Saturday 21 November 2026
- Sources named beside every story; REPORTED / CLAIM / FORECAST labels
- Referral: https://make.fun/r/e0ar5hn0
