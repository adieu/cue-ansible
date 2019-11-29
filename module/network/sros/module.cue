package sros

sros_config :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	sros_config: {
		replace?: string
		src?:     string
		backup?:  bool
		backup_options?: {...}
		force?:    bool
		parents?:  string
		lines?:    string
		match?:    string
		save?:     bool
		after?:    string
		before?:   string
		config?:   string
		defaults?: bool
	}
}

sros_rollback :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	sros_rollback: {
		rollback_location?:      string
		state?:                  string
		local_max_checkpoints?:  string
		remote_max_checkpoints?: string
		rescue_location?:        string
	}
}

sros_command :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	sros_command: {
		wait_for?: string
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
	}
}
