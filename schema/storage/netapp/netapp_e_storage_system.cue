package ansible

module: netapp_e_storage_system: {
	module:            "netapp_e_storage_system"
	version_added:     "2.2"
	short_description: "NetApp E-Series Web Services Proxy manage storage arrays"
	description: [
		"Manage the arrays accessible via a NetApp Web Services Proxy for NetApp E-series storage arrays.",
	]
	options: {
		api_username: {
			description: [
				"The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.",
			]
			required: true
		}
		api_password: {
			description: [
				"The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.",
			]
			required: true
		}
		api_url: {
			description: [
				"The url to the SANtricity WebServices Proxy or embedded REST API.",
			]
			required: true
		}
		validate_certs: {
			description: [
				"Should https certificates be validated?",
			]
			type:    "bool"
			default: "yes"
		}
		ssid: {
			description: [
				"The ID of the array to manage. This value must be unique for each array.",
			]
			required: true
		}
		state: {
			description: [
				"Whether the specified array should be configured on the Web Services Proxy or not.",
			]
			required: true
			choices: ["present", "absent"]
		}
		controller_addresses: {
			description: [
				"The list addresses for the out-of-band management adapter or the agent host. Mutually exclusive of array_wwn parameter.",
			]
			required: true
		}
		array_wwn: description: [
			"The WWN of the array to manage. Only necessary if in-band managing multiple arrays on the same agent host.  Mutually exclusive of controller_addresses parameter.",
		]

		array_password: description: [
			"The management password of the array to manage, if set.",
		]
		enable_trace: {
			description: [
				"Enable trace logging for SYMbol calls to the storage system.",
			]
			type:    "bool"
			default: "no"
		}
		meta_tags: description: [
			"Optional meta tags to associate to this storage system",
		]
	}
	author: "Kevin Hulquest (@hulquest)"
}
