package ansible

module: fortios_system_fortimanager: {
	module:            "fortios_system_fortimanager"
	short_description: "Configure FortiManager in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and fortimanager category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_fortimanager: {
			description: [
				"Configure FortiManager.",
			]
			default: null
			type:    "dict"
			suboptions: {
				central_management: {
					description: [
						"Enable/disable FortiManager central management.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				central_mgmt_auto_backup: {
					description: [
						"Enable/disable central management auto backup.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				central_mgmt_schedule_config_restore: {
					description: [
						"Enable/disable central management schedule config restore.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				central_mgmt_schedule_script_restore: {
					description: [
						"Enable/disable central management schedule script restore.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ip: {
					description: [
						"IP address.",
					]
					type: "str"
				}
				ipsec: {
					description: [
						"Enable/disable FortiManager IPsec tunnel.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				vdom: {
					description: [
						"Virtual domain name. Source system.vdom.name.",
					]
					type: "str"
				}
			}
		}
	}
}
