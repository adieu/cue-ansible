package dellos6

dellos6_facts :: {
	register?: string
	notify?:   string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	dellos6_facts: {
		gather_subset?: string
	}
}

dellos6_command :: {
	register?: string
	notify?:   string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	dellos6_command: {
		wait_for?: [...]
		commands: [...]
		interval?: int
		match?:    string
		retries?:  int
	}
}

dellos6_config :: {
	register?: string
	notify?:   string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	dellos6_config: {
		backup?: bool
		backup_options?: {...}
		before?:  string
		config?:  string
		match?:   string
		replace?: string
		save?:    bool
		after?:   string
		src?:     string
		parents?: string
		update?:  string
		lines?:   string
	}
}
