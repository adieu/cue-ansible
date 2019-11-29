package webfaction

webfaction_app :: {
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	notify?: string | [...string]
	webfaction_app: {
		machine?:       string
		state?:         string
		extra_info?:    string
		login_name:     string
		name:           string
		port_open?:     bool
		type:           string
		autostart?:     bool
		login_password: string
	}
}

webfaction_db :: {
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	notify?: string | [...string]
	webfaction_db: {
		type:           string
		login_name:     string
		login_password: string
		machine?:       string
		name:           string
		password?:      string
		state?:         string
	}
}

webfaction_domain :: {
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	notify?: string | [...string]
	webfaction_domain: {
		login_name:     string
		login_password: string
		name:           string
		state?:         string
		subdomains?:    string
	}
}

webfaction_mailbox :: {
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	notify?: string | [...string]
	webfaction_mailbox: {
		mailbox_password: string
		state?:           string
		login_name:       string
		login_password:   string
		mailbox_name:     string
	}
}

webfaction_site :: {
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	notify?: string | [...string]
	webfaction_site: {
		login_password: string
		name:           string
		site_apps?:     string
		state?:         string
		subdomains?:    string
		host:           string
		https?:         bool
		login_name:     string
	}
}
