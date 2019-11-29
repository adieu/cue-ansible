package opendj

opendj_backendprop :: {
	become?: bool
	name?:   string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	opendj_backendprop: {
		hostname:       string
		name:           string
		opendj_bindir?: string
		value:          string
		backend:        string
		password?:      string
		passwordfile?:  string
		port:           string
		state?:         string
		username?:      string
	}
}

onepassword_info :: {
	become?: bool
	name?:   string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	onepassword_info: {
		auto_login?: {...}
		cli_path?: string
		search_terms: [...]
	}
}
