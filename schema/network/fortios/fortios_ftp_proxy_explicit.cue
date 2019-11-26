package ansible

module: fortios_ftp_proxy_explicit: {
	module:            "fortios_ftp_proxy_explicit"
	short_description: "Configure explicit FTP proxy settings in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify ftp_proxy feature and explicit category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		ftp_proxy_explicit: {
			description: [
				"Configure explicit FTP proxy settings.",
			]
			default: null
			type:    "dict"
			suboptions: {
				incoming_ip: {
					description: [
						"Accept incoming FTP requests from this IP address. An interface must have this IP address.",
					]
					type: "str"
				}
				incoming_port: {
					description: [
						"Accept incoming FTP requests on one or more ports.",
					]
					type: "str"
				}
				outgoing_ip: {
					description: [
						"Outgoing FTP requests will leave from this IP address. An interface must have this IP address.",
					]
					type: "str"
				}
				sec_default_action: {
					description: [
						"Accept or deny explicit FTP proxy sessions when no FTP proxy firewall policy exists.",
					]
					type: "str"
					choices: [
						"accept",
						"deny",
					]
				}
				status: {
					description: [
						"Enable/disable the explicit FTP proxy.",
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
