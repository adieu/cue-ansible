package postgresql

postgresql_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_info: {

		// Name of database to connect.

		db?: string

		// Limit the collected information by comma separated string or YAML list.
		// Allowable values are C(version), C(databases), C(settings), C(tablespaces), C(roles), C(replications), C(repl_slots).
		// By default, collects all subsets.
		// You can use shell-style (fnmatch) wildcard to pass groups of values (see Examples).
		// You can use '!' before value (for example, C(!settings)) to exclude it from the information.
		// If you pass including and excluding values to the filter, for example, I(filter=!settings,ver), the excluding values will be ignored.

		filter?: [...string]

		// Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string
	}
}

postgresql_ping :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_ping: {

		db?: string

		// Name of a database to connect to.
	}
}

postgresql_query :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_query: {

		// Name of database to connect to and run queries against.

		db?: string

		// Dictionary of key-value arguments to pass to the query. When the value is a list, it will be converted to PostgreSQL array.
		// Mutually exclusive with I(positional_args).

		named_args?: {...}

		// Path to SQL script on the remote host.
		// Returns result of the last query in the script.
		// Mutually exclusive with I(query).

		path_to_script?: string

		// List of values to be passed as positional arguments to the query. When the value is a list, it will be converted to PostgreSQL array.
		// Mutually exclusive with I(named_args).

		positional_args?: [...]

		// SQL query to run. Variables can be escaped with psycopg2 syntax U(http://initd.org/psycopg/docs/usage.html).

		query?: string

		// Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string

		// Execute in autocommit mode when the query can't be run inside a transaction block (e.g., VACUUM).
		// Mutually exclusive with I(check_mode).

		autocommit?: bool
	}
}

postgresql_subscription :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_subscription: {

		// Name of the subscription to add, update, or remove.

		name: string

		// The connection dict param-value to connect to the publisher.
		// For more information see U(https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNSTRING).
		// Ignored when I(state) is not C(present).

		connparams?: {...}

		// Name of the database to connect to and where the subscription state will be changed.

		db: string

		// Subscription owner.
		// If I(owner) is not defined, the owner will be set as I(login_user) or I(session_role).
		// Ignored when I(state) is not C(present).

		owner?: string

		// The publication names on the publisher to use for the subscription.
		// Ignored when I(state) is not C(present).

		publications?: [...]

		// Get information of the state for each replicated relation in the subscription.

		relinfo?: bool

		// The subscription state.
		// C(present) implies that if I(name) subscription doesn't exist, it will be created.
		// C(absent) implies that if I(name) subscription exists, it will be removed.
		// C(stat) implies that if I(name) subscription exists, returns current configuration.
		// C(refresh) implies that if I(name) subscription exists, it will be refreshed. Fetch missing table information from publisher. Always returns ``changed`` is ``True``. This will start replication of tables that were added to the subscribed-to publications since the last invocation of REFRESH PUBLICATION or since CREATE SUBSCRIPTION. The existing data in the publications that are being subscribed to should be copied once the replication starts.
		// For more information about C(refresh) see U(https://www.postgresql.org/docs/current/sql-altersubscription.html).

		state?: string

		// Dictionary of optional parameters for a subscription, e.g. copy_data, enabled, create_slot, etc.
		// For update the subscription allowed keys are C(enabled), C(slot_name), C(synchronous_commit), C(publication_name).
		// See available parameters to create a new subscription on U(https://www.postgresql.org/docs/current/sql-createsubscription.html).
		// Ignored when I(state) is not C(present).

		subsparams?: {...}

		// Drop subscription dependencies. Has effect with I(state=absent) only.
		// Ignored when I(state) is not C(absent).

		cascade?: bool
	}
}

