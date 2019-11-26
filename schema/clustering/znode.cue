package ansible

module: znode: {
	module:            "znode"
	version_added:     "2.0"
	short_description: "Create, delete, retrieve, and update znodes using ZooKeeper"
	description: [
		"Create, delete, retrieve, and update znodes using ZooKeeper.",
	]
	options: {
		hosts: {
			description: [
				"A list of ZooKeeper servers (format '[server]:[port]').",
			]
			required: true
		}
		name: {
			description: [
				"The path of the znode.",
			]
			required: true
		}
		value: description: [
			"The value assigned to the znode.",
		]
		op: description: [
			"An operation to perform. Mutually exclusive with state.",
		]
		state: description: [
			"The state to enforce. Mutually exclusive with op.",
		]
		timeout: {
			description: [
				"The amount of time to wait for a node to appear.",
			]
			default: 300
		}
		recursive: {
			description: [
				"Recursively delete node and all its children.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
	}
	requirements: [
		"kazoo >= 2.1",
		"python >= 2.6",
	]
	author: "Trey Perry (@treyperry)"
}
