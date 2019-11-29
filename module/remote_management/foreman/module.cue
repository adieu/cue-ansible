package foreman

foreman :: {
	name?: string
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	foreman: {
		server_url:  string
		username:    string
		verify_ssl?: bool
		entity:      string
		params:      string
		password:    string
	}
}

katello :: {
	name?: string
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	katello: {
		params:        string
		password:      string
		server_url:    string
		task_timeout?: string
		username:      string
		verify_ssl?:   bool
		action?:       string
		entity:        string
	}
}

wakeonlan :: {
	name?: string
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	wakeonlan: {
		broadcast?: string
		mac:        string
		port?:      string
	}
}
