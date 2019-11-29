package dellos9

dellos9_command :: {
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	dellos9_command: {
		commands: [...]
		interval?: int
		match?:    string
		retries?:  int
		wait_for?: [...]
	}
}

dellos9_config :: {
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	dellos9_config: {
		config?: string
		lines?:  string
		match?:  string
		save?:   bool
		after?:  string
		backup?: bool
		backup_options?: {...}
		src?:     string
		update?:  string
		before?:  string
		parents?: string
		replace?: string
	}
}

dellos9_facts :: {
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	dellos9_facts: {
		gather_subset?: string
	}
}