postgresql_copy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_copy: {

		// List of column names for the src/dst table to COPY FROM/TO.

		columns?: [...string]

		// Copy data from a file to a table (appending the data to whatever is in the table already).
		// Mutually exclusive with I(copy_to) and I(src).

		copy_from?: string

		// Copy the contents of a table to a file.
		// Can also copy the results of a SELECT query.
		// Mutually exclusive with I(copy_from) and I(dst).

		copy_to?: string

		// Name of database to connect to.

		db?: string

		// Options of COPY command.
		// See the full list of available options U(https://www.postgresql.org/docs/current/sql-copy.html).

		options?: {...}

		// Copy data to I(dst=tablename) from I(copy_from=/path/to/data.file).
		// Used with I(copy_from) only.

		dst?: string

		// Mark I(src)/I(dst) as a program. Data will be copied to/from a program.
		// See block Examples and PROGRAM arg description U(https://www.postgresql.org/docs/current/sql-copy.html).

		program?: bool

		// Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string

		// Copy data from I(copy_from) to I(src=tablename).
		// Used with I(copy_to) only.

		src?: string
	}
}

postgresql_privs :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_privs: {

		// Name of database to connect to.

		database: string

		// Database port to connect to.

		port?: int

		// Comma separated list of privileges to grant/revoke.

		privs?: string

		// Schema that contains the database objects specified via I(objs).
		// May only be provided if I(type) is C(table), C(sequence), C(function), C(type), or C(default_privs). Defaults to C(public) in these cases.
		// Pay attention, for embedded types when I(type=type) I(schema) can be C(pg_catalog) or C(information_schema) respectively.

		schema?: string

		// If C(present), the specified privileges are granted, if C(absent) they are revoked.

		state?: string

		// Type of database object to set privileges on.
		// The C(default_privs) choice is available starting at version 2.7.
		// The C(foreign_data_wrapper) and C(foreign_server) object types are available from Ansible version '2.8'.
		// The C(type) choice is available from Ansible version '2.10'.

		type?: string

		// Database host address. If unspecified, connect via Unix socket.

		host?: string

		// Comma separated list of database objects to set privileges on.
		// If I(type) is C(table), C(partition table), C(sequence) or C(function), the special valueC(ALL_IN_SCHEMA) can be provided instead to specify all database objects of type I(type) in the schema specified via I(schema). (This also works with PostgreSQL < 9.0.) (C(ALL_IN_SCHEMA) is available for C(function) and C(partition table) from version 2.8)
		// If I(type) is C(database), this parameter can be omitted, in which case privileges are set for the database specified via I(database).
		// If I(type) is I(function), colons (":") in object names will be replaced with commas (needed to specify function signatures, see examples)

		objs?: string

		// A list of existing role (user/group) names to set as the default permissions for database objects subsequently created by them.
		// Parameter I(target_roles) is only available with C(type=default_privs).

		target_roles?: string

		// If C(yes), fail when target role (for whom privs need to be granted) does not exist. Otherwise just warn and continue.

		fail_on_role?: bool

		// Whether C(role) may grant/revoke the specified privileges/group memberships to others.
		// Set to C(no) to revoke GRANT OPTION, leave unspecified to make no changes.
		// I(grant_option) only has an effect if I(state) is C(present).

		grant_option?: bool

		// The username to authenticate with.

		login?: string

		// The password to authenticate with.

		password?: string

		// Comma separated list of role (user/group) names to set permissions for.
		// The special value C(PUBLIC) can be provided instead to set permissions for the implicitly defined PUBLIC group.

		roles: string

		// Switch to session_role after connecting.
		// The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string

		// Path to a Unix domain socket for local connections.

		unix_socket?: string

		// Specifies the name of a file containing SSL certificate authority (CA) certificate(s).
		// If the file exists, the server's certificate will be verified to be signed by one of these authorities.

		ca_cert?: string

		// Determines whether or with what priority a secure SSL TCP/IP connection will be negotiated with the server.
		// See https://www.postgresql.org/docs/current/static/libpq-ssl.html for more information on the modes.
		// Default of C(prefer) matches libpq default.

		ssl_mode?: string
	}
}

