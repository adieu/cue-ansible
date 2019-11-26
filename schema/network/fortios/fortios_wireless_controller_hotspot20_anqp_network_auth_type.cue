package ansible

module: fortios_wireless_controller_hotspot20_anqp_network_auth_type: {
	module:            "fortios_wireless_controller_hotspot20_anqp_network_auth_type"
	short_description: "Configure network authentication type in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wireless_controller_hotspot20 feature and anqp_network_auth_type category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wireless_controller_hotspot20_anqp_network_auth_type: {
			description: [
				"Configure network authentication type.",
			]
			default: null
			type:    "dict"
			suboptions: {
				auth_type: {
					description: [
						"Network authentication type.",
					]
					type: "str"
					choices: [
						"acceptance-of-terms",
						"online-enrollment",
						"http-redirection",
						"dns-redirection",
					]
				}
				name: {
					description: [
						"Authentication type name.",
					]
					required: true
					type:     "str"
				}
				url: {
					description: [
						"Redirect URL.",
					]
					type: "str"
				}
			}
		}
	}
}
