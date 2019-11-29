package hpilo

hpilo_boot :: {
	register?:   string
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	hpilo_boot: {
		login?:       string
		media?:       string
		password?:    string
		ssl_version?: string
		state?:       string
		force?:       bool
		host:         string
		image?:       string
	}
}

hpilo_info :: {
	register?:   string
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	hpilo_info: {
		ssl_version?: string
		host:         string
		login?:       string
		password?:    string
	}
}

hponcfg :: {
	register?:   string
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	hponcfg: {
		minfw?:      string
		path:        string
		verbose?:    bool
		executable?: string
	}
}

wakeonlan :: {
	register?:   string
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	wakeonlan: {
		mac:        string
		port?:      string
		broadcast?: string
	}
}
