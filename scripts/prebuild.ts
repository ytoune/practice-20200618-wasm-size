import { join } from 'path'
import { remove, mkdirp, writeFile } from 'fs-extra'

const content = () => `<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>tests</title>
</head>
<body>
<p>下記リンクに飛んだあと start を何度か押してみてください。<br>
カッコ内にミリ秒単位で実行時間が表示されます。</p>
<p><a href="./dist1/index1.html">js</a></p>
<p><a href="./dist2/index2.html">wasm from rust</a></p>
<p><a href="./dist3/index3.html">wasm from wat</a></p>
<hr/>
<p><a href="./dist0/index0.html">比較用</a></p>
</body>
</html>
`

module.parent ||
	remove(join(__dirname, '../dist'))
		.then(() => mkdirp(join(__dirname, '../dist')))
		.then(() => writeFile(join(__dirname, '../dist/index.html'), content()))
		.catch(x => {
			console.error(x)
			process.exit(1)
		})
