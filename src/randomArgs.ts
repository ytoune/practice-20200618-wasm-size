export const randomArgs = () => {
	return Array.from({ length: 150000 }, makePair)
}

const makePair = (): [number, number] => [random(), random()]

const random = () => {
	return Math.floor(Math.random() * 9999999)
}
