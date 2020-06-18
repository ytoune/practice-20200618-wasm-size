// @ts-check

const path = require('path')
const fs = require('fs-extra')

const main = async () => {
	// 実際のプロジェクトではランタイムの影響は小さくなると思われるので
	// ユーザコードの量をかさ増しする
	const length = 10
	await fs.writeFile(path.join(__dirname, '../src/calc1.ts'), makejs(length))
	await fs.writeFile(path.join(__dirname, '../src/lib.rs'), makerust(length))
}

const makejs = (/** @type {number} */ length) => {
	return [
		...Array.from({ length }).map((_, i) => {
			const name = 'calc' + (i || '')
			return `export const ${name} = (a: number, b: number): number => {
	let a1 = a
	let b1 = b
	if (a < b) {
		a1 = b
		b1 = a
	}
	while (b1 != 0) {
		const remainder = a1 % b1
		a1 = b1
		b1 = remainder
	}
	return a1
}`
		}),
	]
		.map(p => p + '\n')
		.join('')
}

const makerust = (/** @type {number} */ length) => {
	return [
		'use wasm_bindgen::prelude::*;',
		...Array.from({ length }).map((_, i) => {
			const name = 'calc' + (i || '')
			return `#[wasm_bindgen]
pub fn ${name}(a: i32, b: i32) -> i32 {
	let mut a1 = a;
	let mut b1 = b;
	if a < b {
		a1 = b;
		b1 = a;
	};
	#[allow(unused_parens)]
	while (b1 != 0) {
		let remainder = a1 % b1;
		a1 = b1;
		b1 = remainder;
	}
	a1
}`
		}),
	]
		.map(p => p + '\n')
		.join('')
}

main().catch(x => {
	console.error(x)
	process.exit(1)
})