postgresql_sequence :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_sequence: {

		// The name of the sequence.

		sequence: string

		// Start allows the sequence to begin anywhere. The default starting value is I(minvalue) for ascending sequences and I(maxvalue) for descending ones.

		start?: int

		// Name of database to connect to and run queries against.

		db?: string

		// Increment specifies which value is added to the current sequence value to create a new value.
		// A positive value will make an ascending sequence, a negative one a descending sequence. The default value is 1.

		increment?: int

		// The new schema for the I(sequence). Will be used for moving a I(sequence) to another I(schema).
		// Works only for existing sequences.

		newschema?: string

		// Set the owner for the I(sequence).

		owner?: string

		// The new name for the I(sequence).
		// Works only for existing sequences.

		rename_to?: string

		// Cache specifies how many sequence numbers are to be preallocated and stored in memory for faster access. The minimum value is 1 (only one value can be generated at a time, i.e., no cache), and this is also the default.

		cache?: int

		// Automatically drop objects that depend on the sequence, and in turn all objects that depend on those objects.
		// Ignored if I(state=present).
		// Only used with I(state=absent).

		cascade?: bool

		// Specifies the data type of the sequence. Valid types are bigint, integer, and smallint. bigint is the default. The data type determines the default minimum and maximum values of the sequence. For more info see the documentation U(https://www.postgresql.org/docs/current/sql-createsequence.html).
		// Supported from PostgreSQL 10.

		data_type?: string

		// Maxvalue determines the maximum value for the sequence. The default for an ascending sequence is the maximum value of the data type. The default for a descending sequence is -1.

		maxvalue?: int

		// Minvalue determines the minimum value a sequence can generate. The default for an ascending sequence is 1. The default for a descending sequence is the minimum value of the data type.

		minvalue?: int

		// Switch to session_role after connecting. The specified I(session_role) must be a role that the current I(login_user) is a member of.
		// Permissions checking for SQL commands is carried out as though the I(session_role) were the one that had logged in originally.

		session_role?: string

		// The cycle option allows the sequence to wrap around when the I(maxvalue) or I(minvalue) has been reached by an ascending or descending sequence respectively. If the limit is reached, the next number generated will be the minvalue or maxvalue, respectively.
		// If C(false) (NO CYCLE) is specified, any calls to nextval after the sequence has reached its maximum value will return an error. False (NO CYCLE) is the default.

		cycle?: bool

		// The schema of the I(sequence). This is be used to create and relocate a I(sequence) in the given schema.

		schema?: string

		// The sequence state.
		// If I(state=absent) other options will be ignored except of I(name) and I(schema).

		state?: string
	}
}

postgresql_set :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_set: {

		// Name of database to connect.

		db?: string

		// Name of PostgreSQL server parameter.

		name: string

		// Restore parameter to initial state (boot_val). Mutually exclusive with I(value).

		reset?: bool

		// Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string

		// Parameter value to set.
		// To remove parameter string from postgresql.auto.conf and reload the server configuration you must pass I(value=default). With I(value=default) the playbook always returns changed is true.

		value: string
	}
}

postgresql_table :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_table: {

		// Automatically drop objects that depend on the table (such as views). Used with I(state=absent) only.

		cascade?: bool

		// The table state. I(state=absent) is mutually exclusive with I(tablespace), I(owner), I(unlogged), I(like), I(including), I(columns), I(truncate), I(storage_params) and, I(rename).

		state?: string

		// Storage parameters like fillfactor, autovacuum_vacuum_treshold, etc. Mutually exclusive with I(rename) and I(truncate).

		storage_params?: [...string]

		// Columns that are needed.

		columns?: [...string]

		// New table name. Mutually exclusive with I(tablespace), I(owner), I(unlogged), I(like), I(including), I(columns), I(truncate), and I(storage_params).

		rename?: string

		// Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string

		// Truncate a table. Mutually exclusive with I(tablespace), I(owner), I(unlogged), I(like), I(including), I(columns), I(rename), and I(storage_params).

		truncate?: bool

		// Name of database to connect and where the table will be created.

		db?: string

		// Keywords that are used with like parameter, may be DEFAULTS, CONSTRAINTS, INDEXES, STORAGE, COMMENTS or ALL. Needs I(like) specified. Mutually exclusive with I(columns), I(rename), and I(truncate).

		including?: string

		// Create a table like another table (with similar DDL). Mutually exclusive with I(columns), I(rename), and I(truncate).

		like?: string

		// Table name.

		table: string

		// Create an unlogged table.

		unlogged?: bool

		// Set a table owner.

		owner?: string

		// Set a tablespace for the table.

		tablespace?: string
	}
}

