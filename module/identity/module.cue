package identity

onepassword_info :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	onepassword_info: {
		auto_login?: {...}
		cli_path?: string
		search_terms: [...]
	}
}
