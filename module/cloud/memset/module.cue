package memset

memset_zone_record :: {
	notify?: string | [...string]
	with_items?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	memset_zone_record: {
		address:   string
		priority?: string
		relative?: bool
		zone:      string
		api_key:   string
		record?:   string
		state?:    string
		ttl?:      string
		type:      string
	}
}

memset_dns_reload :: {
	notify?: string | [...string]
	with_items?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	memset_dns_reload: {
		api_key: string
		poll?:   bool
	}
}

memset_memstore_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	memset_memstore_info: {
		api_key: string
		name:    string
	}
}

memset_server_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	memset_server_info: {
		api_key: string
		name:    string
	}
}

memset_zone :: {
	notify?: string | [...string]
	with_items?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	memset_zone: {
		api_key: string
		force?:  bool
		name:    string
		state:   string
		ttl?:    string
	}
}

memset_zone_domain :: {
	notify?: string | [...string]
	with_items?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	memset_zone_domain: {
		api_key: string
		domain:  string
		state?:  string
		zone:    string
	}
}
