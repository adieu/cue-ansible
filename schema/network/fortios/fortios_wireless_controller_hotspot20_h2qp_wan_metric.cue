package ansible

module: fortios_wireless_controller_hotspot20_h2qp_wan_metric: {
	module:            "fortios_wireless_controller_hotspot20_h2qp_wan_metric"
	short_description: "Configure WAN metrics in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wireless_controller_hotspot20 feature and h2qp_wan_metric category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wireless_controller_hotspot20_h2qp_wan_metric: {
			description: [
				"Configure WAN metrics.",
			]
			default: null
			type:    "dict"
			suboptions: {
				downlink_load: {
					description: [
						"Downlink load.",
					]
					type: "int"
				}
				downlink_speed: {
					description: [
						"Downlink speed (in kilobits/s).",
					]
					type: "int"
				}
				link_at_capacity: {
					description: [
						"Link at capacity.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				link_status: {
					description: [
						"Link status.",
					]
					type: "str"
					choices: [
						"up",
						"down",
						"in-test",
					]
				}
				load_measurement_duration: {
					description: [
						"Load measurement duration (in tenths of a second).",
					]
					type: "int"
				}
				name: {
					description: [
						"WAN metric name.",
					]
					required: true
					type:     "str"
				}
				symmetric_wan_link: {
					description: [
						"WAN link symmetry.",
					]
					type: "str"
					choices: [
						"symmetric",
						"asymmetric",
					]
				}
				uplink_load: {
					description: [
						"Uplink load.",
					]
					type: "int"
				}
				uplink_speed: {
					description: [
						"Uplink speed (in kilobits/s).",
					]
					type: "int"
				}
			}
		}
	}
}
