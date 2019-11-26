package ansible

module: oneandone_private_network: {
	module:            "oneandone_private_network"
	short_description: "Configure 1&1 private networking."
	description: [
		"Create, remove, reconfigure, update a private network. This module has a dependency on 1and1 >= 1.0",
	]

	version_added: "2.5"
	options: {
		state: {
			description: [
				"Define a network's state to create, remove, or update.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent", "update"]
		}
		auth_token: {
			description: [
				"Authenticating API token provided by 1&1.",
			]
			required: true
		}
		private_network: {
			description: [
				"The identifier (id or name) of the network used with update state.",
			]
			required: true
		}
		api_url: {
			description: [
				"Custom API URL. Overrides the ONEANDONE_API_URL environement variable.",
			]

			required: false
		}
		name: {
			description: [
				"Private network name used with present state. Used as identifier (id or name) when used with absent state.",
			]
			required: true
		}
		description: description: [
			"Set a description for the network.",
		]
		datacenter: description: [
			"The identifier of the datacenter where the private network will be created",
		]
		network_address: description: [
			"Set a private network space, i.e. 192.168.1.0",
		]
		subnet_mask: description: [
			"Set the netmask for the private network, i.e. 255.255.255.0",
		]
		add_members: description: [
			"List of server identifiers (name or id) to be added to the private network.",
		]
		remove_members: description: [
			"List of server identifiers (name or id) to be removed from the private network.",
		]
		wait: {
			description: [
				"wait for the instance to be in state 'running' before returning",
			]
			required: false
			default:  "yes"
			type:     "bool"
		}
		wait_timeout: {
			description: [
				"how long before wait gives up, in seconds",
			]
			default: 600
		}
		wait_interval: {
			description: [
				"Defines the number of seconds to wait when using the _wait_for methods",
			]
			default: 5
		}
	}

	requirements: [
		"1and1",
		"python >= 2.6",
	]

	author: [
		"Amel Ajdinovic (@aajdinov)",
		"Ethan Devenport (@edevenport)",
	]
}
