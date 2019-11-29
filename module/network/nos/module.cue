package nos

nos_command :: {
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nos_command: {
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
	}
}

nos_config :: {
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nos_config: {
		backup_options?: {...}
		diff_against?:        string
		diff_ignore_lines?:   string
		before?:              string
		match?:               string
		multiline_delimiter?: string
		src?:                 string
		parents?:             string
		replace?:             string
		after?:               string
		backup?:              bool
		intended_config?:     string
		lines?:               string
		running_config?:      string
	}
}

nos_facts :: {
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nos_facts: {
		gather_subset?: string
	}
}
