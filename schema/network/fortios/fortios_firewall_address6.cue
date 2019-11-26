package ansible

module: fortios_firewall_address6: {
	module:            "fortios_firewall_address6"
	short_description: "Configure IPv6 firewall addresses in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and address6 category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_address6: {
			description: [
				"Configure IPv6 firewall addresses.",
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
				cache_ttl: {
					description: [
						"Minimal TTL of individual IPv6 addresses in FQDN cache.",
					]
					type: "int"
				}
				color: {
					description: [
						"Integer value to determine the color of the icon in the GUI (range 1 to 32).",
					]
					type: "int"
				}
				comment: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				end_ip: {
					description: [
						"Final IP address (inclusive) in the range for the address (format: xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx).",
					]
					type: "str"
				}
				fqdn: {
					description: [
						"Fully qualified domain name.",
					]
					type: "str"
				}
				host: {
					description: [
						"Host Address.",
					]
					type: "str"
				}
				host_type: {
					description: [
						"Host type.",
					]
					type: "str"
					choices: [
						"any",
						"specific",
					]
				}
				ip6: {
					description: [
						"IPv6 address prefix (format: xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx/xxx).",
					]
					type: "str"
				}
				list: {
					description: [
						"IP address list.",
					]
					type: "list"
					suboptions: ip: {
						description: [
							"IP.",
						]
						required: true
						type:     "str"
					}
				}
				name: {
					description: [
						"Address name.",
					]
					required: true
					type:     "str"
				}
				obj_id: {
					description: [
						"Object ID for NSX.",
					]
					type: "str"
				}
				sdn: {
					description: [
						"SDN.",
					]
					type: "str"
					choices: [
						"nsx",
					]
				}
				start_ip: {
					description: [
						"First IP address (inclusive) in the range for the address (format: xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx).",
					]
					type: "str"
				}
				subnet_segment: {
					description: [
						"IPv6 subnet segments.",
					]
					type: "list"
					suboptions: {
						name: {
							description: [
								"Name.",
							]
							required: true
							type:     "str"
						}
						type: {
							description: [
								"Subnet segment type.",
							]
							type: "str"
							choices: [
								"any",
								"specific",
							]
						}
						value: {
							description: [
								"Subnet segment value.",
							]
							type: "str"
						}
					}
				}
				tagging: {
					description: [
						"Config object tagging",
					]
					type: "list"
					suboptions: {
						category: {
							description: [
								"Tag category. Source system.object-tagging.category.",
							]
							type: "str"
						}
						name: {
							description: [
								"Tagging entry name.",
							]
							required: true
							type:     "str"
						}
						tags: {
							description: [
								"Tags.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Tag name. Source system.object-tagging.tags.name.",
								]
								required: true
								type:     "str"
							}
						}
					}
				}
				template: {
					description: [
						"IPv6 address template. Source firewall.address6-template.name.",
					]
					type: "str"
				}
				type: {
					description: [
						"Type of IPv6 address object .",
					]
					type: "str"
					choices: [
						"ipprefix",
						"iprange",
						"fqdn",
						"dynamic",
						"template",
					]
				}
				uuid: {
					description: [
						"Universally Unique Identifier (UUID; automatically assigned but can be manually reset).",
					]
					type: "str"
				}
				visibility: {
					description: [
						"Enable/disable the visibility of the object in the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
			}
		}
	}
}
