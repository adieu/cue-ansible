package ansible

module: fortios_system_ddns: {
	module:            "fortios_system_ddns"
	short_description: "Configure DDNS in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and ddns category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_ddns: {
			description: [
				"Configure DDNS.",
			]
			default: null
			type:    "dict"
			suboptions: {
				bound_ip: {
					description: [
						"Bound IP address.",
					]
					type: "str"
				}
				clear_text: {
					description: [
						"Enable/disable use of clear text connections.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				ddns_auth: {
					description: [
						"Enable/disable TSIG authentication for your DDNS server.",
					]
					type: "str"
					choices: [
						"disable",
						"tsig",
					]
				}
				ddns_domain: {
					description: [
						"Your fully qualified domain name (for example, yourname.DDNS.com).",
					]
					type: "str"
				}
				ddns_key: {
					description: [
						"DDNS update key (base 64 encoding).",
					]
					type: "str"
				}
				ddns_keyname: {
					description: [
						"DDNS update key name.",
					]
					type: "str"
				}
				ddns_password: {
					description: [
						"DDNS password.",
					]
					type: "str"
				}
				ddns_server: {
					description: [
						"Select a DDNS service provider.",
					]
					type: "str"
					choices: [
						"dyndns.org",
						"dyns.net",
						"tzo.com",
						"vavic.com",
						"dipdns.net",
						"now.net.cn",
						"dhs.org",
						"easydns.com",
						"genericDDNS",
						"FortiGuardDDNS",
						"noip.com",
					]
				}
				ddns_server_ip: {
					description: [
						"Generic DDNS server IP.",
					]
					type: "str"
				}
				ddns_sn: {
					description: [
						"DDNS Serial Number.",
					]
					type: "str"
				}
				ddns_ttl: {
					description: [
						"Time-to-live for DDNS packets.",
					]
					type: "int"
				}
				ddns_username: {
					description: [
						"DDNS user name.",
					]
					type: "str"
				}
				ddns_zone: {
					description: [
						"Zone of your domain name (for example, DDNS.com).",
					]
					type: "str"
				}
				ddnsid: {
					description: [
						"DDNS ID.",
					]
					required: true
					type:     "int"
				}
				monitor_interface: {
					description: [
						"Monitored interface.",
					]
					type: "list"
					suboptions: interface_name: {
						description: [
							"Interface name. Source system.interface.name.",
						]
						type: "str"
					}
				}
				ssl_certificate: {
					description: [
						"Name of local certificate for SSL connections. Source certificate.local.name.",
					]
					type: "str"
				}
				update_interval: {
					description: [
						"DDNS update interval (60 - 2592000 sec).",
					]
					type: "int"
				}
				use_public_ip: {
					description: [
						"Enable/disable use of public IP address.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
			}
		}
	}
}
