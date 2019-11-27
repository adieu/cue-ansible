package mssql

mssql_db :: {

	// The password used to authenticate with

	login_password?: string

	// Port of the MSSQL server. Requires login_host be defined as other than localhost if login_port is used

	login_port?: string

	// The username used to authenticate with

	login_user?: string

	// name of the database to add or remove

	name: string

	// The database state

	state?: string

	// Location, on the remote host, of the dump file to read from or write to. Uncompressed SQL files (C(.sql)) files are supported.

	target?: string

	// Automatically commit the change only if the import succeed. Sometimes it is necessary to use autocommit=true, since some content can't be changed within a transaction.

	autocommit?: bool

	// Host running the database

	login_host?: string
}
