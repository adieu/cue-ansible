package ansible

module: fortios_system_api_user: {
	module:            "fortios_system_api_user"
	short_description: "Configure API users in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and api_user category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_api_user: {
			description: [
				"Configure API users.",
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
				accprofile: {
					description: [
						"Admin user access profile. Source system.accprofile.name.",
					]
					type: "str"
				}
				api_key: {
					description: [
						"Admin user password.",
					]
					type: "str"
				}
				comments: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				cors_allow_origin: {
					description: [
						"Value for Access-Control-Allow-Origin on API responses. Avoid using '*' if possible.",
					]
					type: "str"
				}
				name: {
					description: [
						"User name.",
					]
					required: true
					type:     "str"
				}
				peer_auth: {
					description: [
						"Enable/disable peer authentication.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				peer_group: {
					description: [
						"Peer group name.",
					]
					type: "str"
				}
				schedule: {
					description: [
						"Schedule name.",
					]
					type: "str"
				}
				trusthost: {
					description: [
						"Trusthost.",
					]
					type: "list"
					suboptions: {
						id: {
							description: [
								"Table ID.",
							]
							required: true
							type:     "int"
						}
						ipv4_trusthost: {
							description: [
								"IPv4 trusted host address.",
							]
							type: "str"
						}
						ipv6_trusthost: {
							description: [
								"IPv6 trusted host address.",
							]
							type: "str"
						}
						type: {
							description: [
								"Trusthost type.",
							]
							type: "str"
							choices: [
								"ipv4-trusthost",
								"ipv6-trusthost",
							]
						}
					}
				}
				vdom: {
					description: [
						"Virtual domains.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Virtual domain name. Source system.vdom.name.",
						]
						required: true
						type:     "str"
					}
				}
			}
		}
	}
}
