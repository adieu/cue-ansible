package helper

meta :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	when?:   string
	with_items?: [...string]
	connection?: string
	meta: {
		free_form: string
	}
}
