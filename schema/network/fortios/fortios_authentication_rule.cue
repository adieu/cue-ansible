package ansible

module: fortios_authentication_rule: {
	module:            "fortios_authentication_rule"
	short_description: "Configure Authentication Rules in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify authentication feature and rule category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		authentication_rule: {
			description: [
				"Configure Authentication Rules.",
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
				active_auth_method: {
					description: [
						"Select an active authentication method. Source authentication.scheme.name.",
					]
					type: "str"
				}
				comments: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				ip_based: {
					description: [
						"Enable/disable IP-based authentication. Once a user authenticates all traffic from the IP address the user authenticated from is allowed.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				name: {
					description: [
						"Authentication rule name.",
					]
					required: true
					type:     "str"
				}
				protocol: {
					description: [
						"Select the protocol to use for authentication . Users connect to the FortiGate using this protocol and are asked to authenticate.",
					]
					type: "str"
					choices: [
						"http",
						"ftp",
						"socks",
						"ssh",
					]
				}
				srcaddr: {
					description: [
						"Select an IPv4 source address from available options. Required for web proxy authentication.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address.name firewall.addrgrp.name firewall.proxy-address.name firewall.proxy-addrgrp.name.",
						]
						required: true
						type:     "str"
					}
				}
				srcaddr6: {
					description: [
						"Select an IPv6 source address. Required for web proxy authentication.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address6.name firewall.addrgrp6.name.",
						]
						required: true
						type:     "str"
					}
				}
				sso_auth_method: {
					description: [
						"Select a single-sign on (SSO) authentication method. Source authentication.scheme.name.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable this authentication rule.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				transaction_based: {
					description: [
						"Enable/disable transaction based authentication .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_auth_cookie: {
					description: [
						"Enable/disable Web authentication cookies .",
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
