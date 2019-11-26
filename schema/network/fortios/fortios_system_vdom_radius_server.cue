package ansible

module: fortios_system_vdom_radius_server: {
	module:            "fortios_system_vdom_radius_server"
	short_description: "Configure a RADIUS server to use as a RADIUS Single Sign On (RSSO) server for this VDOM in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and vdom_radius_server category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_vdom_radius_server: {
			description: [
				"Configure a RADIUS server to use as a RADIUS Single Sign On (RSSO) server for this VDOM.",
			]
			default: null
			type:    "dict"
			suboptions: {
				name: {
					description: [
						"Name of the VDOM that you are adding the RADIUS server to. Source system.vdom.name.",
					]
					required: true
					type:     "str"
				}
				radius_server_vdom: {
					description: [
						"Use this option to select another VDOM containing a VDOM RSSO RADIUS server to use for the current VDOM. Source system.vdom.name.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable the RSSO RADIUS server for this VDOM.",
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
