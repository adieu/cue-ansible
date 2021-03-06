package ansible

module: fortios_log_fortiguard_setting: {
	module:            "fortios_log_fortiguard_setting"
	short_description: "Configure logging to FortiCloud in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify log_fortiguard feature and setting category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		log_fortiguard_setting: {
			description: [
				"Configure logging to FortiCloud.",
			]
			default: null
			type:    "dict"
			suboptions: {
				enc_algorithm: {
					description: [
						"Enable and set the SSL security level for for sending encrypted logs to FortiCloud.",
					]
					type: "str"
					choices: [
						"high-medium",
						"high",
						"low",
					]
				}
				source_ip: {
					description: [
						"Source IP address used to connect FortiCloud.",
					]
					type: "str"
				}
				ssl_min_proto_version: {
					description: [
						"Minimum supported protocol version for SSL/TLS connections .",
					]
					type: "str"
					choices: [
						"default",
						"SSLv3",
						"TLSv1",
						"TLSv1-1",
						"TLSv1-2",
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
