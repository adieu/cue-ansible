package ansible

module: mysql_replication: {
	module:            "mysql_replication"
	short_description: "Manage MySQL replication"
	description: [
		"Manages MySQL server replication, slave, master status, get and change master host.",
	]
	version_added: "1.3"
	author: [
		"Balazs Pocze (@banyek)",
		"Andrew Klychkov (@Andersson007)",
	]
	options: {
		mode: {
			description: [
				"Module operating mode. Could be C(changemaster) (CHANGE MASTER TO), C(getmaster) (SHOW MASTER STATUS), C(getslave) (SHOW SLAVE STATUS), C(startslave) (START SLAVE), C(stopslave) (STOP SLAVE), C(resetmaster) (RESET MASTER) - supported from Ansible 2.10, C(resetslave) (RESET SLAVE), C(resetslaveall) (RESET SLAVE ALL).",
			]

			type: "str"
			choices: [
				"changemaster",
				"getmaster",
				"getslave",
				"startslave",
				"stopslave",
				"resetmaster",
				"resetslave",
				"resetslaveall",
			]
			default: "getslave"
		}
		master_host: {
			description: [
				"Same as mysql variable.",
			]
			type: "str"
		}
		master_user: {
			description: [
				"Same as mysql variable.",
			]
			type: "str"
		}
		master_password: {
			description: [
				"Same as mysql variable.",
			]
			type: "str"
		}
		master_port: {
			description: [
				"Same as mysql variable.",
			]
			type: "int"
		}
		master_connect_retry: {
			description: [
				"Same as mysql variable.",
			]
			type: "int"
		}
		master_log_file: {
			description: [
				"Same as mysql variable.",
			]
			type: "str"
		}
		master_log_pos: {
			description: [
				"Same as mysql variable.",
			]
			type: "int"
		}
		relay_log_file: {
			description: [
				"Same as mysql variable.",
			]
			type: "str"
		}
		relay_log_pos: {
			description: [
				"Same as mysql variable.",
			]
			type: "int"
		}
		master_ssl: {
			description: [
				"Same as mysql variable.",
			]
			type: "bool"
		}
		master_ssl_ca: {
			description: [
				"Same as mysql variable.",
			]
			type: "str"
		}
		master_ssl_capath: {
			description: [
				"Same as mysql variable.",
			]
			type: "str"
		}
		master_ssl_cert: {
			description: [
				"Same as mysql variable.",
			]
			type: "str"
		}
		master_ssl_key: {
			description: [
				"Same as mysql variable.",
			]
			type: "str"
		}
		master_ssl_cipher: {
			description: [
				"Same as mysql variable.",
			]
			type: "str"
		}
		master_auto_position: {
			description: [
				"Whether the host uses GTID based replication or not.",
			]
			type:          "bool"
			version_added: "2.0"
		}
		master_use_gtid: {
			description: [
				"Configures the slave to use the MariaDB Global Transaction ID.",
				"C(disabled) equals MASTER_USE_GTID=no command.",
				"To find information about available values see U(https://mariadb.com/kb/en/library/change-master-to/#master_use_gtid).",
				"Available since MariaDB 10.0.2.",
			]
			choices: ["current_pos", "slave_pos", "disabled"]
			type:          "str"
			version_added: "2.10"
		}
		master_delay: {
			description: [
				"Time lag behind the master's state (in seconds).",
				"Available from MySQL 5.6.",
				"For more information see U(https://dev.mysql.com/doc/refman/8.0/en/replication-delayed.html).",
			]
			type:          "int"
			version_added: "2.10"
		}
		connection_name: {
			description: [
				"Name of the master connection.",
				"Supported from MariaDB 10.0.1.",
				"Mutually exclusive with I(channel).",
				"For more information see U(https://mariadb.com/kb/en/library/multi-source-replication/).",
			]
			type:          "str"
			version_added: "2.10"
		}
		channel: {
			description: [
				"Name of replication channel.",
				"Multi-source replication is supported from MySQL 5.7.",
				"Mutually exclusive with I(connection_name).",
				"For more information see U(https://dev.mysql.com/doc/refman/8.0/en/replication-multi-source.html).",
			]
			type:          "str"
			version_added: "2.10"
		}
	}

	notes: [
		"If an empty value for the parameter of string type is needed, use an empty string.",
	]

	extends_documentation_fragment: [
		"mysql",
	]

	seealso: [{
		module: "mysql_info"
	}, {
		name:        "MySQL replication reference"
		description: "Complete reference of the MySQL replication documentation."
		link:        "https://dev.mysql.com/doc/refman/8.0/en/replication.html"
	}, {
		name:        "MariaDB replication reference"
		description: "Complete reference of the MariaDB replication documentation."
		link:        "https://mariadb.com/kb/en/library/setting-up-replication/"
	}]
}
