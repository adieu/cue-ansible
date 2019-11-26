package ansible

module: oneandone_public_ip: {
	module:            "oneandone_public_ip"
	short_description: "Configure 1&1 public IPs."
	description: [
		"Create, update, and remove public IPs. This module has a dependency on 1and1 >= 1.0",
	]

	version_added: "2.5"
	options: {
		state: {
			description: [
				"Define a public ip state to create, remove, or update.",
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
		api_url: {
			description: [
				"Custom API URL. Overrides the ONEANDONE_API_URL environement variable.",
			]

			required: false
		}
		reverse_dns: {
			description: [
				"Reverse DNS name. maxLength=256",
			]
			required: false
		}
		datacenter: {
			description: [
				"ID of the datacenter where the IP will be created (only for unassigned IPs).",
			]
			required: false
		}
		type: {
			description: [
				"Type of IP. Currently, only IPV4 is available.",
			]
			choices: ["IPV4", "IPV6"]
			default:  "IPV4"
			required: false
		}
		public_ip_id: {
			description: [
				"The ID of the public IP used with update and delete states.",
			]
			required: true
		}
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
