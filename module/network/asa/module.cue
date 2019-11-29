package asa

asa_config :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:   string
	notify?: string | [...string]
	with_items?: [...string]
	asa_config: {
		save?:      bool
		src?:       string
		after?:     string
		backup?:    bool
		before?:    string
		match?:     string
		passwords?: bool
		replace?:   string
		backup_options?: {...}
		config?:   string
		defaults?: bool
		lines?:    string
		parents?:  string
	}
}

asa_og :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:   string
	notify?: string | [...string]
	with_items?: [...string]
	asa_og: {
		group_object?: [...]
		group_type: string
		host_ip?: [...]
		ip_mask?: [...]
		name:         string
		port_eq?:     string
		protocol?:    string
		description?: string
		port_range?:  string
		service_cfg?: string
		state?:       string
	}
}

asa_acl :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:   string
	notify?: string | [...string]
	with_items?: [...string]
	asa_acl: {
		before?:  string
		config?:  string
		force?:   bool
		lines:    string
		match?:   string
		replace?: string
		after?:   string
	}
}

asa_command :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:   string
	notify?: string | [...string]
	with_items?: [...string]
	asa_command: {
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
	}
}
