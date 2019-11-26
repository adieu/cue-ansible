package ansible

module: fortios_user_fsso: {
	module:            "fortios_user_fsso"
	short_description: "Configure Fortinet Single Sign On (FSSO) agents in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify user feature and fsso category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		user_fsso: {
			description: [
				"Configure Fortinet Single Sign On (FSSO) agents.",
			]
			default: null
			type:    "dict"
			suboptions: {
				ldap_server: {
					description: [
						"LDAP server to get group information. Source user.ldap.name.",
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
				password: {
					description: [
						"Password of the first FSSO collector agent.",
					]
					type: "str"
				}
				password2: {
					description: [
						"Password of the second FSSO collector agent.",
					]
					type: "str"
				}
				password3: {
					description: [
						"Password of the third FSSO collector agent.",
					]
					type: "str"
				}
				password4: {
					description: [
						"Password of the fourth FSSO collector agent.",
					]
					type: "str"
				}
				password5: {
					description: [
						"Password of the fifth FSSO collector agent.",
					]
					type: "str"
				}
				port: {
					description: [
						"Port of the first FSSO collector agent.",
					]
					type: "int"
				}
				port2: {
					description: [
						"Port of the second FSSO collector agent.",
					]
					type: "int"
				}
				port3: {
					description: [
						"Port of the third FSSO collector agent.",
					]
					type: "int"
				}
				port4: {
					description: [
						"Port of the fourth FSSO collector agent.",
					]
					type: "int"
				}
				port5: {
					description: [
						"Port of the fifth FSSO collector agent.",
					]
					type: "int"
				}
				server: {
					description: [
						"Domain name or IP address of the first FSSO collector agent.",
					]
					type: "str"
				}
				server2: {
					description: [
						"Domain name or IP address of the second FSSO collector agent.",
					]
					type: "str"
				}
				server3: {
					description: [
						"Domain name or IP address of the third FSSO collector agent.",
					]
					type: "str"
				}
				server4: {
					description: [
						"Domain name or IP address of the fourth FSSO collector agent.",
					]
					type: "str"
				}
				server5: {
					description: [
						"Domain name or IP address of the fifth FSSO collector agent.",
					]
					type: "str"
				}
				source_ip: {
					description: [
						"Source IP for communications to FSSO agent.",
					]
					type: "str"
				}
				source_ip6: {
					description: [
						"IPv6 source for communications to FSSO agent.",
					]
					type: "str"
				}
			}
		}
	}
}
