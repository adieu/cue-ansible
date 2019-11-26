package ansible

module: fortios_switch_controller_lldp_profile: {
	module:            "fortios_switch_controller_lldp_profile"
	short_description: "Configure FortiSwitch LLDP profiles in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify switch_controller feature and lldp_profile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		switch_controller_lldp_profile: {
			description: [
				"Configure FortiSwitch LLDP profiles.",
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
				"802.1_tlvs": {
					description: [
						"Transmitted IEEE 802.1 TLVs.",
					]
					type: "str"
					choices: [
						"port-vlan-id",
					]
				}
				"802.3_tlvs": {
					description: [
						"Transmitted IEEE 802.3 TLVs.",
					]
					type: "str"
					choices: [
						"max-frame-size",
					]
				}
				auto_isl: {
					description: [
						"Enable/disable auto inter-switch LAG.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				auto_isl_hello_timer: {
					description: [
						"Auto inter-switch LAG hello timer duration (1 - 30 sec).",
					]
					type: "int"
				}
				auto_isl_port_group: {
					description: [
						"Auto inter-switch LAG port group ID (0 - 9).",
					]
					type: "int"
				}
				auto_isl_receive_timeout: {
					description: [
						"Auto inter-switch LAG timeout if no response is received (3 - 90 sec).",
					]
					type: "int"
				}
				custom_tlvs: {
					description: [
						"Configuration method to edit custom TLV entries.",
					]
					type: "list"
					suboptions: {
						information_string: {
							description: [
								"Organizationally defined information string (0 - 507 hexadecimal bytes).",
							]
							type: "str"
						}
						name: {
							description: [
								"TLV name (not sent).",
							]
							required: true
							type:     "str"
						}
						oui: {
							description: [
								"Organizationally unique identifier (OUI), a 3-byte hexadecimal number, for this TLV.",
							]
							type: "str"
						}
						subtype: {
							description: [
								"Organizationally defined subtype (0 - 255).",
							]
							type: "int"
						}
					}
				}
				med_network_policy: {
					description: [
						"Configuration method to edit Media Endpoint Discovery (MED) network policy type-length-value (TLV) categories.",
					]
					type: "list"
					suboptions: {
						dscp: {
							description: [
								"Advertised Differentiated Services Code Point (DSCP) value, a packet header value indicating the level of service requested for traffic, such as high priority or best effort delivery.",
							]

							type: "int"
						}
						name: {
							description: [
								"Policy type name.",
							]
							required: true
							type:     "str"
						}
						priority: {
							description: [
								"Advertised Layer 2 priority (0 - 7; from lowest to highest priority).",
							]
							type: "int"
						}
						status: {
							description: [
								"Enable or disable this TLV.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						vlan: {
							description: [
								"ID of VLAN to advertise, if configured on port (0 - 4094, 0 = priority tag).",
							]
							type: "int"
						}
					}
				}
				med_tlvs: {
					description: [
						"Transmitted LLDP-MED TLVs (type-length-value descriptions): inventory management TLV and/or network policy TLV.",
					]
					type: "str"
					choices: [
						"inventory-management",
						"network-policy",
					]
				}
				name: {
					description: [
						"Profile name.",
					]
					required: true
					type:     "str"
				}
			}
		}
	}
}
