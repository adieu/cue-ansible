package ansible

module: fortios_system_netflow: {
	module:            "fortios_system_netflow"
	short_description: "Configure NetFlow in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and netflow category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_netflow: {
			description: [
				"Configure NetFlow.",
			]
			default: null
			type:    "dict"
			suboptions: {
				active_flow_timeout: {
					description: [
						"Timeout to report active flows (1 - 60 min).",
					]
					type: "int"
				}
				collector_ip: {
					description: [
						"Collector IP.",
					]
					type: "str"
				}
				collector_port: {
					description: [
						"NetFlow collector port number.",
					]
					type: "int"
				}
				inactive_flow_timeout: {
					description: [
						"Timeout for periodic report of finished flows (10 - 600 sec).",
					]
					type: "int"
				}
				source_ip: {
					description: [
						"Source IP address for communication with the NetFlow agent.",
					]
					type: "str"
				}
				template_tx_counter: {
					description: [
						"Counter of flowset records before resending a template flowset record.",
					]
					type: "int"
				}
				template_tx_timeout: {
					description: [
						"Timeout for periodic template flowset transmission (1 - 1440 min).",
					]
					type: "int"
				}
			}
		}
	}
}
