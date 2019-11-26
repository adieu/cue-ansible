package ansible

module: fortios_firewall_ip_translation: {
	module:            "fortios_firewall_ip_translation"
	short_description: "Configure firewall IP-translation in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and ip_translation category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		state: {
			description: [
				"Indicates whether to create or remove the object. This attribute was present already in previous version in a deeper level. It has been moved out to this outer level.",
			]

			type:     "str"
			required: false
			choices: [
				"present",
				"absent",
			]
			version_added: 2.9
		}
		firewall_ip_translation: {
			description: [
				"Configure firewall IP-translation.",
			]
			default: null
			type:    "dict"
			suboptions: {
				state: {
					description: [
						"B(Deprecated)",
						"Starting with Ansible 2.9 we recommend using the top-level 'state' parameter.",
						"HORIZONTALLINE",
						"Indicates whether to create or remove the object.",
					]
					type:     "str"
					required: false
					choices: [
						"present",
						"absent",
					]
				}
				endip: {
					description: [
						"Final IPv4 address (inclusive) in the range of the addresses to be translated (format xxx.xxx.xxx.xxx).",
					]
					type: "str"
				}
				map_startip: {
					description: [
						"Address to be used as the starting point for translation in the range (format xxx.xxx.xxx.xxx).",
					]
					type: "str"
				}
				startip: {
					description: [
						"First IPv4 address (inclusive) in the range of the addresses to be translated (format xxx.xxx.xxx.xxx).",
					]
					type: "str"
				}
				transid: {
					description: [
						"IP translation ID.",
					]
					required: true
					type:     "int"
				}
				type: {
					description: [
						"IP translation type (option: SCTP).",
					]
					type: "str"
					choices: ["SCTP"]
				}
			}
		}
	}
}
