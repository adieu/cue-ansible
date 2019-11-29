package voss

voss_command :: {
	when?:       string
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	voss_command: {
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
	}
}

voss_config :: {
	when?:       string
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	voss_config: {
		after?:  string
		backup?: bool
		backup_options?: {...}
		intended_config?:   string
		running_config?:    string
		save_when?:         string
		defaults?:          bool
		diff_against?:      string
		src?:               string
		before?:            string
		replace?:           string
		diff_ignore_lines?: string
		lines?:             string
		match?:             string
		parents?:           string
	}
}

voss_facts :: {
	when?:       string
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	voss_facts: {
		gather_subset?: string
	}
}
