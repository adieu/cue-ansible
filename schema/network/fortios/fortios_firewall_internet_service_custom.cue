package ansible

module: fortios_firewall_internet_service_custom: {
	module:            "fortios_firewall_internet_service_custom"
	short_description: "Configure custom Internet Services in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and internet_service_custom category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_internet_service_custom: {
			description: [
				"Configure custom Internet Services.",
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
				comment: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				disable_entry: {
					description: [
						"Disable entries in the Internet Service database.",
					]
					type: "list"
					suboptions: {
						id: {
							description: [
								"Disable entry ID.",
							]
							required: true
							type:     "int"
						}
						ip_range: {
							description: [
								"IP ranges in the disable entry.",
							]
							type: "list"
							suboptions: {
								end_ip: {
									description: [
										"End IP address.",
									]
									type: "str"
								}
								id: {
									description: [
										"Disable entry range ID.",
									]
									required: true
									type:     "int"
								}
								start_ip: {
									description: [
										"Start IP address.",
									]
									type: "str"
								}
							}
						}
						port: {
							description: [
								"Integer value for the TCP/IP port (0 - 65535).",
							]
							type: "int"
						}
						protocol: {
							description: [
								"Integer value for the protocol type as defined by IANA (0 - 255).",
							]
							type: "int"
						}
					}
				}
				entry: {
					description: [
						"Entries added to the Internet Service database and custom database.",
					]
					type: "list"
					suboptions: {
						dst: {
							description: [
								"Destination address or address group name.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Select the destination address or address group object from available options. Source firewall.address.name firewall .addrgrp.name.",
								]

								required: true
								type:     "str"
							}
						}
						id: {
							description: [
								"Entry ID(1-255).",
							]
							required: true
							type:     "int"
						}
						port_range: {
							description: [
								"Port ranges in the custom entry.",
							]
							type: "list"
							suboptions: {
								end_port: {
									description: [
										"Integer value for ending TCP/UDP/SCTP destination port in range (1 to 65535).",
									]
									type: "int"
								}
								id: {
									description: [
										"Custom entry port range ID.",
									]
									required: true
									type:     "int"
								}
								start_port: {
									description: [
										"Integer value for starting TCP/UDP/SCTP destination port in range (1 to 65535).",
									]
									type: "int"
								}
							}
						}
						protocol: {
							description: [
								"Integer value for the protocol type as defined by IANA (0 - 255).",
							]
							type: "int"
						}
					}
				}
				master_service_id: {
					description: [
						"Internet Service ID in the Internet Service database. Source firewall.internet-service.id.",
					]
					type: "int"
				}
				name: {
					description: [
						"Internet Service name.",
					]
					required: true
					type:     "str"
				}
			}
		}
	}
}
