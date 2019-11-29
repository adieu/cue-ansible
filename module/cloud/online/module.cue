package online

online_server_facts :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	online_server_facts: {
	}
}

online_server_info :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	online_server_info: {
	}
}

online_user_facts :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	online_user_facts: {
	}
}

online_user_info :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	online_user_info: {
	}
}
