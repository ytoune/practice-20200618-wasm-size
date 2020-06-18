export const randomArgs = () => {
	return Array.from({ length: 50 }, makePair)
}

const makePair = (): [number, number] => [random(), random()]

const random = () => {
	return Math.floor(Math.random() * 999999)
}
