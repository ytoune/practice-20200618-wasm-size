// @ts-check

const path = require('path')
const express = require('express')

const main = () => {
	const app = express()

	app.use(express.static(path.join(__dirname, '../dist')))
	app.listen(3030, () => console.log('start'))
}

main()