postgresql_tablespace :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_tablespace: {

		// Name of the role to set as an owner of the tablespace.
		// If this option is not specified, the tablespace owner is a role that creates the tablespace.

		owner?: string

		// New name of the tablespace.
		// The new name cannot begin with pg_, as such names are reserved for system tablespaces.

		rename_to?: string

		// Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string

		// Dict of tablespace options to set. Supported from PostgreSQL 9.0.
		// For more information see U(https://www.postgresql.org/docs/current/sql-createtablespace.html).
		// When reset is passed as an option's value, if the option was set previously, it will be removed.

		set?: {...}

		// Tablespace state.
		// I(state=present) implies the tablespace must be created if it doesn't exist.
		// I(state=absent) implies the tablespace must be removed if present. I(state=absent) is mutually exclusive with I(location), I(owner), i(set).
		// See the Notes section for information about check mode restrictions.

		state?: string

		// Name of the tablespace to add or remove.

		tablespace: string

		// Name of database to connect to and run queries against.

		db?: string

		// Path to the tablespace directory in the file system.
		// Ensure that the location exists and has right privileges.

		location?: string
	}
}

postgresql_idx :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_idx: {

		// Index type (like btree, gist, gin, etc.).
		// Mutually exclusive with I(state=absent).

		idxtype?: string

		// Storage parameters like fillfactor, vacuum_cleanup_index_scale_factor, etc.
		// Mutually exclusive with I(state=absent).

		storage_params?: [...string]

		// Table to create index on it.
		// Mutually exclusive with I(state=absent).

		table: string

		// Automatically drop objects that depend on the index, and in turn all objects that depend on those objects.
		// It used only with I(state=absent).
		// Mutually exclusive with I(concurrent=yes)

		cascade?: bool

		// Index conditions.
		// Mutually exclusive with I(state=absent).

		cond?: string

		// Name of the index to create or drop.

		idxname: string

		// Name of a database schema where the index will be created.

		schema?: string

		// Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string

		// Index state.
		// C(present) implies the index will be created if it does not exist.
		// C(absent) implies the index will be dropped if it exists.
		// C(stat) returns index statistics information from the ``pg_stat_user_indexes`` standard view. Supported from Ansible 2.10.
		// When C(stat) following parameters will be ignored:
		// I(schema), I(table), I(columns), I(cond), I(idxtype), I(tablespace), I(concurrent), I(cascade).

		state?: string

		// Set a tablespace for the index.
		// Mutually exclusive with I(state=absent).

		tablespace?: string

		// List of index columns that need to be covered by index.
		// Mutually exclusive with I(state=absent).

		columns?: [...string]

		// Enable or disable concurrent mode (CREATE / DROP INDEX CONCURRENTLY).
		// Pay attention, if I(concurrent=no), the table will be locked (ACCESS EXCLUSIVE) during the building process. For more information about the lock levels see U(https://www.postgresql.org/docs/current/explicit-locking.html).
		// If the building process was interrupted for any reason when I(cuncurrent=yes), the index becomes invalid. In this case it should be dropped and created again.
		// Mutually exclusive with I(cascade=yes).

		concurrent?: bool

		// Name of database to connect to and where the index will be created/dropped.

		db?: string
	}
}

postgresql_lang :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_lang: {

		// Name of database to connect to and where the language will be added, removed or changed.

		db?: string

		// Set an owner for the language.
		// Ignored when I(state=absent).

		owner?: string

		// Switch to session_role after connecting.
		// The specified I(session_role) must be a role that the current I(login_user) is a member of.
		// Permissions checking for SQL commands is carried out as though the I(session_role) were the one that had logged in originally.

		session_role?: string

		// Determines whether or with what priority a secure SSL TCP/IP connection will be negotiated with the server.
		// See U(https://www.postgresql.org/docs/current/static/libpq-ssl.html) for more information on the modes.
		// Default of C(prefer) matches libpq default.

		ssl_mode?: string

		// The state of the language for the selected database.

		state?: string

		// Specifies the name of a file containing SSL certificate authority (CA) certificate(s).
		// If the file exists, the server's certificate will be verified to be signed by one of these authorities.

		ca_cert?: string

		// If C(yes), fail when removing a language. Otherwise just log and continue.
		// In some cases, it is not possible to remove a language (used by the db-system).
		// When dependencies block the removal, consider using I(cascade).

		fail_on_drop?: bool

		// Marks the language as trusted, even if it's marked as untrusted in pg_pltemplate.
		// Use with care!

		force_trust?: bool

		// Name of the procedural language to add, remove or change.

		lang: string

		// Path to a Unix domain socket for local connections.

		login_unix_socket?: string

		// Make this language trusted for the selected db.

		trust?: bool

		// When dropping a language, also delete object that depend on this language.
		// Only used when I(state=absent).

		cascade?: bool
	}
}

