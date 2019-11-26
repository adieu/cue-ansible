package ansible

module: ovirt_storage_connection: {
	module:            "ovirt_storage_connection"
	short_description: "Module to manage storage connections in oVirt"
	version_added:     "2.4"
	author:            "Ondra Machacek (@machacekondra)"
	description: [
		"Module to manage storage connections in oVirt",
	]
	options: {
		id: description: [
			"Id of the storage connection to manage.",
		]
		state: {
			description: [
				"Should the storage connection be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		storage: description: [
			"Name of the storage domain to be used with storage connection.",
		]
		address: description: [
			"Address of the storage server. E.g.: myserver.mydomain.com",
		]
		path: description: [
			"Path of the mount point of the storage. E.g.: /path/to/my/data",
		]
		nfs_version: description: [
			"NFS version. One of: I(auto), I(v3), I(v4) or I(v4_1).",
		]
		nfs_timeout: description: [
			"The time in tenths of a second to wait for a response before retrying NFS requests. Range 0 to 65535.",
		]
		nfs_retrans: description: [
			"The number of times to retry a request before attempting further recovery actions. Range 0 to 65535.",
		]
		mount_options: description: [
			"Option which will be passed when mounting storage.",
		]
		password: description: [
			"A CHAP password for logging into a target.",
		]
		username: description: [
			"A CHAP username for logging into a target.",
		]
		port: description: [
			"Port of the iSCSI storage server.",
		]
		target: description: [
			"The target IQN for the storage device.",
		]
		type: description: [
			"Storage type. For example: I(nfs), I(iscsi), etc.",
		]
		vfs_type: description: [
			"Virtual File System type.",
		]
		force: {
			description: [
				"This parameter is relevant only when updating a connection.",
				"If I(true) the storage domain don't have to be in I(MAINTENANCE) state, so the storage connection is updated.",
			]

			type: "bool"
		}
	}
	extends_documentation_fragment: "ovirt"
}
