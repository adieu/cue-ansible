package ansible

module: fortios_firewall_address6_template: {
	module:            "fortios_firewall_address6_template"
	short_description: "Configure IPv6 address templates in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and address6_template category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_address6_template: {
			description: [
				"Configure IPv6 address templates.",
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
				ip6: {
					description: [
						"IPv6 address prefix.",
					]
					type: "str"
				}
				name: {
					description: [
						"IPv6 address template name.",
					]
					required: true
					type:     "str"
				}
				subnet_segment: {
					description: [
						"IPv6 subnet segments.",
					]
					type: "list"
					suboptions: {
						bits: {
							description: [
								"Number of bits.",
							]
							type: "int"
						}
						exclusive: {
							description: [
								"Enable/disable exclusive value.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						id: {
							description: [
								"Subnet segment ID.",
							]
							required: true
							type:     "int"
						}
						name: {
							description: [
								"Subnet segment name.",
							]
							type: "str"
						}
						values: {
							description: [
								"Subnet segment values.",
							]
							type: "list"
							suboptions: {
								name: {
									description: [
										"Subnet segment value name.",
									]
									required: true
									type:     "str"
								}
								value: {
									description: [
										"Subnet segment value.",
									]
									type: "str"
								}
							}
						}
					}
				}
				subnet_segment_count: {
					description: [
						"Number of IPv6 subnet segments.",
					]
					type: "int"
				}
			}
		}
	}
}
