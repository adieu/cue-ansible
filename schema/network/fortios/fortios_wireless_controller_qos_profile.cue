package ansible

module: fortios_wireless_controller_qos_profile: {
	module:            "fortios_wireless_controller_qos_profile"
	short_description: "Configure WiFi quality of service (QoS) profiles in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wireless_controller feature and qos_profile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wireless_controller_qos_profile: {
			description: [
				"Configure WiFi quality of service (QoS) profiles.",
			]
			default: null
			type:    "dict"
			suboptions: {
				bandwidth_admission_control: {
					description: [
						"Enable/disable WMM bandwidth admission control.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				bandwidth_capacity: {
					description: [
						"Maximum bandwidth capacity allowed (1 - 600000 Kbps).",
					]
					type: "int"
				}
				burst: {
					description: [
						"Enable/disable client rate burst.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				call_admission_control: {
					description: [
						"Enable/disable WMM call admission control.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				call_capacity: {
					description: [
						"Maximum number of Voice over WLAN (VoWLAN) phones allowed (0 - 60).",
					]
					type: "int"
				}
				comment: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				downlink: {
					description: [
						"Maximum downlink bandwidth for Virtual Access Points (VAPs) (0 - 2097152 Kbps).",
					]
					type: "int"
				}
				downlink_sta: {
					description: [
						"Maximum downlink bandwidth for clients (0 - 2097152 Kbps).",
					]
					type: "int"
				}
				dscp_wmm_be: {
					description: [
						"DSCP mapping for best effort access .",
					]
					type: "list"
					suboptions: id: {
						description: [
							"DSCP WMM mapping numbers (0 - 63).",
						]
						required: true
						type:     "int"
					}
				}
				dscp_wmm_bk: {
					description: [
						"DSCP mapping for background access .",
					]
					type: "list"
					suboptions: id: {
						description: [
							"DSCP WMM mapping numbers (0 - 63).",
						]
						required: true
						type:     "int"
					}
				}
				dscp_wmm_mapping: {
					description: [
						"Enable/disable Differentiated Services Code Point (DSCP) mapping.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				dscp_wmm_vi: {
					description: [
						"DSCP mapping for video access .",
					]
					type: "list"
					suboptions: id: {
						description: [
							"DSCP WMM mapping numbers (0 - 63).",
						]
						required: true
						type:     "int"
					}
				}
				dscp_wmm_vo: {
					description: [
						"DSCP mapping for voice access .",
					]
					type: "list"
					suboptions: id: {
						description: [
							"DSCP WMM mapping numbers (0 - 63).",
						]
						required: true
						type:     "int"
					}
				}
				name: {
					description: [
						"WiFi QoS profile name.",
					]
					required: true
					type:     "str"
				}
				uplink: {
					description: [
						"Maximum uplink bandwidth for Virtual Access Points (VAPs) (0 - 2097152 Kbps).",
					]
					type: "int"
				}
				uplink_sta: {
					description: [
						"Maximum uplink bandwidth for clients (0 - 2097152 Kbps).",
					]
					type: "int"
				}
				wmm: {
					description: [
						"Enable/disable WiFi multi-media (WMM) control.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				wmm_uapsd: {
					description: [
						"Enable/disable WMM Unscheduled Automatic Power Save Delivery (U-APSD) power save mode.",
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
