package ansible

module: fortios_spamfilter_dnsbl: {
	module:            "fortios_spamfilter_dnsbl"
	short_description: "Configure AntiSpam DNSBL/ORBL in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify spamfilter feature and dnsbl category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		spamfilter_dnsbl: {
			description: [
				"Configure AntiSpam DNSBL/ORBL.",
			]
			default: null
			type:    "dict"
			suboptions: {
				comment: {
					description: [
						"Optional comments.",
					]
					type: "str"
				}
				entries: {
					description: [
						"Spam filter DNSBL and ORBL server.",
					]
					type: "list"
					suboptions: {
						action: {
							description: [
								"Reject connection or mark as spam email.",
							]
							type: "str"
							choices: [
								"reject",
								"spam",
							]
						}
						id: {
							description: [
								"DNSBL/ORBL entry ID.",
							]
							required: true
							type:     "int"
						}
						server: {
							description: [
								"DNSBL or ORBL server name.",
							]
							type: "str"
						}
						status: {
							description: [
								"Enable/disable status.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				id: {
					description: [
						"ID.",
					]
					required: true
					type:     "int"
				}
				name: {
					description: [
						"Name of table.",
					]
					type: "str"
				}
			}
		}
	}
}
