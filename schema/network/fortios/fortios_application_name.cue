package ansible

module: fortios_application_name: {
	module:            "fortios_application_name"
	short_description: "Configure application signatures in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify application feature and name category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		application_name: {
			description: [
				"Configure application signatures.",
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
				behavior: {
					description: [
						"Application behavior.",
					]
					type: "str"
				}
				category: {
					description: [
						"Application category ID.",
					]
					type: "int"
				}
				id: {
					description: [
						"Application ID.",
					]
					type: "int"
				}
				metadata: {
					description: [
						"Meta data.",
					]
					type: "list"
					suboptions: {
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						metaid: {
							description: [
								"Meta ID.",
							]
							type: "int"
						}
						valueid: {
							description: [
								"Value ID.",
							]
							type: "int"
						}
					}
				}
				name: {
					description: [
						"Application name.",
					]
					required: true
					type:     "str"
				}
				parameter: {
					description: [
						"Application parameter name.",
					]
					type: "str"
				}
				popularity: {
					description: [
						"Application popularity.",
					]
					type: "int"
				}
				protocol: {
					description: [
						"Application protocol.",
					]
					type: "str"
				}
				risk: {
					description: [
						"Application risk.",
					]
					type: "int"
				}
				sub_category: {
					description: [
						"Application sub-category ID.",
					]
					type: "int"
				}
				technology: {
					description: [
						"Application technology.",
					]
					type: "str"
				}
				vendor: {
					description: [
						"Application vendor.",
					]
					type: "str"
				}
				weight: {
					description: [
						"Application weight.",
					]
					type: "int"
				}
			}
		}
	}
}
