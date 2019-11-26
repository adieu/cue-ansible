package ansible

module: proxysql_replication_hostgroups: {
	module:            "proxysql_replication_hostgroups"
	version_added:     "2.3"
	author:            "Ben Mildren (@bmildren)"
	short_description: "Manages replication hostgroups using the proxysql admin interface."

	description: [
		"Each row in mysql_replication_hostgroups represent a pair of writer_hostgroup and reader_hostgroup. ProxySQL will monitor the value of read_only for all the servers in specified hostgroups, and based on the value of read_only will assign the server to the writer or reader hostgroups.",
	]

	options: {
		writer_hostgroup: {
			description: [
				"Id of the writer hostgroup.",
			]
			required: true
		}
		reader_hostgroup: {
			description: [
				"Id of the reader hostgroup.",
			]
			required: true
		}
		comment: description: [
			"Text field that can be used for any purposes defined by the user.",
		]
		state: {
			description: [
				"When C(present) - adds the replication hostgroup, when C(absent) - removes the replication hostgroup.",
			]

			choices: ["present", "absent"]
			default: "present"
		}
	}
	extends_documentation_fragment: [
		"proxysql.managing_config",
		"proxysql.connectivity",
	]
}
