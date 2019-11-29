package system

net_banner :: {
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	become?: bool
	name?:   string
	with_items?: [...string]
	net_banner: {
		state?: string
		text?:  string
		banner: string
	}
}

net_logging :: {
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	become?: bool
	name?:   string
	with_items?: [...string]
	net_logging: {
		aggregate?: string
		dest?:      string
		facility?:  string
		level?:     string
		name?:      string
		purge?:     string
		state?:     string
	}
}

net_ping :: {
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	become?: bool
	name?:   string
	with_items?: [...string]
	net_ping: {
		count?:  string
		dest:    string
		source?: string
		state?:  string
		vrf?:    string
	}
}

net_system :: {
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	become?: bool
	name?:   string
	with_items?: [...string]
	net_system: {
		domain_name?:   string
		domain_search?: string
		hostname?:      string
		lookup_source?: string
		name_servers?:  string
		state?:         string
	}
}

net_user :: {
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	become?: bool
	name?:   string
	with_items?: [...string]
	net_user: {
		sshkey?:              string
		update_password?:     string
		configured_password?: string
		name?:                string
		nopassword?:          bool
		privilege?:           string
		role?:                string
		aggregate?:           string
		purge?:               bool
		state?:               string
	}
}
