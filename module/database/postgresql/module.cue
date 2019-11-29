package postgresql

postgresql_idx :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_idx: {
		columns?: [...string]
		idxtype?:      string
		schema?:       string
		table:         string
		idxname:       string
		session_role?: string
		state?:        string
		storage_params?: [...string]
		cascade?:    bool
		concurrent?: bool
		cond?:       string
		db?:         string
		tablespace?: string
	}
}

postgresql_owner :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_owner: {
		fail_on_role?: bool
		new_owner:     string
		obj_name?:     string
		obj_type:      string
		reassign_owned_by?: [...string]
		session_role?: string
		db?:           string
	}
}

postgresql_ping :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_ping: {
		db?: string
	}
}

postgresql_db :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_db: {
		lc_collate?:     string
		maintenance_db?: string
		name:            string
		conn_limit?:     string
		owner?:          string
		port?:           int
		lc_ctype?:       string
		session_role?:   string
		state?:          string
		target?:         string
		encoding?:       string
		tablespace?:     string
		target_opts?:    string
		template?:       string
	}
}

postgresql_ext :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_ext: {
		state?:             string
		version?:           string
		cascade?:           bool
		db:                 string
		ssl_mode?:          string
		schema?:            string
		session_role?:      string
		ca_cert?:           string
		login_unix_socket?: string
		name:               string
	}
}

postgresql_pg_hba :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_pg_hba: {
		create?:      bool
		databases?:   string
		method?:      string
		netmask?:     string
		order?:       string
		state?:       string
		backup_file?: string
		contype?:     string
		users?:       string
		dest:         string
		options?:     string
		address?:     string
		backup?:      bool
	}
}

postgresql_query :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_query: {
		autocommit?: bool
		db?:         string
		named_args?: {...}
		path_to_script?: string
		positional_args?: [...]
		query?:        string
		session_role?: string
	}
}

postgresql_slot :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_slot: {
		db?:                  string
		immediately_reserve?: bool
		name:                 string
		output_plugin?:       string
		session_role?:        string
		slot_type?:           string
		state?:               string
	}
}

postgresql_subscription :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_subscription: {
		connparams?: {...}
		publications?: [...]
		relinfo?: bool
		state?:   string
		subsparams?: {...}
		cascade?: bool
		db:       string
		name:     string
		owner?:   string
	}
}

postgresql_user :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_user: {
		conn_limit?:      int
		expires?:         string
		name:             string
		password?:        string
		role_attr_flags?: string
		ca_cert?:         string
		fail_on_user?:    bool
		priv?:            string
		session_role?:    string
		state?:           string
		db?:              string
		groups?: [...string]
		no_password_changes?: bool
		ssl_mode?:            string
		encrypted?:           bool
	}
}

postgresql_set :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_set: {
		db?:           string
		name:          string
		reset?:        bool
		session_role?: string
		value:         string
	}
}

postgresql_copy :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_copy: {
		program?:      bool
		session_role?: string
		dst?:          string
		options?: {...}
		copy_to?: string
		db?:      string
		src?:     string
		columns?: [...string]
		copy_from?: string
	}
}

postgresql_info :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_info: {
		filter?: [...string]
		session_role?: string
		db?:           string
	}
}

postgresql_lang :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_lang: {
		db?:                string
		fail_on_drop?:      bool
		force_trust?:       bool
		login_unix_socket?: string
		trust?:             bool
		cascade?:           bool
		lang:               string
		owner?:             string
		session_role?:      string
		ssl_mode?:          string
		state?:             string
		ca_cert?:           string
	}
}

postgresql_membership :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_membership: {
		target_roles: [...string]
		db?:           string
		fail_on_role?: bool
		groups: [...string]
		session_role?: string
		state?:        string
	}
}

postgresql_privs :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_privs: {
		roles:         string
		type?:         string
		privs?:        string
		database:      string
		grant_option?: bool
		host?:         string
		password?:     string
		ca_cert?:      string
		port?:         int
		ssl_mode?:     string
		state?:        string
		unix_socket?:  string
		fail_on_role?: bool
		objs?:         string
		schema?:       string
		session_role?: string
		target_roles?: string
		login?:        string
	}
}

postgresql_publication :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_publication: {
		cascade?: bool
		db?:      string
		name:     string
		owner?:   string
		parameters?: {...}
		state?: string
		tables?: [...string]
	}
}

postgresql_schema :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_schema: {
		owner?:        string
		session_role?: string
		ssl_mode?:     string
		state?:        string
		ca_cert?:      string
		cascade_drop?: bool
		database?:     string
		name:          string
	}
}

postgresql_tablespace :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_tablespace: {
		set?: {...}
		state?:        string
		tablespace:    string
		db?:           string
		location?:     string
		owner?:        string
		rename_to?:    string
		session_role?: string
	}
}

postgresql_sequence :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_sequence: {
		sequence:      string
		start?:        int
		cascade?:      bool
		db?:           string
		increment?:    int
		newschema?:    string
		schema?:       string
		state?:        string
		cache?:        int
		owner?:        string
		rename_to?:    string
		minvalue?:     int
		data_type?:    string
		maxvalue?:     int
		session_role?: string
		cycle?:        bool
	}
}

postgresql_table :: {
	become?: bool
	with_items?: [...string]
	connection?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_table: {
		columns?: [...string]
		owner?:        string
		rename?:       string
		including?:    string
		like?:         string
		session_role?: string
		storage_params?: [...string]
		unlogged?:   bool
		db?:         string
		tablespace?: string
		truncate?:   bool
		cascade?:    bool
		state?:      string
		table:       string
	}
}
