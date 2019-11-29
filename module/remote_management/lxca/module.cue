package lxca

lxca_cmms :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	become?:     bool
	lxca_cmms: {
		chassis?:         string
		command_options?: string
		uuid?:            string
	}
}

lxca_nodes :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	become?:     bool
	lxca_nodes: {
		chassis?:         string
		command_options?: string
		uuid?:            string
	}
}

wakeonlan :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	become?:     bool
	wakeonlan: {
		broadcast?: string
		mac:        string
		port?:      string
	}
}
