package eric_eccli

eric_eccli_command :: {
	register?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	name?:       string
	when?:       string
	with_items?: [...string]
	become?: bool
	vars?: {...}
	eric_eccli_command: {
		interval?: int
		match?:    string
		retries?:  int
		wait_for?: [...]
		commands: [...]
	}
}
