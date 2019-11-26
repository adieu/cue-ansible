package ansible

module: fortios_switch_controller_lldp_settings: {
	module:            "fortios_switch_controller_lldp_settings"
	short_description: "Configure FortiSwitch LLDP settings in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify switch_controller feature and lldp_settings category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		switch_controller_lldp_settings: {
			description: [
				"Configure FortiSwitch LLDP settings.",
			]
			default: null
			type:    "dict"
			suboptions: {
				fast_start_interval: {
					description: [
						"Frequency of LLDP PDU transmission from FortiSwitch for the first 4 packets when the link is up (2 - 5 sec).",
					]
					type: "int"
				}
				management_interface: {
					description: [
						"Primary management interface to be advertised in LLDP and CDP PDUs.",
					]
					type: "str"
					choices: [
						"internal",
						"mgmt",
					]
				}
				status: {
					description: [
						"Enable/disable LLDP global settings.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				tx_hold: {
					description: [
						"Number of tx-intervals before local LLDP data expires (1 - 16). Packet TTL is tx-hold * tx-interval.",
					]
					type: "int"
				}
				tx_interval: {
					description: [
						"Frequency of LLDP PDU transmission from FortiSwitch (5 - 4095 sec). Packet TTL is tx-hold * tx-interval.",
					]
					type: "int"
				}
			}
		}
	}
}
