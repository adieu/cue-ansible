package infinidat

infini_export_client :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?:   string
	become?: bool
	infini_export_client: {
		state?:          string
		access_mode?:    string
		client:          string
		export:          string
		no_root_squash?: bool
	}
}

infini_fs :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?:   string
	become?: bool
	infini_fs: {
		name:   string
		pool:   string
		size?:  string
		state?: string
	}
}

infini_host :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?:   string
	become?: bool
	infini_host: {
		name:    string
		state?:  string
		volume?: string
		wwns?:   string
	}
}

infini_pool :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?:   string
	become?: bool
	infini_pool: {
		name:       string
		size?:      string
		ssd_cache?: bool
		state?:     string
		vsize?:     string
	}
}

infini_vol :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?:   string
	become?: bool
	infini_vol: {
		size?:  string
		state?: string
		name:   string
		pool:   string
	}
}

infini_export :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?:   string
	become?: bool
	infini_export: {
		inner_path?:  string
		name:         string
		state?:       string
		client_list?: string
		filesystem:   string
	}
}
