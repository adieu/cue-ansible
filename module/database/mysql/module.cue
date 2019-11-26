package mysql

mysql_db :: {

	// A list of table names that will be ignored in the dump of the form database_name.table_name

	ignore_tables?: string

	// name of the database to add or remove.
	// I(name=all) May only be provided if I(state) is C(dump) or C(import).
	// List of databases is provided with I(state=dump), I(state=present) and I(state=absent).
	// if name=all Works like --all-databases option for mysqldump (Added in 2.0).

	name: [...string]

	// Option used for dumping large tables

	quick?: bool

	// Location, on the remote host, of the dump file to read from or write to. Uncompressed SQL files (C(.sql)) as well as bzip2 (C(.bz2)), gzip (C(.gz)) and xz (Added in 2.0) compressed files are supported.

	target?: string

	// Collation mode (sorting). This only applies to new table/databases and does not update existing ones, this is a limitation of MySQL.

	collation?: string

	// Encoding mode to use, examples include C(utf8) or C(latin1_swedish_ci)

	encoding?: string

	// Dump binary columns using hexadecimal notation

	hex_blob?: bool

	// Execute the dump in a single transaction

	single_transaction?: bool

	// The database state

	state?: string
}

mysql_info :: {

	// Limit the collected information by comma separated string or YAML list.
	// Allowable values are C(version), C(databases), C(settings), C(global_status), C(users), C(engines), C(master_status), C(slave_status), C(slave_hosts).
	// By default, collects all subsets.
	// You can use '!' before value (for example, C(!settings)) to exclude it from the information.
	// If you pass including and excluding values to the filter, for example, I(filter=!settings,version), the excluding values, C(!settings) in this case, will be ignored.

	filter?: [...string]

	// Database name to connect to.
	// It makes sense if I(login_user) is allowed to connect to a specific database only.

	login_db?: string
}

mysql_replication :: {

	// Name of the master connection.
	// Supported from MariaDB 10.0.1.
	// Mutually exclusive with I(channel).
	// For more information see U(https://mariadb.com/kb/en/library/multi-source-replication/).

	connection_name?: string

	// Whether the host uses GTID based replication or not.

	master_auto_position?: bool

	// Same as mysql variable.

	master_host?: string

	// Same as mysql variable.

	master_ssl_capath?: string

	// Same as mysql variable.

	master_ssl_cert?: string

	// Same as mysql variable.

	relay_log_file?: string

	// Same as mysql variable.

	master_connect_retry?: int

	// Same as mysql variable.

	master_log_pos?: int

	// Same as mysql variable.

	master_port?: int

	// Name of replication channel.
	// Multi-source replication is supported from MySQL 5.7.
	// Mutually exclusive with I(connection_name).
	// For more information see U(https://dev.mysql.com/doc/refman/8.0/en/replication-multi-source.html).

	channel?: string

	// Time lag behind the master's state (in seconds).
	// Available from MySQL 5.6.
	// For more information see U(https://dev.mysql.com/doc/refman/8.0/en/replication-delayed.html).

	master_delay?: int

	// Same as mysql variable.

	master_log_file?: string

	// Same as mysql variable.

	master_ssl?: bool

	// Same as mysql variable.

	master_user?: string

	// Module operating mode. Could be C(changemaster) (CHANGE MASTER TO), C(getmaster) (SHOW MASTER STATUS), C(getslave) (SHOW SLAVE STATUS), C(startslave) (START SLAVE), C(stopslave) (STOP SLAVE), C(resetmaster) (RESET MASTER) - supported from Ansible 2.10, C(resetslave) (RESET SLAVE), C(resetslaveall) (RESET SLAVE ALL).

	mode?: string

	// Same as mysql variable.

	master_password?: string

	// Same as mysql variable.

	master_ssl_ca?: string

	// Same as mysql variable.

	master_ssl_cipher?: string

	// Same as mysql variable.

	master_ssl_key?: string

	// Configures the slave to use the MariaDB Global Transaction ID.
	// C(disabled) equals MASTER_USE_GTID=no command.
	// To find information about available values see U(https://mariadb.com/kb/en/library/change-master-to/#master_use_gtid).
	// Available since MariaDB 10.0.2.

	master_use_gtid?: string

	// Same as mysql variable.

	relay_log_pos?: int
}

mysql_user :: {

	// C(always) will update passwords if they differ.
	// C(on_create) will only set the password for newly created users.

	update_password?: string

	// Append the privileges defined by priv to the existing ones for this user instead of overwriting existing ones.

	append_privs?: bool

	// Indicate that the 'password' field is a `mysql_native_password` hash.

	encrypted?: bool

	// Override the host option, making ansible apply changes to all hostnames for a given user.
	// This option cannot be used when creating users.

	host_all?: bool

	// Set the user's password..

	password?: string

	// MySQL privileges string in the format: C(db.table:priv1,priv2).
	// Multiple privileges can be specified by separating each one using a forward slash: C(db.table:priv/db.table:priv).
	// The format is based on MySQL C(GRANT) statement.
	// Database and table names can be quoted, MySQL-style.
	// If column privileges are used, the C(priv1,priv2) part must be exactly as returned by a C(SHOW GRANT) statement. If not followed, the module will always report changes. It includes grouping columns by permission (C(SELECT(col1,col2)) instead of C(SELECT(col1),SELECT(col2))).

	priv?: string

	// Whether binary logging should be enabled or disabled for the connection.

	sql_log_bin?: bool

	// Check if mysql allows login as root/nopassword before trying supplied credentials.

	check_implicit_admin?: bool

	// The 'host' part of the MySQL username.

	host?: string

	// Name of the user (role) to add or remove.

	name: string

	// Whether the user should exist.
	// When C(absent), removes the user.

	state?: string
}

mysql_variables :: {

	// C(global) assigns C(value) to a global system variable which will be changed at runtime but won't persist across server restarts.
	// C(persist) assigns C(value) to a global system variable and persists it to the mysqld-auto.cnf option file in the data directory (the variable will survive service restarts).
	// C(persist_only) persists C(value) to the mysqld-auto.cnf option file in the data directory but without setting the global variable runtime value (the value will be changed after the next service restart).
	// Supported by MySQL 8.0 or later.
	// For more information see U(https://dev.mysql.com/doc/refman/8.0/en/set-variable.html).

	mode?: string

	// If set, then sets variable value to this

	value?: string

	// Variable name to operate

	variable: string
}
