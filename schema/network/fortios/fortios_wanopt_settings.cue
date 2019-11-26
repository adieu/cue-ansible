package ansible

module: fortios_wanopt_settings: {
	module:            "fortios_wanopt_settings"
	short_description: "Configure WAN optimization settings in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wanopt feature and settings category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wanopt_settings: {
			description: [
				"Configure WAN optimization settings.",
			]
			default: null
			type:    "dict"
			suboptions: {
				auto_detect_algorithm: {
					description: [
						"Auto detection algorithms used in tunnel negotiations.",
					]
					type: "str"
					choices: [
						"simple",
						"diff-req-resp",
					]
				}
				host_id: {
					description: [
						"Local host ID (must also be entered in the remote FortiGate's peer list).",
					]
					type: "str"
				}
				tunnel_ssl_algorithm: {
					description: [
						"Relative strength of encryption algorithms accepted during tunnel negotiation.",
					]
					type: "str"
					choices: ["low"]
				}
			}
		}
	}
}
