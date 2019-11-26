package ansible

module: vertica_configuration: {
	module:            "vertica_configuration"
	version_added:     "2.0"
	short_description: "Updates Vertica configuration parameters."
	description: [
		"Updates Vertica configuration parameters.",
	]
	options: {
		name: {
			description: [
				"Name of the parameter to update.",
			]
			required: true
			aliases: ["parameter"]
		}
		value: {
			description: [
				"Value of the parameter to be set.",
			]
			required: true
		}
		db: description: [
			"Name of the Vertica database.",
		]
		cluster: {
			description: [
				"Name of the Vertica cluster.",
			]
			default: "localhost"
		}
		port: {
			description: [
				"Vertica cluster port to connect to.",
			]
			default: 5433
		}
		login_user: {
			description: [
				"The username used to authenticate with.",
			]
			default: "dbadmin"
		}
		login_password: description: [
			"The password used to authenticate with.",
		]
	}
	notes: [
		"The default authentication assumes that you are either logging in as or sudo'ing to the C(dbadmin) account on the host.",
		"This module uses C(pyodbc), a Python ODBC database adapter. You must ensure that C(unixODBC) and C(pyodbc) is installed on the host and properly configured.",
		"Configuring C(unixODBC) for Vertica requires C(Driver = /opt/vertica/lib64/libverticaodbc.so) to be added to the C(Vertica) section of either C(/etc/odbcinst.ini) or C($HOME/.odbcinst.ini) and both C(ErrorMessagesPath = /opt/vertica/lib64) and C(DriverManagerEncoding = UTF-16) to be added to the C(Driver) section of either C(/etc/vertica.ini) or C($HOME/.vertica.ini).",
	]

	requirements: ["unixODBC", "pyodbc"]
	author: "Dariusz Owczarek (@dareko)"
}
