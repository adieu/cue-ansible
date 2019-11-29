package mongodb

mongodb_shard :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mongodb_shard: {
		login_database?: string
		login_host?:     string
		shard:           string
		ssl?:            bool
		ssl_cert_reqs?:  string
		state?:          string
		login_password?: string
		login_port?:     string
		login_user?:     string
	}
}

mongodb_user :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mongodb_user: {
		login_port?:      string
		name:             string
		state?:           string
		database:         string
		login_database?:  string
		login_password?:  string
		password?:        string
		update_password?: string
		login_host?:      string
		login_user?:      string
		ssl_cert_reqs?:   string
		replica_set?:     string
		roles?:           string
		ssl?:             bool
	}
}

mongodb_parameter :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mongodb_parameter: {
		value:           string
		login_host?:     string
		login_password?: string
		param:           string
		param_type?:     string
		replica_set?:    string
		ssl?:            bool
		database:        string
		login_database?: string
		login_port?:     string
		login_user?:     string
	}
}

mongodb_replicaset :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mongodb_replicaset: {
		login_password?: string
		members?: [...]
		ssl?:                     bool
		protocol_version?:        int
		replica_set?:             string
		chaining_allowed?:        bool
		election_timeout_millis?: int
		login_database?:          string
		login_port?:              int
		heartbeat_timeout_secs?:  int
		login_host?:              string
		arbiter_at_index?:        int
		login_user?:              string
		ssl_cert_reqs?:           string
		validate?:                bool
	}
}
