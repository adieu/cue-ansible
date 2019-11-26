package ansible

module: fortios_switch_controller_stp_settings: {
	module:            "fortios_switch_controller_stp_settings"
	short_description: "Configure FortiSwitch spanning tree protocol (STP) in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify switch_controller feature and stp_settings category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		switch_controller_stp_settings: {
			description: [
				"Configure FortiSwitch spanning tree protocol (STP).",
			]
			default: null
			type:    "dict"
			suboptions: {
				forward_time: {
					description: [
						"Period of time a port is in listening and learning state (4 - 30 sec).",
					]
					type: "int"
				}
				hello_time: {
					description: [
						"Period of time between successive STP frame Bridge Protocol Data Units (BPDUs) sent on a port (1 - 10 sec).",
					]
					type: "int"
				}
				max_age: {
					description: [
						"Maximum time before a bridge port saves its configuration BPDU information (6 - 40 sec).",
					]
					type: "int"
				}
				max_hops: {
					description: [
						"Maximum number of hops between the root bridge and the furthest bridge (1- 40).",
					]
					type: "int"
				}
				name: {
					description: [
						"Name of global STP settings configuration.",
					]
					type: "str"
				}
				pending_timer: {
					description: [
						"Pending time (1 - 15 sec).",
					]
					type: "int"
				}
				revision: {
					description: [
						"STP revision number (0 - 65535).",
					]
					type: "int"
				}
				status: {
					description: [
						"Enable/disable STP.",
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
