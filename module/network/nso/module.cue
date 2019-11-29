package nso

nso_verify :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	register?:   string
	when?:       string
	connection?: string
	become?:     bool
	nso_verify: {
		data: string
	}
}

nso_action :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	register?:   string
	when?:       string
	connection?: string
	become?:     bool
	nso_action: {
		input?:           string
		output_invalid?:  string
		output_required?: string
		path:             string
		validate_strict?: bool
	}
}

nso_config :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	register?:   string
	when?:       string
	connection?: string
	become?:     bool
	nso_config: {
		data: string
	}
}

nso_query :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	register?:   string
	when?:       string
	connection?: string
	become?:     bool
	nso_query: {
		fields: string
		xpath:  string
	}
}

nso_show :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	register?:   string
	when?:       string
	connection?: string
	become?:     bool
	nso_show: {
		path:         string
		operational?: bool
	}
}
