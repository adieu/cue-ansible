package cumulus

nclu :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	nclu: {
		atomic?:      bool
		commands?:    string
		commit?:      bool
		description?: string
		template?:    string
		abort?:       bool
	}
}
