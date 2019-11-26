package ansible

module: fortios_switch_controller_storm_control: {
	module:            "fortios_switch_controller_storm_control"
	short_description: "Configure FortiSwitch storm control in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify switch_controller feature and storm_control category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		switch_controller_storm_control: {
			description: [
				"Configure FortiSwitch storm control.",
			]
			default: null
			type:    "dict"
			suboptions: {
				broadcast: {
					description: [
						"Enable/disable storm control to drop broadcast traffic.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				rate: {
					description: [
						"Rate in packets per second at which storm traffic is controlled (1 - 10000000). Storm control drops excess traffic data rates beyond this threshold.",
					]

					type: "int"
				}
				unknown_multicast: {
					description: [
						"Enable/disable storm control to drop unknown multicast traffic.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				unknown_unicast: {
					description: [
						"Enable/disable storm control to drop unknown unicast traffic.",
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
