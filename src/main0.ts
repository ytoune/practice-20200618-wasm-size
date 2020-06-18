// eslint-disable-next-line @typescript-eslint/ban-ts-comment
// @ts-ignore
import { calc as calcwasm } from '../pkg/calc.wasm'
import { calc as calcjs } from './calc1'
import { randomArgs } from './randomArgs'
randomArgs()
const btn = document.createElement('button')
document.body.appendChild(btn)
btn.textContent = 'start'
calcjs(0, 8)
calcjs(12, 8)
calcjs(3400, 6596)
calcwasm(0, 8)
calcwasm(12, 8)
calcwasm(3400, 6596)
btn.addEventListener('click', () => {
	const args = randomArgs()
	{
		const s = Date.now()
		const no = calcjs(12707, 12319)
		for (const p of args) {
			calcjs(p[0], p[1])
		}
		const e = Date.now()
		const el = document.createElement('p')
		el.textContent = `js: ${no} (${e - s})`
		document.body.appendChild(el)
	}
	{
		const s = Date.now()
		const no = calcwasm(12707, 12319)
		for (const p of args) {
			calcwasm(p[0], p[1])
		}
		const e = Date.now()
		const el = document.createElement('p')
		el.textContent = `wasm: ${no} (${e - s})`
		document.body.appendChild(el)
	}
})
