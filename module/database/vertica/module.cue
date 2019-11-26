package vertica

vertica_configuration :: {

	// Name of the Vertica cluster.

	cluster?: string

	// Name of the Vertica database.

	db?: string

	// The password used to authenticate with.

	login_password?: string

	// The username used to authenticate with.

	login_user?: string

	// Name of the parameter to update.

	name: string

	// Vertica cluster port to connect to.

	port?: string

	// Value of the parameter to be set.

	value: string
}

vertica_info :: {

	// Name of the cluster running the schema.

	cluster?: string

	// Name of the database running the schema.

	db?: string

	// The password used to authenticate with.

	login_password?: string

	// The username used to authenticate with.

	login_user?: string

	// Database port to connect to.

	port?: string
}

vertica_role :: {

	// Name of the Vertica database.

	db?: string

	// The password used to authenticate with.

	login_password?: string

	// The username used to authenticate with.

	login_user?: string

	// Name of the role to add or remove.

	name: string

	// Vertica cluster port to connect to.

	port?: string

	// Whether to create C(present), drop C(absent) or lock C(locked) a role.

	state?: string

	// Comma separated list of roles to assign to the role.

	assigned_roles?: string

	// Name of the Vertica cluster.

	cluster?: string
}

vertica_schema :: {

	// Name of the Vertica cluster.

	cluster?: string

	// Comma separated list of roles to create and grant usage and create access to the schema.

	create_roles?: string

	// Name of the Vertica database.

	db?: string

	// The username used to authenticate with.

	login_user?: string

	// Name of the schema to add or remove.

	name: string

	// The password used to authenticate with.

	login_password?: string

	// Name of the user to set as owner of the schema.

	owner?: string

	// Vertica cluster port to connect to.

	port?: string

	// Whether to create C(present), or drop C(absent) a schema.

	state?: string

	// Comma separated list of roles to create and grant usage access to the schema.

	usage_roles?: string
}

vertica_user :: {

	// Whether to create C(present), drop C(absent) or lock C(locked) a user.

	state?: string

	// Name of the Vertica cluster.

	cluster?: string

	// Name of the Vertica database.

	db?: string

	// Set to true if users are authenticated via LDAP.
	// The user will be created with password expired and set to I($ldap$).

	ldap?: bool

	// The password used to authenticate with.

	login_password?: string

	// Vertica cluster port to connect to.

	port?: string

	// Sets the user's profile.

	profile?: string

	// Comma separated list of roles to assign to the user.

	roles?: string

	// Sets the user's password expiration.

	expired?: bool

	// The username used to authenticate with.

	login_user?: string

	// Name of the user to add or remove.

	name: string

	// The user's password encrypted by the MD5 algorithm.
	// The password must be generated with the format C("md5" + md5[password + username]), resulting in a total of 35 characters. An easy way to do this is by querying the Vertica database with select 'md5'||md5('<user_password><user_name>').

	password?: string

	// Sets the user's resource pool.

	resource_pool?: string
}
