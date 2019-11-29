package edgeos

edgeos_config :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	edgeos_config: {
		backup?: bool
		backup_options?: {...}
		comment?: string
		config?:  string
		lines?:   string
		match?:   string
		save?:    bool
		src?:     string
	}
}

edgeos_facts :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	edgeos_facts: {
		gather_subset?: string
	}
}

edgeos_command :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	edgeos_command: {
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
	}
}
