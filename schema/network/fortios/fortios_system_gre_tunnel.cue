package ansible

module: fortios_system_gre_tunnel: {
	module:            "fortios_system_gre_tunnel"
	short_description: "Configure GRE tunnel in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and gre_tunnel category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_gre_tunnel: {
			description: [
				"Configure GRE tunnel.",
			]
			default: null
			type:    "dict"
			suboptions: {
				checksum_reception: {
					description: [
						"Enable/disable validating checksums in received GRE packets.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				checksum_transmission: {
					description: [
						"Enable/disable including checksums in transmitted GRE packets.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				dscp_copying: {
					description: [
						"Enable/disable DSCP copying.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				interface: {
					description: [
						"Interface name. Source system.interface.name.",
					]
					type: "str"
				}
				ip_version: {
					description: [
						"IP version to use for VPN interface.",
					]
					type: "str"
					choices: [
						4,
						6,
					]
				}
				keepalive_failtimes: {
					description: [
						"Number of consecutive unreturned keepalive messages before a GRE connection is considered down (1 - 255).",
					]
					type: "int"
				}
				keepalive_interval: {
					description: [
						"Keepalive message interval (0 - 32767, 0 = disabled).",
					]
					type: "int"
				}
				key_inbound: {
					description: [
						"Require received GRE packets contain this key (0 - 4294967295).",
					]
					type: "int"
				}
				key_outbound: {
					description: [
						"Include this key in transmitted GRE packets (0 - 4294967295).",
					]
					type: "int"
				}
				local_gw: {
					description: [
						"IP address of the local gateway.",
					]
					type: "str"
				}
				local_gw6: {
					description: [
						"IPv6 address of the local gateway.",
					]
					type: "str"
				}
				name: {
					description: [
						"Tunnel name.",
					]
					required: true
					type:     "str"
				}
				remote_gw: {
					description: [
						"IP address of the remote gateway.",
					]
					type: "str"
				}
				remote_gw6: {
					description: [
						"IPv6 address of the remote gateway.",
					]
					type: "str"
				}
				sequence_number_reception: {
					description: [
						"Enable/disable validating sequence numbers in received GRE packets.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				sequence_number_transmission: {
					description: [
						"Enable/disable including of sequence numbers in transmitted GRE packets.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
			}
		}
	}
}