postgresql_owner :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_owner: {

		// Name of a database object to change ownership.
		// Mutually exclusive with I(reassign_owned_by).

		obj_name?: string

		// Type of a database object.
		// Mutually exclusive with I(reassign_owned_by).

		obj_type: string

		// The list of role names. The ownership of all the objects within the current database, and of all shared objects (databases, tablespaces), owned by this role(s) will be reassigned to I(owner).
		// Pay attention - it reassigns all objects owned by this role(s) in the I(db)!
		// If role(s) exists, always returns changed True.
		// Cannot reassign ownership of objects that are required by the database system.
		// Mutually exclusive with C(obj_type).

		reassign_owned_by?: [...string]

		// Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string

		// Name of database to connect to.

		db?: string

		// If C(yes), fail when I(reassign_owned_by) role does not exist. Otherwise just warn and continue.
		// Mutually exclusive with I(obj_name) and I(obj_type).

		fail_on_role?: bool

		// Role (user/group) to set as an I(obj_name) owner.

		new_owner: string
	}
}

postgresql_schema :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_schema: {

		// Name of the schema to add or remove.

		name: string

		// Name of the role to set as owner of the schema.

		owner?: string

		// Switch to session_role after connecting.
		// The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string

		// Determines whether or with what priority a secure SSL TCP/IP connection will be negotiated with the server.
		// See https://www.postgresql.org/docs/current/static/libpq-ssl.html for more information on the modes.
		// Default of C(prefer) matches libpq default.

		ssl_mode?: string

		// The schema state.

		state?: string

		// Specifies the name of a file containing SSL certificate authority (CA) certificate(s).
		// If the file exists, the server's certificate will be verified to be signed by one of these authorities.

		ca_cert?: string

		// Drop schema with CASCADE to remove child objects.

		cascade_drop?: bool

		// Name of the database to connect to and add or remove the schema.

		database?: string
	}
}

postgresql_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_user: {

		// Specifies the name of a file containing SSL certificate authority (CA) certificate(s).
		// If the file exists, the server's certificate will be verified to be signed by one of these authorities.

		ca_cert?: string

		// If C(yes), fail when user (role) can't be removed. Otherwise just log and continue.

		fail_on_user?: bool

		// Set the user's password, before 1.4 this was required.
		// Password can be passed unhashed or hashed (MD5-hashed).
		// Unhashed password will automatically be hashed when saved into the database if C(encrypted) parameter is set, otherwise it will be save in plain text format.
		// When passing a hashed password it must be generated with the format C('str["md5"] + md5[ password + username ]'), resulting in a total of 35 characters. An easy way to do this is C(echo "md5$(echo -n 'verysecretpasswordJOE' | md5sum | awk '{print $1}')").
		// Note that if the provided password string is already in MD5-hashed format, then it is used as-is, regardless of C(encrypted) parameter.

		password?: string

		// Slash-separated PostgreSQL privileges string: C(priv1/priv2), where privileges can be defined for database ( allowed options - 'CREATE', 'CONNECT', 'TEMPORARY', 'TEMP', 'ALL'. For example C(CONNECT) ) or for table ( allowed options - 'SELECT', 'INSERT', 'UPDATE', 'DELETE', 'TRUNCATE', 'REFERENCES', 'TRIGGER', 'ALL'. For example C(table:SELECT) ). Mixed example of this string: C(CONNECT/CREATE/table1:SELECT/table2:INSERT).

		priv?: string

		// If C(yes), don't inspect database for password changes. Effective when C(pg_authid) is not accessible (such as AWS RDS). Otherwise, make password changes as necessary.

		no_password_changes?: bool

		// PostgreSQL user attributes string in the format: CREATEDB,CREATEROLE,SUPERUSER.
		// Note that '[NO]CREATEUSER' is deprecated.
		// To create a simple role for using it like a group, use C(NOLOGIN) flag.

		role_attr_flags?: string

		// Switch to session_role after connecting.
		// The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string

		// Specifies the user (role) connection limit.

		conn_limit?: int

		// Whether the password is stored hashed in the database.
		// Passwords can be passed already hashed or unhashed, and postgresql ensures the stored password is hashed when C(encrypted) is set.
		// Note: Postgresql 10 and newer doesn't support unhashed passwords.
		// Previous to Ansible 2.6, this was C(no) by default.

		encrypted?: bool

		// The list of groups (roles) that need to be granted to the user.

		groups?: [...string]

		// Name of the user (role) to add or remove.

		name: string

		// The user (role) state.

		state?: string

		// Name of database to connect to and where user's permissions will be granted.

		db?: string

		// The date at which the user's password is to expire.
		// If set to C('infinity'), user's password never expire.
		// Note that this value should be a valid SQL date and time type.

		expires?: string

		// Determines whether or with what priority a secure SSL TCP/IP connection will be negotiated with the server.
		// See https://www.postgresql.org/docs/current/static/libpq-ssl.html for more information on the modes.
		// Default of C(prefer) matches libpq default.

		ssl_mode?: string
	}
}

