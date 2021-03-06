package ansible

module: ftd_configuration: {
	module:            "ftd_configuration"
	short_description: "Manages configuration on Cisco FTD devices over REST API"
	description: [
		"Manages configuration on Cisco FTD devices including creating, updating, removing configuration objects, scheduling and staring jobs, deploying pending changes, etc. All operations are performed over REST API.",
	]

	version_added: "2.7"
	author:        "Cisco Systems, Inc. (@annikulin)"
	options: {
		operation: {
			description: [
				"The name of the operation to execute. Commonly, the operation starts with 'add', 'edit', 'get', 'upsert' or 'delete' verbs, but can have an arbitrary name too.",
			]

			required: true
			type:     "str"
		}
		data: {
			description: [
				"Key-value pairs that should be sent as body parameters in a REST API call",
			]
			type: "dict"
		}
		query_params: {
			description: [
				"Key-value pairs that should be sent as query parameters in a REST API call.",
			]
			type: "dict"
		}
		path_params: {
			description: [
				"Key-value pairs that should be sent as path parameters in a REST API call.",
			]
			type: "dict"
		}
		register_as: {
			description: [
				"Specifies Ansible fact name that is used to register received response from the FTD device.",
			]
			type: "str"
		}
		filters: {
			description: [
				"Key-value dict that represents equality filters. Every key is a property name and value is its desired value. If multiple filters are present, they are combined with logical operator AND.",
			]

			type: "dict"
		}
	}
}
