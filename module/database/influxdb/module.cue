package influxdb

influxdb_retention_policy :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	influxdb_retention_policy: {
		database_name: string
		default:       string
		duration:      string
		policy_name:   string
		replication:   string
	}
}

influxdb_user :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	influxdb_user: {
		grants?:        string
		state?:         string
		user_name:      string
		user_password?: string
		admin?:         bool
	}
}

influxdb_write :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	influxdb_write: {
		database_name: string
		data_points:   string
	}
}

influxdb_database :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	influxdb_database: {
		state?:        string
		database_name: string
	}
}

influxdb_query :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	influxdb_query: {
		database_name: string
		query:         string
	}
}
