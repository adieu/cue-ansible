package heroku

heroku_collaborator :: {
	name?: string
	with_items?: [...string]
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?: string
	heroku_collaborator: {
		api_key?:             string
		apps:                 string
		state?:               string
		suppress_invitation?: bool
		user:                 string
	}
}
