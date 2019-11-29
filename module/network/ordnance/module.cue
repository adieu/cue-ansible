package ordnance

ordnance_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	ordnance_facts: {
		gather_subset?: string
	}
}

ordnance_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	ordnance_config: {
		backup?:              bool
		lines?:               string
		multiline_delimiter?: string
		parents?:             string
		replace?:             string
		save?:                bool
		after?:               string
		config?:              string
		defaults?:            bool
		match?:               string
		src?:                 string
		before?:              string
	}
}
