package enos

enos_command :: {
	vars?: {...}
	notify?:   string | [...string]
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	enos_command: {
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
		commands:  string
	}
}

enos_config :: {
	vars?: {...}
	notify?:   string | [...string]
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	enos_config: {
		replace?: string
		before?:  string
		comment?: string
		lines?:   string
		parents?: string
		config?:  string
		match?:   string
		src?:     string
		admin?:   bool
		after?:   string
		backup?:  bool
		backup_options?: {...}
	}
}

enos_facts :: {
	vars?: {...}
	notify?:   string | [...string]
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	enos_facts: {
		gather_subset?: string
	}
}
