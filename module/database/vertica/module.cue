package vertica

vertica_configuration :: {
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	with_items?: [...string]
	vertica_configuration: {
		login_user?:     string
		name:            string
		port?:           string
		value:           string
		cluster?:        string
		db?:             string
		login_password?: string
	}
}

vertica_info :: {
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	with_items?: [...string]
	vertica_info: {
		login_password?: string
		login_user?:     string
		port?:           string
		cluster?:        string
		db?:             string
	}
}

vertica_role :: {
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	with_items?: [...string]
	vertica_role: {
		login_user?:     string
		name:            string
		port?:           string
		state?:          string
		assigned_roles?: string
		cluster?:        string
		db?:             string
		login_password?: string
	}
}

vertica_schema :: {
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	with_items?: [...string]
	vertica_schema: {
		db?:             string
		login_user?:     string
		state?:          string
		name:            string
		owner?:          string
		port?:           string
		usage_roles?:    string
		cluster?:        string
		create_roles?:   string
		login_password?: string
	}
}

vertica_user :: {
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	with_items?: [...string]
	vertica_user: {
		cluster?:        string
		expired?:        bool
		ldap?:           bool
		login_user?:     string
		port?:           string
		state?:          string
		db?:             string
		login_password?: string
		name:            string
		password?:       string
		profile?:        string
		resource_pool?:  string
		roles?:          string
	}
}
