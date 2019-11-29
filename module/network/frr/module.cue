package frr

frr_bgp :: {
	register?: string
	tags?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	frr_bgp: {
		config?:    string
		operation?: string
	}
}

frr_facts :: {
	register?: string
	tags?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	frr_facts: {
		gather_subset?: string
	}
}
