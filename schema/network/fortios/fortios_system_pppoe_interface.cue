package ansible

module: fortios_system_pppoe_interface: {
	module:            "fortios_system_pppoe_interface"
	short_description: "Configure the PPPoE interfaces in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and pppoe_interface category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_pppoe_interface: {
			description: [
				"Configure the PPPoE interfaces.",
			]
			default: null
			type:    "dict"
			suboptions: {
				ac_name: {
					description: [
						"PPPoE AC name.",
					]
					type: "str"
				}
				auth_type: {
					description: [
						"PPP authentication type to use.",
					]
					type: "str"
					choices: [
						"auto",
						"pap",
						"chap",
						"mschapv1",
						"mschapv2",
					]
				}
				device: {
					description: [
						"Name for the physical interface. Source system.interface.name.",
					]
					type: "str"
				}
				dial_on_demand: {
					description: [
						"Enable/disable dial on demand to dial the PPPoE interface when packets are routed to the PPPoE interface.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				disc_retry_timeout: {
					description: [
						"PPPoE discovery init timeout value in (0-4294967295 sec).",
					]
					type: "int"
				}
				idle_timeout: {
					description: [
						"PPPoE auto disconnect after idle timeout (0-4294967295 sec).",
					]
					type: "int"
				}
				ipunnumbered: {
					description: [
						"PPPoE unnumbered IP.",
					]
					type: "str"
				}
				ipv6: {
					description: [
						"Enable/disable IPv6 Control Protocol (IPv6CP).",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				lcp_echo_interval: {
					description: [
						"PPPoE LCP echo interval in (0-4294967295 sec).",
					]
					type: "int"
				}
				lcp_max_echo_fails: {
					description: [
						"Maximum missed LCP echo messages before disconnect (0-4294967295).",
					]
					type: "int"
				}
				name: {
					description: [
						"Name of the PPPoE interface.",
					]
					required: true
					type:     "str"
				}
				padt_retry_timeout: {
					description: [
						"PPPoE terminate timeout value in (0-4294967295 sec).",
					]
					type: "int"
				}
				password: {
					description: [
						"Enter the password.",
					]
					type: "str"
				}
				pppoe_unnumbered_negotiate: {
					description: [
						"Enable/disable PPPoE unnumbered negotiation.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				service_name: {
					description: [
						"PPPoE service name.",
					]
					type: "str"
				}
				username: {
					description: [
						"User name.",
					]
					type: "str"
				}
			}
		}
	}
}
