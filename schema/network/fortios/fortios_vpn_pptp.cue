package ansible

module: fortios_vpn_pptp: {
	module:            "fortios_vpn_pptp"
	short_description: "Configure PPTP in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify vpn feature and pptp category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		vpn_pptp: {
			description: [
				"Configure PPTP.",
			]
			default: null
			type:    "dict"
			suboptions: {
				eip: {
					description: [
						"End IP.",
					]
					type: "str"
				}
				ip_mode: {
					description: [
						"IP assignment mode for PPTP client.",
					]
					type: "str"
					choices: [
						"range",
						"usrgrp",
					]
				}
				local_ip: {
					description: [
						"Local IP to be used for peer's remote IP.",
					]
					type: "str"
				}
				sip: {
					description: [
						"Start IP.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable FortiGate as a PPTP gateway.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				usrgrp: {
					description: [
						"User group. Source user.group.name.",
					]
					type: "str"
				}
			}
		}
	}
}
