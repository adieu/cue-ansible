package ironware

ironware_command :: {
	name?:     string
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	when?:   string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	ironware_command: {
		match?:    string
		retries?:  string
		wait_for?: string
		commands:  string
		interval?: string
	}
}

ironware_config :: {
	name?:     string
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	when?:   string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	ironware_config: {
		backup?: bool
		backup_options?: {...}
		commit?:    string
		lines?:     string
		parents?:   string
		save_when?: string
		update?:    string
		after?:     string
		before?:    string
		config?:    string
		match?:     string
		replace?:   string
		src?:       string
	}
}

ironware_facts :: {
	name?:     string
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	when?:   string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	ironware_facts: {
		gather_subset?: string
	}
}
