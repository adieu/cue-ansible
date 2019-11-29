package apconos

apconos_command :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	apconos_command: {
		interval?: int
		match?:    string
		retries?:  int
		wait_for?: [...]
		commands: [...]
	}
}
