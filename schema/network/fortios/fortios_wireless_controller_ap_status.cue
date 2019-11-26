package ansible

module: fortios_wireless_controller_ap_status: {
	module:            "fortios_wireless_controller_ap_status"
	short_description: "Configure access point status (rogue | accepted | suppressed) in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wireless_controller feature and ap_status category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wireless_controller_ap_status: {
			description: [
				"Configure access point status (rogue | accepted | suppressed).",
			]
			default: null
			type:    "dict"
			suboptions: {
				bssid: {
					description: [
						"Access Point's (AP's) BSSID.",
					]
					type: "str"
				}
				id: {
					description: [
						"AP ID.",
					]
					required: true
					type:     "int"
				}
				ssid: {
					description: [
						"Access Point's (AP's) SSID.",
					]
					type: "str"
				}
				status: {
					description: [
						"Access Point's (AP's) status: rogue, accepted, or suppressed.",
					]
					type: "str"
					choices: [
						"rogue",
						"accepted",
						"suppressed",
					]
				}
			}
		}
	}
}