postgresql_publication :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_publication: {

		// The publication state.

		state?: string

		// List of tables to add to the publication.
		// If no value is set all tables are targeted.
		// If the publication already exists for specific tables and I(tables) is not passed, nothing will be changed. If you need to add all tables to the publication with the same name, drop existent and create new without passing I(tables).

		tables?: [...string]

		// Drop publication dependencies. Has effect with I(state=absent) only.

		cascade?: bool

		// Name of the database to connect to and where the publication state will be changed.

		db?: string

		// Name of the publication to add, update, or remove.

		name: string

		// Publication owner.
		// If I(owner) is not defined, the owner will be set as I(login_user) or I(session_role).

		owner?: string

		// Dictionary with optional publication parameters.
		// Available parameters depend on PostgreSQL version.

		parameters?: {...}
	}
}

postgresql_slot :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_slot: {

		// All logical slots must indicate which output plugin decoder they're using.
		// This parameter does not apply to physical slots.
		// It will be ignored with I(slot_type=physical).

		output_plugin?: string

		// Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string

		// Slot type.

		slot_type?: string

		// The slot state.
		// I(state=present) implies the slot must be present in the system.
		// I(state=absent) implies the I(groups) must be revoked from I(target_roles).

		state?: string

		// Name of database to connect to.

		db?: string

		// Optional parameter the when C(yes) specifies that the LSN for this replication slot be reserved immediately, otherwise the default, C(no), specifies that the LSN is reserved on the first connection from a streaming replication client.
		// Is available from PostgreSQL version 9.6.
		// Uses only with I(slot_type=physical).
		// Mutually exclusive with I(slot_type=logical).

		immediately_reserve?: bool

		// Name of the slot to add or remove.

		name: string
	}
}

postgresql_db :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_db: {

		// Encoding of the database

		encoding?: string

		// Name of the database to add or remove

		name: string

		// Template used to create the database

		template?: string

		// The value specifies the initial database (which is also called as maintenance DB) that Ansible connects to.

		maintenance_db?: string

		// Specifies the database connection limit.

		conn_limit?: string

		// Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string

		// File to back up or restore from.
		// Used when I(state) is C(dump) or C(restore).

		target?: string

		// Further arguments for pg_dump or pg_restore.
		// Used when I(state) is C(dump) or C(restore).

		target_opts?: string

		// Collation order (LC_COLLATE) to use in the database. Must match collation order of template database unless C(template0) is used as template.

		lc_collate?: string

		// Character classification (LC_CTYPE) to use in the database (e.g. lower, upper, ...) Must match LC_CTYPE of template database unless C(template0) is used as template.

		lc_ctype?: string

		// Name of the role to set as owner of the database

		owner?: string

		// Database port to connect (if needed)

		port?: int

		// The database state.
		// C(present) implies that the database should be created if necessary.
		// C(absent) implies that the database should be removed if present.
		// C(dump) requires a target definition to which the database will be backed up. (Added in Ansible 2.4) Note that in some PostgreSQL versions of pg_dump, which is an embedded PostgreSQL utility and is used by the module, returns rc 0 even when errors occurred (e.g. the connection is forbidden by pg_hba.conf, etc.), so the module returns changed=True but the dump has not actually been done. Please, be sure that your version of pg_dump returns rc 1 in this case.
		// C(restore) also requires a target definition from which the database will be restored. (Added in Ansible 2.4)
		// The format of the backup will be detected based on the target name.
		// Supported compression formats for dump and restore include C(.pgc), C(.bz2), C(.gz) and C(.xz)
		// Supported formats for dump and restore include C(.sql) and C(.tar)

		state?: string

		// The tablespace to set for the database U(https://www.postgresql.org/docs/current/sql-alterdatabase.html).
		// If you want to move the database back to the default tablespace, explicitly set this to pg_default.

		tablespace?: string
	}
}

