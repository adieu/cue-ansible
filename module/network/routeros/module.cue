package routeros

routeros_command :: {
	with_items?: [...string]
	name?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	when?:       string
	notify?:     string | [...string]
	routeros_command: {
		retries?:  string
		wait_for?: string
		commands:  string
		interval?: string
		match?:    string
	}
}

routeros_facts :: {
	with_items?: [...string]
	name?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	when?:       string
	notify?:     string | [...string]
	routeros_facts: {
		gather_subset?: string
	}
}
