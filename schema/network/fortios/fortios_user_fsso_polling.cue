package ansible

module: fortios_user_fsso_polling: {
	module:            "fortios_user_fsso_polling"
	short_description: "Configure FSSO active directory servers for polling mode in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify user feature and fsso_polling category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		user_fsso_polling: {
			description: [
				"Configure FSSO active directory servers for polling mode.",
			]
			default: null
			type:    "dict"
			suboptions: {
				adgrp: {
					description: [
						"LDAP Group Info.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Name.",
						]
						required: true
						type:     "str"
					}
				}
				default_domain: {
					description: [
						"Default domain managed by this Active Directory server.",
					]
					type: "str"
				}
				id: {
					description: [
						"Active Directory server ID.",
					]
					required: true
					type:     "int"
				}
				ldap_server: {
					description: [
						"LDAP server name used in LDAP connection strings. Source user.ldap.name.",
					]
					type: "str"
				}
				logon_history: {
					description: [
						"Number of hours of logon history to keep, 0 means keep all history.",
					]
					type: "int"
				}
				password: {
					description: [
						"Password required to log into this Active Directory server",
					]
					type: "str"
				}
				polling_frequency: {
					description: [
						"Polling frequency (every 1 to 30 seconds).",
					]
					type: "int"
				}
				port: {
					description: [
						"Port to communicate with this Active Directory server.",
					]
					type: "int"
				}
				server: {
					description: [
						"Host name or IP address of the Active Directory server.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable polling for the status of this Active Directory server.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				user: {
					description: [
						"User name required to log into this Active Directory server.",
					]
					type: "str"
				}
			}
		}
	}
}
