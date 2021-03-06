package ansible

module: fortios_firewall_proxy_address: {
	module:            "fortios_firewall_proxy_address"
	short_description: "Web proxy address configuration in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and proxy_address category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_proxy_address: {
			description: [
				"Web proxy address configuration.",
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
				case_sensitivity: {
					description: [
						"Enable to make the pattern case sensitive.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				category: {
					description: [
						"FortiGuard category ID.",
					]
					type: "list"
					suboptions: id: {
						description: [
							"Fortiguard category id.",
						]
						required: true
						type:     "int"
					}
				}
				color: {
					description: [
						"Integer value to determine the color of the icon in the GUI (1 - 32).",
					]
					type: "int"
				}
				comment: {
					description: [
						"Optional comments.",
					]
					type: "str"
				}
				header: {
					description: [
						"HTTP header name as a regular expression.",
					]
					type: "str"
				}
				header_group: {
					description: [
						"HTTP header group.",
					]
					type: "list"
					suboptions: {
						case_sensitivity: {
							description: [
								"Case sensitivity in pattern.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						header: {
							description: [
								"HTTP header regular expression.",
							]
							type: "str"
						}
						header_name: {
							description: [
								"HTTP header.",
							]
							type: "str"
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
					}
				}
				header_name: {
					description: [
						"Name of HTTP header.",
					]
					type: "str"
				}
				host: {
					description: [
						"Address object for the host. Source firewall.address.name firewall.addrgrp.name firewall.proxy-address.name.",
					]
					type: "str"
				}
				host_regex: {
					description: [
						"Host name as a regular expression.",
					]
					type: "str"
				}
				method: {
					description: [
						"HTTP request methods to be used.",
					]
					type: "str"
					choices: [
						"get",
						"post",
						"put",
						"head",
						"connect",
						"trace",
						"options",
						"delete",
					]
				}
				name: {
					description: [
						"Address name.",
					]
					required: true
					type:     "str"
				}
				path: {
					description: [
						"URL path as a regular expression.",
					]
					type: "str"
				}
				query: {
					description: [
						"Match the query part of the URL as a regular expression.",
					]
					type: "str"
				}
				referrer: {
					description: [
						"Enable/disable use of referrer field in the HTTP header to match the address.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				tagging: {
					description: [
						"Config object tagging.",
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
				type: {
					description: [
						"Proxy address type.",
					]
					type: "str"
					choices: [
						"host-regex",
						"url",
						"category",
						"method",
						"ua",
						"header",
						"src-advanced",
						"dst-advanced",
					]
				}
				ua: {
					description: [
						"Names of browsers to be used as user agent.",
					]
					type: "str"
					choices: [
						"chrome",
						"ms",
						"firefox",
						"safari",
						"other",
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
						"Enable/disable visibility of the object in the GUI.",
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
