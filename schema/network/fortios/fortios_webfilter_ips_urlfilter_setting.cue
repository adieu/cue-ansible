package ansible

module: fortios_webfilter_ips_urlfilter_setting: {
	module:            "fortios_webfilter_ips_urlfilter_setting"
	short_description: "Configure IPS URL filter settings in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify webfilter feature and ips_urlfilter_setting category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		webfilter_ips_urlfilter_setting: {
			description: [
				"Configure IPS URL filter settings.",
			]
			default: null
			type:    "dict"
			suboptions: {
				device: {
					description: [
						"Interface for this route. Source system.interface.name.",
					]
					type: "str"
				}
				distance: {
					description: [
						"Administrative distance (1 - 255) for this route.",
					]
					type: "int"
				}
				gateway: {
					description: [
						"Gateway IP address for this route.",
					]
					type: "str"
				}
				geo_filter: {
					description: [
						"Filter based on geographical location. Route will NOT be installed if the resolved IP address belongs to the country in the filter.",
					]
					type: "str"
				}
			}
		}
	}
}
