package misc

riak :: {
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	riak: {
		wait_for_service?:  string
		command?:           string
		config_dir?:        string
		http_conn?:         string
		target_node?:       string
		validate_certs?:    bool
		wait_for_handoffs?: string
		wait_for_ring?:     string
	}
}

elasticsearch_plugin :: {
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	elasticsearch_plugin: {
		plugin_dir?: string
		proxy_port?: string
		src?:        string
		force?:      bool
		name:        string
		plugin_bin?: string
		proxy_host?: string
		state?:      string
		timeout?:    string
		url?:        string
		version?:    string
	}
}

kibana_plugin :: {
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	kibana_plugin: {
		plugin_dir?: string
		state?:      string
		timeout?:    string
		url?:        string
		version?:    string
		force?:      bool
		name:        string
		plugin_bin?: string
	}
}

redis :: {
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	redis: {
		value?:          string
		db?:             string
		flush_mode?:     string
		login_password?: string
		login_port?:     string
		master_port?:    string
		name?:           string
		slave_mode?:     string
		command:         string
		login_host?:     string
		master_host?:    string
	}
}
