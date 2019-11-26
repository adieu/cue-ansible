package ansible

module: fortios_router_access_list: {
	module:            "fortios_router_access_list"
	short_description: "Configure access lists in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify router feature and access_list category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
	]

	version_added: "2.8"
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
			type:          "bool"
			default:       true
			version_added: 2.9
		}
		state: {
			description: [
				"Indicates whether to create or remove the object. This attribute was present already in previous version in a deeper level. It has been moved out to this outer level.",
			]

			type:     "str"
			required: false
			choices: [
				"present",
				"absent",
			]
			version_added: 2.9
		}
		router_access_list: {
			description: [
				"Configure access lists.",
			]
			default: null
			type:    "dict"
			suboptions: {
				state: {
					description: [
						"B(Deprecated)",
						"Starting with Ansible 2.9 we recommend using the top-level 'state' parameter.",
						"HORIZONTALLINE",
						"Indicates whether to create or remove the object.",
					]
					type:     "str"
					required: false
					choices: [
						"present",
						"absent",
					]
				}
				comments: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				name: {
					description: [
						"Name.",
					]
					required: true
					type:     "str"
				}
				rule: {
					description: [
						"Rule.",
					]
					type: "list"
					suboptions: {
						action: {
							description: [
								"Permit or deny this IP address and netmask prefix.",
							]
							type: "str"
							choices: [
								"permit",
								"deny",
							]
						}
						exact_match: {
							description: [
								"Enable/disable exact match.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						flags: {
							description: [
								"Flags.",
							]
							type: "int"
						}
						id: {
							description: [
								"Rule ID.",
							]
							required: true
							type:     "int"
						}
						prefix: {
							description: [
								"IPv4 prefix to define regular filter criteria, such as \"any\" or subnets.",
							]
							type: "str"
						}
						wildcard: {
							description: [
								"Wildcard to define Cisco-style wildcard filter criteria.",
							]
							type: "str"
						}
					}
				}
			}
		}
	}
}
