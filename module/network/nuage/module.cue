package nuage

nuage_vspk :: {
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	become?:     bool
	name?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	nuage_vspk: {
		type:          string
		auth:          string
		command?:      string
		parent_id?:    string
		state?:        string
		properties?:   string
		children?:     string
		id?:           string
		match_filter?: string
		parent_type?:  string
	}
}
