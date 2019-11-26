package ansible

module: fortios_firewall_shaper_per_ip_shaper: {
	module:            "fortios_firewall_shaper_per_ip_shaper"
	short_description: "Configure per-IP traffic shaper in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall_shaper feature and per_ip_shaper category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_shaper_per_ip_shaper: {
			description: [
				"Configure per-IP traffic shaper.",
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
				bandwidth_unit: {
					description: [
						"Unit of measurement for maximum bandwidth for this shaper (Kbps, Mbps or Gbps).",
					]
					type: "str"
					choices: [
						"kbps",
						"mbps",
						"gbps",
					]
				}
				diffserv_forward: {
					description: [
						"Enable/disable changing the Forward (original) DiffServ setting applied to traffic accepted by this shaper.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				diffserv_reverse: {
					description: [
						"Enable/disable changing the Reverse (reply) DiffServ setting applied to traffic accepted by this shaper.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				diffservcode_forward: {
					description: [
						"Forward (original) DiffServ setting to be applied to traffic accepted by this shaper.",
					]
					type: "str"
				}
				diffservcode_rev: {
					description: [
						"Reverse (reply) DiffServ setting to be applied to traffic accepted by this shaper.",
					]
					type: "str"
				}
				max_bandwidth: {
					description: [
						"Upper bandwidth limit enforced by this shaper (0 - 16776000). 0 means no limit. Units depend on the bandwidth-unit setting.",
					]
					type: "int"
				}
				max_concurrent_session: {
					description: [
						"Maximum number of concurrent sessions allowed by this shaper (0 - 2097000). 0 means no limit.",
					]
					type: "int"
				}
				name: {
					description: [
						"Traffic shaper name.",
					]
					required: true
					type:     "str"
				}
			}
		}
	}
}
