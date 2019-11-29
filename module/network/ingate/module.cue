package ingate

ig_config :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	ig_config: {
		add?:            bool
		download?:       bool
		get?:            bool
		filename?:       string
		modify?:         bool
		return_rowid?:   bool
		revert?:         bool
		factory?:        bool
		path?:           string
		store?:          bool
		store_download?: bool
		columns?:        string
		delete?:         bool
		no_response?:    bool
		rowid?:          int
		table?:          string
	}
}

ig_unit_information :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	ig_unit_information: {
	}
}
