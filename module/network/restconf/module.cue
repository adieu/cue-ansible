package restconf

restconf_config :: {
	vars?: {...}
	when?:       string
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	restconf_config: {
		content?: string
		format?:  string
		method?:  string
		path:     string
	}
}

restconf_get :: {
	vars?: {...}
	when?:       string
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	restconf_get: {
		content?: string
		output?:  string
		path:     string
	}
}
