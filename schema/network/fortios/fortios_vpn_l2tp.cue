package ansible

module: fortios_vpn_l2tp: {
	module:            "fortios_vpn_l2tp"
	short_description: "Configure L2TP in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify vpn feature and l2tp category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		vpn_l2tp: {
			description: [
				"Configure L2TP.",
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
				enforce_ipsec: {
					description: [
						"Enable/disable IPsec enforcement.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				sip: {
					description: [
						"Start IP.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable FortiGate as a L2TP gateway.",
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
