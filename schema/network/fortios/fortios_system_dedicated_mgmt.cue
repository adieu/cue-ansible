package ansible

module: fortios_system_dedicated_mgmt: {
	module:            "fortios_system_dedicated_mgmt"
	short_description: "Configure dedicated management in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and dedicated_mgmt category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_dedicated_mgmt: {
			description: [
				"Configure dedicated management.",
			]
			default: null
			type:    "dict"
			suboptions: {
				default_gateway: {
					description: [
						"Default gateway for dedicated management interface.",
					]
					type: "str"
				}
				dhcp_end_ip: {
					description: [
						"DHCP end IP for dedicated management.",
					]
					type: "str"
				}
				dhcp_netmask: {
					description: [
						"DHCP netmask.",
					]
					type: "str"
				}
				dhcp_server: {
					description: [
						"Enable/disable DHCP server on management interface.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				dhcp_start_ip: {
					description: [
						"DHCP start IP for dedicated management.",
					]
					type: "str"
				}
				interface: {
					description: [
						"Dedicated management interface. Source system.interface.name.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable dedicated management.",
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
