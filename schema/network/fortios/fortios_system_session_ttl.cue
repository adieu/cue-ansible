package ansible

module: fortios_system_session_ttl: {
	module:            "fortios_system_session_ttl"
	short_description: "Configure global session TTL timers for this FortiGate in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and session_ttl category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_session_ttl: {
			description: [
				"Configure global session TTL timers for this FortiGate.",
			]
			default: null
			type:    "dict"
			suboptions: {
				default: {
					description: [
						"Default timeout.",
					]
					type: "str"
				}
				port: {
					description: [
						"Session TTL port.",
					]
					type: "list"
					suboptions: {
						end_port: {
							description: [
								"End port number.",
							]
							type: "int"
						}
						id: {
							description: [
								"Table entry ID.",
							]
							required: true
							type:     "int"
						}
						protocol: {
							description: [
								"Protocol (0 - 255).",
							]
							type: "int"
						}
						start_port: {
							description: [
								"Start port number.",
							]
							type: "int"
						}
						timeout: {
							description: [
								"Session timeout (TTL).",
							]
							type: "str"
						}
					}
				}
			}
		}
	}
}
