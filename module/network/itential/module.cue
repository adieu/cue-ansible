package itential

iap_start_workflow :: {
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	iap_start_workflow: {
		iap_port:        string
		token_key:       string
		validate_certs?: bool
		variables: {...}
		workflow_name: string
		description:   string
		https?:        bool
		iap_fqdn:      string
	}
}

iap_token :: {
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	iap_token: {
		https?:          bool
		iap_fqdn:        string
		iap_port:        string
		password:        string
		username:        string
		validate_certs?: bool
	}
}
