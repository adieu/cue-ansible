package ansible

module: fortios_system_ipv6_neighbor_cache: {
	module:            "fortios_system_ipv6_neighbor_cache"
	short_description: "Configure IPv6 neighbor cache table in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and ipv6_neighbor_cache category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_ipv6_neighbor_cache: {
			description: [
				"Configure IPv6 neighbor cache table.",
			]
			default: null
			type:    "dict"
			suboptions: {
				id: {
					description: [
						"Unique integer ID of the entry.",
					]
					required: true
					type:     "int"
				}
				interface: {
					description: [
						"Select the associated interface name from available options. Source system.interface.name.",
					]
					type: "str"
				}
				ipv6: {
					description: [
						"IPv6 address (format: xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx).",
					]
					type: "str"
				}
				mac: {
					description: [
						"MAC address (format: xx:xx:xx:xx:xx:xx).",
					]
					type: "str"
				}
			}
		}
	}
}
