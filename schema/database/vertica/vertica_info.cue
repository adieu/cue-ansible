package ansible

module: vertica_info: {
	module:            "vertica_info"
	version_added:     "2.0"
	short_description: "Gathers Vertica database facts."
	description: [
		"Gathers Vertica database information.",
		"This module was called C(vertica_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(vertica_info) module no longer returns C(ansible_facts)!",
	]

	options: {
		cluster: {
			description: [
				"Name of the cluster running the schema.",
			]
			default: "localhost"
		}
		port: {
			description:
					"Database port to connect to."
			default: 5433
		}
		db: description: [
			"Name of the database running the schema.",
		]
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