postgresql_ext :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_ext: {

		// Specifies the name of a file containing SSL certificate authority (CA) certificate(s).
		// If the file exists, the server's certificate will be verified to be signed by one of these authorities.

		ca_cert?: string

		// Automatically install/remove any extensions that this extension depends on that are not already installed/removed (supported since PostgreSQL 9.6).

		cascade?: bool

		// Path to a Unix domain socket for local connections.

		login_unix_socket?: string

		// Name of the schema to add the extension to.

		schema?: string

		// Determines whether or with what priority a secure SSL TCP/IP connection will be negotiated with the server.
		// See https://www.postgresql.org/docs/current/static/libpq-ssl.html for more information on the modes.
		// Default of C(prefer) matches libpq default.

		ssl_mode?: string

		// Name of the database to add or remove the extension to/from.

		db: string

		// Name of the extension to add or remove.

		name: string

		// Switch to session_role after connecting.
		// The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string

		// The database extension state.

		state?: string

		// Extension version to add or update to. Has effect with I(state=present) only.
		// If not specified, the latest extension version will be created.
		// It can't downgrade an extension version. When version downgrade is needed, remove the extension and create new one with appropriate version.
		// Set I(version=latest) to update the extension to the latest available version.

		version?: string
	}
}

postgresql_membership :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_membership: {

		// Membership state.
		// I(state=present) implies the I(groups)must be granted to I(target_roles).
		// I(state=absent) implies the I(groups) must be revoked from I(target_roles).

		state?: string

		// The list of target roles (groups will be granted to them).

		target_roles: [...string]

		// Name of database to connect to.

		db?: string

		// If C(yes), fail when group or target_role doesn't exist. If C(no), just warn and continue.

		fail_on_role?: bool

		// The list of groups (roles) that need to be granted to or revoked from I(target_roles).

		groups: [...string]

		// Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.
		// Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.

		session_role?: string
	}
}

postgresql_pg_hba :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	postgresql_pg_hba: {

		// The lines will be added/modified when C(state=present) and removed when C(state=absent).

		state?: string

		// Users this line applies to.

		users?: string

		// The source address/net where the connections could come from.
		// Will not be used for entries of I(type)=C(local).
		// You can also use keywords C(all), C(samehost), and C(samenet).

		address?: string

		// If set, create a backup of the C(pg_hba) file before it is modified. The location of the backup is returned in the (backup) variable by this module.

		backup?: bool

		// Type of the rule. If not set, C(postgresql_pg_hba) will only return contents.

		contype?: string

		// Databases this line applies to.

		databases?: string

		// The netmask of the source address.

		netmask?: string

		// The entries will be written out in a specific order. With this option you can control by which field they are ordered first, second and last. s=source, d=databases, u=users. This option is deprecated since 2.9 and will be removed in 2.11. Sortorder is now hardcoded to sdu.

		order?: string

		// Write backup to a specific backupfile rather than a temp file.

		backup_file?: string

		// Create an C(pg_hba) file if none exists.
		// When set to false, an error is raised when the C(pg_hba) file doesn't exist.

		create?: bool

		// Path to C(pg_hba) file to modify.

		dest: string

		// Authentication method to be used.

		method?: string

		// Additional options for the authentication I(method).

		options?: string
	}
}
