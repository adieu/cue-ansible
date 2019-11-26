package ansible

module: fortios_router_key_chain: {
	module:            "fortios_router_key_chain"
	short_description: "Configure key-chain in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify router feature and key_chain category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		router_key_chain: {
			description: [
				"Configure key-chain.",
			]
			default: null
			type:    "dict"
			suboptions: {
				key: {
					description: [
						"Configuration method to edit key settings.",
					]
					type: "list"
					suboptions: {
						accept_lifetime: {
							description: [
								"Lifetime of received authentication key (format: hh:mm:ss day month year).",
							]
							type: "str"
						}
						id: {
							description: [
								"Key ID (0 - 2147483647).",
							]
							required: true
							type:     "str"
						}
						key_string: {
							description: [
								"Password for the key (max. = 35 characters).",
							]
							type: "str"
						}
						send_lifetime: {
							description: [
								"Lifetime of sent authentication key (format: hh:mm:ss day month year).",
							]
							type: "str"
						}
					}
				}
				name: {
					description: [
						"Key-chain name.",
					]
					required: true
					type:     "str"
				}
			}
		}
	}
}
