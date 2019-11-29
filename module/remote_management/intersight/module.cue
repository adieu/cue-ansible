package intersight

intersight_info :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	intersight_info: {
		server_names: [...]
	}
}

intersight_rest_api :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	intersight_rest_api: {
		query_params?: {...}
		resource_path:  string
		state?:         string
		update_method?: string
		api_body?: {...}
	}
}

wakeonlan :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	wakeonlan: {
		broadcast?: string
		mac:        string
		port?:      string
	}
}
