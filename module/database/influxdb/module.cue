package influxdb

influxdb_write :: {

	// Data points as dict to write into the database.

	data_points: string

	// Name of the database.

	database_name: string
}

influxdb_database :: {

	// Name of the database.

	database_name: string

	// Determines if the database should be created or destroyed.

	state?: string
}

influxdb_query :: {

	// Name of the database.

	database_name: string

	// Query to be executed.

	query: string
}

influxdb_retention_policy :: {

	// Name of the database.

	database_name: string

	// Sets the retention policy as default retention policy

	default: string

	// Determines how long InfluxDB should keep the data

	duration: string

	// Name of the retention policy

	policy_name: string

	// Determines how many independent copies of each point are stored in the cluster

	replication: string
}

influxdb_user :: {

	// Whether the user should be in the admin role or not.
	// Since version 2.8, the role will also be updated.

	admin?: bool

	// Privileges to grant to this user. Takes a list of dicts containing the "database" and "privilege" keys.
	// If this argument is not provided, the current grants will be left alone. If an empty list is provided, all grants for the user will be removed.

	grants?: string

	// State of the user.

	state?: string

	// Name of the user.

	user_name: string

	// Password to be set for the user.

	user_password?: string
}
