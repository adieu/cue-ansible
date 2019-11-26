package ansible

module: oneandone_firewall_policy: {
	module:            "oneandone_firewall_policy"
	short_description: "Configure 1&1 firewall policy."
	description: [
		"Create, remove, reconfigure, update firewall policies. This module has a dependency on 1and1 >= 1.0",
	]

	version_added: "2.5"
	options: {
		state: {
			description: [
				"Define a firewall policy state to create, remove, or update.",
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
				"Custom API URL. Overrides the ONEANDONE_API_URL environment variable.",
			]

			required: false
		}
		name: {
			description: [
				"Firewall policy name used with present state. Used as identifier (id or name) when used with absent state. maxLength=128",
			]

			required: true
		}
		firewall_policy: {
			description: [
				"The identifier (id or name) of the firewall policy used with update state.",
			]
			required: true
		}
		rules: description: [
			"A list of rules that will be set for the firewall policy. Each rule must contain protocol parameter, in addition to three optional parameters (port_from, port_to, and source)",
		]

		add_server_ips: {
			description: [
				"A list of server identifiers (id or name) to be assigned to a firewall policy. Used in combination with update state.",
			]

			required: false
		}
		remove_server_ips: {
			description: [
				"A list of server IP ids to be unassigned from a firewall policy. Used in combination with update state.",
			]
			required: false
		}
		add_rules: {
			description: [
				"A list of rules that will be added to an existing firewall policy. It is syntax is the same as the one used for rules parameter. Used in combination with update state.",
			]

			required: false
		}
		remove_rules: {
			description: [
				"A list of rule ids that will be removed from an existing firewall policy. Used in combination with update state.",
			]
			required: false
		}
		description: {
			description: [
				"Firewall policy description. maxLength=256",
			]
			required: false
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
