package ansible

module: fortios_wireless_controller_hotspot20_anqp_ip_address_type: {
	module:            "fortios_wireless_controller_hotspot20_anqp_ip_address_type"
	short_description: "Configure IP address type availability in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wireless_controller_hotspot20 feature and anqp_ip_address_type category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wireless_controller_hotspot20_anqp_ip_address_type: {
			description: [
				"Configure IP address type availability.",
			]
			default: null
			type:    "dict"
			suboptions: {
				ipv4_address_type: {
					description: [
						"IPv4 address type.",
					]
					type: "str"
					choices: [
						"not-available",
						"public",
						"port-restricted",
						"single-NATed-private",
						"double-NATed-private",
						"port-restricted-and-single-NATed",
						"port-restricted-and-double-NATed",
						"not-known",
					]
				}
				ipv6_address_type: {
					description: [
						"IPv6 address type.",
					]
					type: "str"
					choices: [
						"not-available",
						"available",
						"not-known",
					]
				}
				name: {
					description: [
						"IP type name.",
					]
					required: true
					type:     "str"
				}
			}
		}
	}
}
