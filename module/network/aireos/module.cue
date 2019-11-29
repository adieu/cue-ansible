package aireos

aireos_config :: {
	when?:       string
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	aireos_config: {
		backup?: bool
		backup_options?: {...}
		diff_against?:      string
		match?:             string
		src?:               string
		after?:             string
		before?:            string
		diff_ignore_lines?: string
		intended_config?:   string
		lines?:             string
		running_config?:    string
		save?:              bool
		save_when?:         string
	}
}

aireos_command :: {
	when?:       string
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	aireos_command: {
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
	}
}
