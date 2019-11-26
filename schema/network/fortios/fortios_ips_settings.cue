package ansible

module: fortios_ips_settings: {
	module:            "fortios_ips_settings"
	short_description: "Configure IPS VDOM parameter in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify ips feature and settings category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		ips_settings: {
			description: [
				"Configure IPS VDOM parameter.",
			]
			default: null
			type:    "dict"
			suboptions: {
				ips_packet_quota: {
					description: [
						"Maximum amount of disk space in MB for logged packets when logging to disk. Range depends on disk size.",
					]
					type: "int"
				}
				packet_log_history: {
					description: [
						"Number of packets to capture before and including the one in which the IPS signature is detected (1 - 255).",
					]
					type: "int"
				}
				packet_log_memory: {
					description: [
						"Maximum memory can be used by packet log (64 - 8192 kB).",
					]
					type: "int"
				}
				packet_log_post_attack: {
					description: [
						"Number of packets to log after the IPS signature is detected (0 - 255).",
					]
					type: "int"
				}
			}
		}
	}
}
