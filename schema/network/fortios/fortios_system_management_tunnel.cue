package ansible

module: fortios_system_management_tunnel: {
	module:            "fortios_system_management_tunnel"
	short_description: "Management tunnel configuration in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and management_tunnel category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_management_tunnel: {
			description: [
				"Management tunnel configuration.",
			]
			default: null
			type:    "dict"
			suboptions: {
				allow_collect_statistics: {
					description: [
						"Enable/disable collection of run time statistics.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				allow_config_restore: {
					description: [
						"Enable/disable allow config restore.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				allow_push_configuration: {
					description: [
						"Enable/disable push configuration.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				allow_push_firmware: {
					description: [
						"Enable/disable push firmware.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				authorized_manager_only: {
					description: [
						"Enable/disable restriction of authorized manager only.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				serial_number: {
					description: [
						"Serial number.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable FGFM tunnel.",
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
