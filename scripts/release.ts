import { join } from 'path'
import { readFile, writeFile, readJson, writeJson } from 'fs-extra'
import { publish as publish2git } from 'gh-pages'

const resolve = (...s: string[]) => join(__dirname, '..', ...s)

type Info = Record<string | number, unknown>
type Resolve = (...parts: string[]) => string

type Context = {
	info: Info
	resolve: Resolve
	outdir: string
	version: string
}

export const main = async () => {
	const info = await readPackageJson(resolve)
	const { name, version } = info
	if ('string' !== typeof name) throw new Error('name must be string')
	if ('string' !== typeof version) throw new Error('version must be string')

	const context: Context = { info, resolve, version, outdir: 'dist' }

	// await copyPackageJson(context)
	// await copyReadme(context)

	await publishDir(context)

	console.log('done!')
}

export const readPackageJson = async (resolve: Resolve): Promise<Info> => {
	const json = await readJson(resolve('package.json'))
	if ('object' === typeof json && json) return json
	return {}
}

export const copyPackageJson = async ({ resolve, info, outdir }: Context) => {
	const {
		name,
		description,
		version,
		author,
		license,
		private: private_,
		engines,
		dependencies,
		main,
		bin,
		sideEffects,
	} = info

	const packagerow = {
		name,
		description,
		version,
		main,
		bin,
		engines,
		dependencies,
		author,
		private: private_,
		license,
		sideEffects,
	}

	await writeJson(resolve(outdir, 'package.json'), packagerow, { spaces: 2 })
}

export const copyReadme = async ({ resolve, outdir, version }: Context) => {
	const content = await readFile(resolve('README.md'), 'utf8')
	const majorVersion = getMajorVersion(version)
	const pattern =
		majorVersion !== version ? 'semver:v' + majorVersion : 'v' + version
	const fixedContent = content.replace(/\$VERSION/gu, pattern)
	await writeFile(resolve(outdir, 'README.md'), fixedContent, 'utf8')
}

export const getMajorVersion = (version: string) => {
	const r = /^(\d+)\.\d+\.\d+$/u.exec(version)
	return r ? `${r[1]}.x` : version
}

export const publishDir = async ({ resolve, outdir, version }: Context) => {
	await new Promise((r, j) =>
		publish2git(
			resolve(outdir),
			{
				// branch: 'release',
				// dotfiles: true,
				message: `Release v${version}!!`,
				// tag: `v${version}`,
			},
			e => (e ? j(e) : r()),
		),
	)
}

module.parent ||
	main().catch(x => {
		console.error(x)
		process.exit(1)
	})
