// main.ts — entry program for the news-image-20261121 rebuild.
// Node 22, standard library only.
//
// Copies the pre-rendered entry.png (produced by ./render.sh from page.html)
// into $MAKEFUN_OUTPUT_DIR. It writes nowhere else: every output path goes
// through $MAKEFUN_OUTPUT_DIR, and nothing is written to the working
// directory or any relative path.

import { copyFileSync, existsSync, mkdirSync, statSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const here = dirname(fileURLToPath(import.meta.url));

const outDir = process.env.MAKEFUN_OUTPUT_DIR;
if (!outDir) {
  console.error("main.ts: MAKEFUN_OUTPUT_DIR is not set");
  process.exit(1);
}

const source = join(here, "entry.png");
if (!existsSync(source)) {
  console.error(`main.ts: ${source} not found — run ./render.sh first`);
  process.exit(1);
}

mkdirSync(outDir, { recursive: true });
const target = join(outDir, "entry.png");
copyFileSync(source, target);

// Integrity check: the copy must be byte-for-byte the same size as the source.
if (statSync(source).size !== statSync(target).size) {
  console.error("main.ts: copied entry.png size does not match the source");
  process.exit(1);
}
console.log("wrote entry.png to MAKEFUN_OUTPUT_DIR");
