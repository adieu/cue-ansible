package ansible

module: fortios_system_switch_interface: {
	module:            "fortios_system_switch_interface"
	short_description: "Configure software switch interfaces by grouping physical and WiFi interfaces in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and switch_interface category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_switch_interface: {
			description: [
				"Configure software switch interfaces by grouping physical and WiFi interfaces.",
			]
			default: null
			type:    "dict"
			suboptions: {
				intra_switch_policy: {
					description: [
						"Allow any traffic between switch interfaces or require firewall policies to allow traffic between switch interfaces.",
					]
					type: "str"
					choices: [
						"implicit",
						"explicit",
					]
				}
				member: {
					description: [
						"Names of the interfaces that belong to the virtual switch.",
					]
					type: "list"
					suboptions: interface_name: {
						description: [
							"Physical interface name. Source system.interface.name.",
						]
						type: "str"
					}
				}
				name: {
					description: [
						"Interface name (name cannot be in use by any other interfaces, VLANs, or inter-VDOM links).",
					]
					required: true
					type:     "str"
				}
				span: {
					description: [
						"Enable/disable port spanning. Port spanning echoes traffic received by the software switch to the span destination port.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				span_dest_port: {
					description: [
						"SPAN destination port name. All traffic on the SPAN source ports is echoed to the SPAN destination port. Source system.interface.name.",
					]
					type: "str"
				}
				span_direction: {
					description: [
						"The direction in which the SPAN port operates, either: rx, tx, or both.",
					]
					type: "str"
					choices: [
						"rx",
						"tx",
						"both",
					]
				}
				span_source_port: {
					description: [
						"Physical interface name. Port spanning echoes all traffic on the SPAN source ports to the SPAN destination port.",
					]
					type: "list"
					suboptions: interface_name: {
						description: [
							"Physical interface name. Source system.interface.name.",
						]
						type: "str"
					}
				}
				type: {
					description: [
						"Type of switch based on functionality: switch for normal functionality, or hub to duplicate packets to all port members.",
					]
					type: "str"
					choices: [
						"switch",
						"hub",
					]
				}
				vdom: {
					description: [
						"VDOM that the software switch belongs to. Source system.vdom.name.",
					]
					type: "str"
				}
			}
		}
	}
}
