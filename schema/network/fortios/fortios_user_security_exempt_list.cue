package ansible

module: fortios_user_security_exempt_list: {
	module:            "fortios_user_security_exempt_list"
	short_description: "Configure security exemption list in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify user feature and security_exempt_list category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		user_security_exempt_list: {
			description: [
				"Configure security exemption list.",
			]
			default: null
			type:    "dict"
			suboptions: {
				description: {
					description: [
						"Description.",
					]
					type: "str"
				}
				name: {
					description: [
						"Name of the exempt list.",
					]
					required: true
					type:     "str"
				}
				rule: {
					description: [
						"Configure rules for exempting users from captive portal authentication.",
					]
					type: "list"
					suboptions: {
						devices: {
							description: [
								"Devices or device groups.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Device or group name. Source user.device.alias user.device-group.name user.device-category.name.",
								]
								required: true
								type:     "str"
							}
						}
						dstaddr: {
							description: [
								"Destination addresses or address groups.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Address or group name. Source firewall.address.name firewall.addrgrp.name.",
								]
								required: true
								type:     "str"
							}
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						service: {
							description: [
								"Destination services.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Service name. Source firewall.service.custom.name firewall.service.group.name.",
								]
								required: true
								type:     "str"
							}
						}
						srcaddr: {
							description: [
								"Source addresses or address groups.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Address or group name. Source firewall.address.name firewall.addrgrp.name.",
								]
								required: true
								type:     "str"
							}
						}
					}
				}
			}
		}
	}
}
