package opx

opx_cps :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	with_items?: [...string]
	connection?: string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	opx_cps: {
		operation?:    string
		qualifier?:    string
		attr_data?:    string
		attr_type?:    string
		commit_event?: bool
		db?:           bool
		module_name?:  string
	}
}
