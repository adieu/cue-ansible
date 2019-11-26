package ansible

module: rax_cdb: {
	module:            "rax_cdb"
	short_description: "create/delete or resize a Rackspace Cloud Databases instance"
	description: [
		"creates / deletes or resize a Rackspace Cloud Databases instance and optionally waits for it to be 'running'. The name option needs to be unique since it's used to identify the instance.",
	]

	version_added: "1.8"
	options: {
		name: description: [
			"Name of the databases server instance",
		]
		flavor: {
			description: [
				"flavor to use for the instance 1 to 6 (i.e. 512MB to 16GB)",
			]
			default: 1
		}
		volume: {
			description: [
				"Volume size of the database 1-150GB",
			]
			default: 2
		}
		cdb_type: {
			description: [
				"type of instance (i.e. MySQL, MariaDB, Percona)",
			]
			default:       "MySQL"
			version_added: "2.0"
			aliases: ["type"]
		}
		cdb_version: {
			description: [
				"version of database (MySQL supports 5.1 and 5.6, MariaDB supports 10, Percona supports 5.6)",
			]
			choices: ["5.1", "5.6", "10"]
			version_added: "2.0"
			aliases: ["version"]
		}
		state: {
			description: [
				"Indicate desired state of the resource",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		wait: {
			description: [
				"wait for the instance to be in state 'running' before returning",
			]
			type:    "bool"
			default: "no"
		}
		wait_timeout: {
			description: [
				"how long before wait gives up, in seconds",
			]
			default: 300
		}
	}
	author: "Simon JAILLET (@jails)"
	extends_documentation_fragment: [
		"rackspace",
		"rackspace.openstack",
	]
}
