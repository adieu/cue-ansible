package inventory

add_host :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	add_host: {
		name: string
		groups?: [...]
	}
}

group_by :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	group_by: {
		key: string
		parents?: [...]
	}
}
