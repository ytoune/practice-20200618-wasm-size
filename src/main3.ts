// eslint-disable-next-line @typescript-eslint/ban-ts-comment
// @ts-ignore
import { calc } from './test10.wasm'
import { randomArgs } from './randomArgs'
randomArgs()
const btn = document.createElement('button')
document.body.appendChild(btn)
btn.textContent = 'start'
btn.addEventListener('click', () => {
	const args = randomArgs()
	calc(0, 8)
	calc(12, 8)
	calc(3400, 6596)
	const s = performance.now()
	const no = calc(12707, 12319)
	for (const p of args) calc(p[0], p[1])
	const e = performance.now()
	const el = document.createElement('p')
	el.textContent = `${no} (${e - s})`
	document.body.appendChild(el)
})
