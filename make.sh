set -Ceu

node scripts/makefile.js
wasm-pack build
wasm-snip -o pkg/calc.wasm pkg/calc_bg.wasm
yarn prebuild
yarn build0
yarn build1
yarn build2
yarn build3
