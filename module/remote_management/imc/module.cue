package imc

imc_rest :: {
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	name?: string
	imc_rest: {
		username?:       string
		validate_certs?: bool
		content?:        string
		hostname:        string
		password?:       string
		path?:           string
		protocol?:       string
		timeout?:        string
	}
}

wakeonlan :: {
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	name?: string
	wakeonlan: {
		port?:      string
		broadcast?: string
		mac:        string
	}
}
