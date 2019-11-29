package mysql

mysql_variables :: {
	name?: string
	when?: string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	mysql_variables: {
		variable: string
		mode?:    string
		value?:   string
	}
}

mysql_db :: {
	name?: string
	when?: string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	mysql_db: {
		ignore_tables?: string
		quick?:         bool
		name: [...string]
		single_transaction?: bool
		state?:              string
		target?:             string
		collation?:          string
		encoding?:           string
		hex_blob?:           bool
	}
}

mysql_info :: {
	name?: string
	when?: string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	mysql_info: {
		filter?: [...string]
		login_db?: string
	}
}

mysql_replication :: {
	name?: string
	when?: string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	mysql_replication: {
		master_delay?:         int
		master_ssl_cipher?:    string
		master_user?:          string
		relay_log_pos?:        int
		channel?:              string
		connection_name?:      string
		master_ssl_cert?:      string
		mode?:                 string
		master_auto_position?: bool
		master_port?:          int
		master_log_file?:      string
		master_ssl_ca?:        string
		master_ssl_capath?:    string
		master_ssl_key?:       string
		relay_log_file?:       string
		master_connect_retry?: int
		master_host?:          string
		master_ssl?:           bool
		master_use_gtid?:      string
		master_log_pos?:       int
		master_password?:      string
	}
}

mysql_user :: {
	name?: string
	when?: string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	mysql_user: {
		append_privs?:         bool
		check_implicit_admin?: bool
		priv?:                 string
		sql_log_bin?:          bool
		state?:                string
		encrypted?:            bool
		host?:                 string
		host_all?:             bool
		name:                  string
		password?:             string
		update_password?:      string
	}
}
