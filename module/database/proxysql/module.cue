package proxysql

proxysql_mysql_users :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	become?: bool
	proxysql_mysql_users: {
		transaction_persistent?: bool
		use_ssl?:                bool
		active?:                 bool
		backend?:                bool
		default_hostgroup?:      string
		fast_forward?:           bool
		password?:               string
		state?:                  string
		default_schema?:         string
		frontend?:               bool
		max_connections?:        string
		username:                string
	}
}

proxysql_query_rules :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	become?: bool
	proxysql_query_rules: {
		timeout?:               string
		cache_ttl?:             string
		delay?:                 string
		match_pattern?:         string
		mirror_hostgroup?:      string
		retries?:               string
		flagOUT?:               string
		flagIN?:                string
		log?:                   bool
		username?:              string
		match_digest?:          string
		replace_pattern?:       string
		rule_id?:               string
		state?:                 string
		proxy_addr?:            string
		schemaname?:            string
		apply?:                 bool
		digest?:                string
		mirror_flagOUT?:        string
		active?:                bool
		client_addr?:           string
		force_delete?:          bool
		comment?:               string
		proxy_port?:            string
		destination_hostgroup?: string
		error_msg?:             string
		negate_match_pattern?:  bool
	}
}

proxysql_replication_hostgroups :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	become?: bool
	proxysql_replication_hostgroups: {
		reader_hostgroup: string
		state?:           string
		writer_hostgroup: string
		comment?:         string
	}
}

proxysql_scheduler :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	become?: bool
	proxysql_scheduler: {
		arg5?:         string
		comment?:      string
		interval_ms?:  string
		state?:        string
		arg3?:         string
		arg4?:         string
		arg2?:         string
		filename:      string
		force_delete?: bool
		active?:       bool
		arg1?:         string
	}
}

proxysql_backend_servers :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	become?: bool
	proxysql_backend_servers: {
		status?:              string
		use_ssl?:             bool
		weight?:              string
		compression?:         string
		max_latency_ms?:      string
		state?:               string
		max_connections?:     string
		max_replication_lag?: string
		port?:                string
		comment?:             string
		hostgroup_id?:        string
		hostname:             string
	}
}

proxysql_global_variables :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	become?: bool
	proxysql_global_variables: {
		value?:   string
		variable: string
	}
}

proxysql_manage_config :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	become?: bool
	proxysql_manage_config: {
		config_settings: string
		direction:       string
		action:          string
		config_layer:    string
	}
}
