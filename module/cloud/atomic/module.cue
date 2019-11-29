package atomic

atomic_container :: {
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	atomic_container: {
		rootfs?: string
		state:   string
		values?: string
		backend: string
		image:   string
		mode:    string
		name:    string
	}
}

atomic_host :: {
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	atomic_host: {
		revision?: string
	}
}

atomic_image :: {
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	atomic_image: {
		state?:   string
		backend?: string
		name:     string
		started?: bool
	}
}
