package ansible

module: fortios_log_fortiguard_override_setting: {
	module:            "fortios_log_fortiguard_override_setting"
	short_description: "Override global FortiCloud logging settings for this VDOM in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify log_fortiguard feature and override_setting category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		log_fortiguard_override_setting: {
			description: [
				"Override global FortiCloud logging settings for this VDOM.",
			]
			default: null
			type:    "dict"
			suboptions: {
				override: {
					description: [
						"Overriding FortiCloud settings for this VDOM or use global settings.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				status: {
					description: [
						"Enable/disable logging to FortiCloud.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				upload_day: {
					description: [
						"Day of week to roll logs.",
					]
					type: "str"
				}
				upload_interval: {
					description: [
						"Frequency of uploading log files to FortiCloud.",
					]
					type: "str"
					choices: [
						"daily",
						"weekly",
						"monthly",
					]
				}
				upload_option: {
					description: [
						"Configure how log messages are sent to FortiCloud.",
					]
					type: "str"
					choices: [
						"store-and-upload",
						"realtime",
						"1-minute",
						"5-minute",
					]
				}
				upload_time: {
					description: [
						"Time of day to roll logs (hh:mm).",
					]
					type: "str"
				}
			}
		}
	}
}
