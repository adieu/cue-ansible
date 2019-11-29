package files

net_get :: {
	name?: string
	vars?: {...}
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	net_get: {
		dest?:     string
		protocol?: string
		src:       string
	}
}

net_put :: {
	name?: string
	vars?: {...}
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	net_put: {
		src:       string
		dest?:     string
		mode?:     string
		protocol?: string
	}
}
