package mssql

mssql_db :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	mssql_db: {
		login_port?:     string
		login_user?:     string
		name:            string
		state?:          string
		target?:         string
		autocommit?:     bool
		login_host?:     string
		login_password?: string
	}
}
