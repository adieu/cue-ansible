package aruba

aruba_command :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aruba_command: {
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
	}
}

aruba_config :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aruba_config: {
		after?:             string
		backup?:            bool
		diff_against?:      string
		diff_ignore_lines?: string
		lines?:             string
		before?:            string
		intended_config?:   string
		match?:             string
		replace?:           string
		encrypt?:           bool
		parents?:           string
		src?:               string
		backup_options?: {...}
		running_config?: string
		save_when?:      string
	}
}
