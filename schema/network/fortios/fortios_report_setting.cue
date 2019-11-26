package ansible

module: fortios_report_setting: {
	module:            "fortios_report_setting"
	short_description: "Report setting configuration in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify report feature and setting category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		report_setting: {
			description: [
				"Report setting configuration.",
			]
			default: null
			type:    "dict"
			suboptions: {
				fortiview: {
					description: [
						"Enable/disable historical FortiView.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				pdf_report: {
					description: [
						"Enable/disable PDF report.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				report_source: {
					description: [
						"Report log source.",
					]
					type: "str"
					choices: [
						"forward-traffic",
						"sniffer-traffic",
						"local-deny-traffic",
					]
				}
				top_n: {
					description: [
						"Number of items to populate (100 - 4000).",
					]
					type: "int"
				}
				web_browsing_threshold: {
					description: [
						"Web browsing time calculation threshold (3 - 15 min).",
					]
					type: "int"
				}
			}
		}
	}
}
