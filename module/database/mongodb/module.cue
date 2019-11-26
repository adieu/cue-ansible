package mongodb

mongodb_parameter :: {

	// Whether to use an SSL connection when connecting to the database

	ssl?: bool

	// MongoDB administrative parameter value to set

	value: string

	// The name of the database to add/remove the user from

	database: string

	// The host running the database

	login_host?: string

	// The password used to authenticate with

	login_password?: string

	// The port to connect to

	login_port?: string

	// The username used to authenticate with

	login_user?: string

	// MongoDB administrative parameter to modify

	param: string

	// Define the parameter value (str, int)

	param_type?: string

	// Replica set to connect to (automatically connects to primary for writes)

	replica_set?: string

	// The database where login credentials are stored

	login_database?: string
}

mongodb_replicaset :: {

	// The time limit in milliseconds for detecting when a replicaset's primary is unreachable.

	election_timeout_millis?: int

	// Number of seconds that the replicaset members wait for a successful heartbeat from each other.
	// If a member does not respond in time, other members mark the delinquent member as inaccessible.
	// The setting only applies when using I(protocol_version=0). When using I(protocol_version=1) the relevant setting is I(settings.election_timeout_millis).

	heartbeat_timeout_secs?: int

	// The MongoDB hostname.

	login_host?: string

	// When I(settings.chaining_allowed=true), the replicaset allows secondary members to replicate from other secondary members.
	// When I(settings.chaining_allowed=false), secondaries can replicate only from the primary.

	chaining_allowed?: bool

	// The username to authenticate with.

	login_user?: string

	// Whether to use an SSL connection when connecting to the database

	ssl?: bool

	// The database where login credentials are stored.

	login_database?: string

	// The MongoDB port to login to.

	login_port?: int

	// Version of the replicaset election protocol.

	protocol_version?: int

	// Identifies the position of the member in the array that is an arbiter.

	arbiter_at_index?: int

	// The password to authenticate with.

	login_password?: string

	// A comma-separated string or a yaml list consisting of the replicaset members.
	// Supply as a simple csv string, i.e. mongodb1:27017,mongodb2:27017,mongodb3:27017.
	// If a port number is not provided then 27017 is assumed.

	members?: [..._]

	// Replicaset name.

	replica_set?: string

	// Specifies whether a certificate is required from the other side of the connection, and whether it will be validated if provided.

	ssl_cert_reqs?: string

	// Performs some basic validation on the provided replicaset config.

	validate?: bool
}

mongodb_shard :: {

	// The user to login with.

	login_user?: string

	// The shard connection string.
	// Should be supplied in the form <replicaset>/host:port as detailed in U(https://docs.mongodb.com/manual/tutorial/add-shards-to-shard-cluster/).
	// For example rs0/example1.mongodb.com:27017.

	shard: string

	// Whether the shard should be present or absent from the Cluster.

	state?: string

	// The database where login credentials are stored.

	login_database?: string

	// The host to login to.
	// This must be a mongos.

	login_host?: string

	// The password used to authenticate with.

	login_password?: string

	// The port to login to.

	login_port?: string

	// Whether to use an SSL connection when connecting to the database.

	ssl?: bool

	// Specifies whether a certificate is required from the other side of the connection, and whether it will be validated if provided.

	ssl_cert_reqs?: string
}

mongodb_user :: {

	// Whether to use an SSL connection when connecting to the database

	ssl?: bool

	// The database user state

	state?: string

	// The name of the user to add or remove

	name: string

	// Specifies whether a certificate is required from the other side of the connection, and whether it will be validated if provided.

	ssl_cert_reqs?: string

	// The port to connect to

	login_port?: string

	// The username used to authenticate with

	login_user?: string

	// The database user roles valid values could either be one or more of the following strings: 'read', 'readWrite', 'dbAdmin', 'userAdmin', 'clusterAdmin', 'readAnyDatabase', 'readWriteAnyDatabase', 'userAdminAnyDatabase', 'dbAdminAnyDatabase'

	// Or the following dictionary '{ db: DATABASE_NAME, role: ROLE_NAME }'.
	// This param requires pymongo 2.5+. If it is a string, mongodb 2.4+ is also required. If it is a dictionary, mongo 2.6+  is required.

	roles?: string

	// The database where login credentials are stored

	login_database?: string

	// Replica set to connect to (automatically connects to primary for writes)

	replica_set?: string

	// The password used to authenticate with

	login_password?: string

	// The password to use for the user

	password?: string

	// C(always) will update passwords if they differ.  C(on_create) will only set the password for newly created users.

	update_password?: string

	// The name of the database to add/remove the user from

	database: string

	// The host running the database

	login_host?: string
}
