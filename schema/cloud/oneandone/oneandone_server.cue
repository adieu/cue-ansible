package ansible

module: oneandone_server: {
	module:            "oneandone_server"
	short_description: "Create, destroy, start, stop, and reboot a 1&1 Host server."
	description: [
		"Create, destroy, update, start, stop, and reboot a 1&1 Host server. When the server is created it can optionally wait for it to be 'running' before returning.",
	]

	version_added: "2.5"
	options: {
		state: {
			description: [
				"Define a server's state to create, remove, start or stop it.",
			]
			default: "present"
			choices: ["present", "absent", "running", "stopped"]
		}
		auth_token: {
			description: [
				"Authenticating API token provided by 1&1. Overrides the ONEANDONE_AUTH_TOKEN environement variable.",
			]

			required: true
		}
		api_url: description: [
			"Custom API URL. Overrides the ONEANDONE_API_URL environement variable.",
		]

		datacenter: {
			description: [
				"The datacenter location.",
			]
			default: "US"
			choices: ["US", "ES", "DE", "GB"]
		}
		hostname: description: [
			"The hostname or ID of the server. Only used when state is 'present'.",
		]
		description: description: [
			"The description of the server.",
		]
		appliance: description: [
			"The operating system name or ID for the server. It is required only for 'present' state.",
		]

		fixed_instance_size: {
			description: [
				"The instance size name or ID of the server. It is required only for 'present' state, and it is mutually exclusive with vcore, cores_per_processor, ram, and hdds parameters.",
			]

			required: true
			choices: ["S", "M", "L", "XL", "XXL", "3XL", "4XL", "5XL"]
		}
		vcore: description: [
			"The total number of processors. It must be provided with cores_per_processor, ram, and hdds parameters.",
		]

		cores_per_processor: description: [
			"The number of cores per processor. It must be provided with vcore, ram, and hdds parameters.",
		]

		ram: description: [
			"The amount of RAM memory. It must be provided with with vcore, cores_per_processor, and hdds parameters.",
		]

		hdds: description: [
			"A list of hard disks with nested \"size\" and \"is_main\" properties. It must be provided with vcore, cores_per_processor, and ram parameters.",
		]

		private_network: description: [
			"The private network name or ID.",
		]
		firewall_policy: description: [
			"The firewall policy name or ID.",
		]
		load_balancer: description: [
			"The load balancer name or ID.",
		]
		monitoring_policy: description: [
			"The monitoring policy name or ID.",
		]
		server: description: [
			"Server identifier (ID or hostname). It is required for all states except 'running' and 'present'.",
		]
		count: {
			description: [
				"The number of servers to create.",
			]
			default: 1
		}
		ssh_key: description: [
			"User's public SSH key (contents, not path).",
		]
		server_type: {
			description: [
				"The type of server to be built.",
			]
			default: "cloud"
			choices: ["cloud", "baremetal", "k8s_node"]
		}
		wait: {
			description: [
				"Wait for the server to be in state 'running' before returning. Also used for delete operation (set to 'false' if you don't want to wait for each individual server to be deleted before moving on with other tasks.)",
			]

			type:    "bool"
			default: "yes"
		}
		wait_timeout: {
			description: [
				"how long before wait gives up, in seconds",
			]
			default: 600
		}
		wait_interval: {
			description: [
				"Defines the number of seconds to wait when using the wait_for methods",
			]
			default: 5
		}
		auto_increment: {
			description: [
				"When creating multiple servers at once, whether to differentiate hostnames by appending a count after them or substituting the count where there is a %02d or %03d in the hostname string.",
			]

			type:    "bool"
			default: "yes"
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
