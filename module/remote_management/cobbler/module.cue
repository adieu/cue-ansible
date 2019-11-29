package cobbler

cobbler_sync :: {
	name?:     string
	register?: string
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	cobbler_sync: {
		host?:           string
		password:        string
		port?:           string
		use_ssl?:        bool
		username?:       string
		validate_certs?: bool
	}
}

cobbler_system :: {
	name?:     string
	register?: string
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	cobbler_system: {
		host?:           string
		interfaces?:     string
		properties?:     string
		state?:          string
		sync?:           bool
		validate_certs?: bool
		name?:           string
		password:        string
		port?:           string
		use_ssl?:        bool
		username?:       string
	}
}

wakeonlan :: {
	name?:     string
	register?: string
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	wakeonlan: {
		mac:        string
		port?:      string
		broadcast?: string
	}
}
