package pubnub

pubnub_blocks :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	pubnub_blocks: {
		name:            string
		account?:        string
		cache?:          string
		description?:    string
		keyset:          string
		password?:       string
		state?:          string
		validate_certs?: bool
		application:     string
		changes?:        string
		email?:          string
		event_handlers?: string
	}
}
