const cache = new Map();

export function persist(gen) {
	let key = gen.toString();
	let value = cache.get(key);
	if (value === undefined) {
		value = gen();
		cache.set(key, value);
	}

	return value;
}
