package dellos10

dellos10_command :: {
	register?: string
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	dellos10_command: {
		wait_for?: [...]
		commands: [...]
		interval?: int
		match?:    string
		retries?:  int
	}
}

dellos10_config :: {
	register?: string
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	dellos10_config: {
		lines?:   string
		match?:   string
		parents?: string
		src?:     string
		save?:    bool
		update?:  string
		after?:   string
		backup?:  bool
		backup_options?: {...}
		before?:  string
		config?:  string
		replace?: string
	}
}

dellos10_facts :: {
	register?: string
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	dellos10_facts: {
		gather_subset?: string
	}
}
