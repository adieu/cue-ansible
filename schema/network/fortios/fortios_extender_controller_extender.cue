package ansible

module: fortios_extender_controller_extender: {
	module:            "fortios_extender_controller_extender"
	short_description: "Extender controller configuration in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify extender_controller feature and extender category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		extender_controller_extender: {
			description: [
				"Extender controller configuration.",
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
				aaa_shared_secret: {
					description: [
						"AAA shared secret.",
					]
					type: "str"
				}
				access_point_name: {
					description: [
						"Access point name(APN).",
					]
					type: "str"
				}
				admin: {
					description: [
						"FortiExtender Administration (enable or disable).",
					]
					type: "str"
					choices: [
						"disable",
						"discovered",
						"enable",
					]
				}
				at_dial_script: {
					description: [
						"Initialization AT commands specific to the MODEM.",
					]
					type: "str"
				}
				billing_start_day: {
					description: [
						"Billing start day.",
					]
					type: "int"
				}
				cdma_aaa_spi: {
					description: [
						"CDMA AAA SPI.",
					]
					type: "str"
				}
				cdma_ha_spi: {
					description: [
						"CDMA HA SPI.",
					]
					type: "str"
				}
				cdma_nai: {
					description: [
						"NAI for CDMA MODEMS.",
					]
					type: "str"
				}
				conn_status: {
					description: [
						"Connection status.",
					]
					type: "int"
				}
				description: {
					description: [
						"Description.",
					]
					type: "str"
				}
				dial_mode: {
					description: [
						"Dial mode (dial-on-demand or always-connect).",
					]
					type: "str"
					choices: [
						"dial-on-demand",
						"always-connect",
					]
				}
				dial_status: {
					description: [
						"Dial status.",
					]
					type: "int"
				}
				ext_name: {
					description: [
						"FortiExtender name.",
					]
					type: "str"
				}
				ha_shared_secret: {
					description: [
						"HA shared secret.",
					]
					type: "str"
				}
				id: {
					description: [
						"FortiExtender serial number.",
					]
					required: true
					type:     "str"
				}
				ifname: {
					description: [
						"FortiExtender interface name.",
					]
					type: "str"
				}
				initiated_update: {
					description: [
						"Allow/disallow network initiated updates to the MODEM.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				mode: {
					description: [
						"FortiExtender mode.",
					]
					type: "str"
					choices: [
						"standalone",
						"redundant",
					]
				}
				modem_passwd: {
					description: [
						"MODEM password.",
					]
					type: "str"
				}
				modem_type: {
					description: [
						"MODEM type (CDMA, GSM/LTE or WIMAX).",
					]
					type: "str"
					choices: [
						"cdma",
						"gsm/lte",
						"wimax",
					]
				}
				multi_mode: {
					description: [
						"MODEM mode of operation(3G,LTE,etc).",
					]
					type: "str"
					choices: [
						"auto",
						"auto-3g",
						"force-lte",
						"force-3g",
						"force-2g",
					]
				}
				ppp_auth_protocol: {
					description: [
						"PPP authentication protocol (PAP,CHAP or auto).",
					]
					type: "str"
					choices: [
						"auto",
						"pap",
						"chap",
					]
				}
				ppp_echo_request: {
					description: [
						"Enable/disable PPP echo request.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ppp_password: {
					description: [
						"PPP password.",
					]
					type: "str"
				}
				ppp_username: {
					description: [
						"PPP username.",
					]
					type: "str"
				}
				primary_ha: {
					description: [
						"Primary HA.",
					]
					type: "str"
				}
				quota_limit_mb: {
					description: [
						"Monthly quota limit (MB).",
					]
					type: "int"
				}
				redial: {
					description: [
						"Number of redials allowed based on failed attempts.",
					]
					type: "str"
					choices: [
						"none",
						1,
						2,
						3,
						4,
						5,
						6,
						7,
						8,
						9,
						10,
					]
				}
				redundant_intf: {
					description: [
						"Redundant interface.",
					]
					type: "str"
				}
				roaming: {
					description: [
						"Enable/disable MODEM roaming.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				role: {
					description: [
						"FortiExtender work role(Primary, Secondary, None).",
					]
					type: "str"
					choices: [
						"none",
						"primary",
						"secondary",
					]
				}
				secondary_ha: {
					description: [
						"Secondary HA.",
					]
					type: "str"
				}
				sim_pin: {
					description: [
						"SIM PIN.",
					]
					type: "str"
				}
				vdom: {
					description: [
						"VDOM",
					]
					type: "int"
				}
				wimax_auth_protocol: {
					description: [
						"WiMax authentication protocol(TLS or TTLS).",
					]
					type: "str"
					choices: [
						"tls",
						"ttls",
					]
				}
				wimax_carrier: {
					description: [
						"WiMax carrier.",
					]
					type: "str"
				}
				wimax_realm: {
					description: [
						"WiMax realm.",
					]
					type: "str"
				}
			}
		}
	}
}
