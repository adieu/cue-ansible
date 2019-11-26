package ansible

module: fortios_web_proxy_forward_server_group: {
	module:            "fortios_web_proxy_forward_server_group"
	short_description: "Configure a forward server group consisting or multiple forward servers. Supports failover and load balancing in Fortinet's FortiOS and FortiGate."

	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify web_proxy feature and forward_server_group category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
	]

	version_added: "2.9"
	author: [
		"Miguel Angel Munoz (@mamunozgonzalez)",
		"Nicolas Thomas (@thomnico)",
	]
	notes: [
		"Requires fortiosapi library developed by Fortinet",
		"Run as a local_action in your playbook",
	]
	requirements: [
		"fortiosapi>=0.9.8",
	]
	options: {
		host: {
			description: [
				"FortiOS or FortiGate IP address.",
			]
			type:     "str"
			required: false
		}
		username: {
			description: [
				"FortiOS or FortiGate username.",
			]
			type:     "str"
			required: false
		}
		password: {
			description: [
				"FortiOS or FortiGate password.",
			]
			type:    "str"
			default: ""
		}
		vdom: {
			description: [
				"Virtual domain, among those defined previously. A vdom is a virtual instance of the FortiGate that can be configured and used as a different unit.",
			]

			type:    "str"
			default: "root"
		}
		https: {
			description: [
				"Indicates if the requests towards FortiGate must use HTTPS protocol.",
			]
			type:    "bool"
			default: true
		}
		ssl_verify: {
			description: [
				"Ensures FortiGate certificate must be verified by a proper CA.",
			]
			type:    "bool"
			default: true
		}
		state: {
			description: [
				"Indicates whether to create or remove the object.",
			]
			type:     "str"
			required: true
			choices: [
				"present",
				"absent",
			]
		}
		web_proxy_forward_server_group: {
			description: [
				"Configure a forward server group consisting or multiple forward servers. Supports failover and load balancing.",
			]
			default: null
			type:    "dict"
			suboptions: {
				affinity: {
					description: [
						"Enable/disable affinity, attaching a source-ip's traffic to the assigned forwarding server until the forward-server-affinity-timeout is reached (under web-proxy global).",
					]

					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				group_down_option: {
					description: [
						"Action to take when all of the servers in the forward server group are down: block sessions until at least one server is back up or pass sessions to their destination.",
					]

					type: "str"
					choices: [
						"block",
						"pass",
					]
				}
				ldb_method: {
					description: [
						"Load balance method: weighted or least-session.",
					]
					type: "str"
					choices: [
						"weighted",
						"least-session",
					]
				}
				name: {
					description: [
						"Configure a forward server group consisting one or multiple forward servers. Supports failover and load balancing.",
					]
					required: true
					type:     "str"
				}
				server_list: {
					description: [
						"Add web forward servers to a list to form a server group. Optionally assign weights to each server.",
					]
					type: "list"
					suboptions: {
						name: {
							description: [
								"Forward server name. Source web-proxy.forward-server.name.",
							]
							required: true
							type:     "str"
						}
						weight: {
							description: [
								"Optionally assign a weight of the forwarding server for weighted load balancing (1 - 100)",
							]
							type: "int"
						}
					}
				}
			}
		}
	}
}
