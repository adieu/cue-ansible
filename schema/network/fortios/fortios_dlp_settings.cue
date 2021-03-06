package ansible

module: fortios_dlp_settings: {
	module:            "fortios_dlp_settings"
	short_description: "Designate logical storage for DLP fingerprint database in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify dlp feature and settings category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		dlp_settings: {
			description: [
				"Designate logical storage for DLP fingerprint database.",
			]
			default: null
			type:    "dict"
			suboptions: {
				cache_mem_percent: {
					description: [
						"Maximum percentage of available memory allocated to caching (1 - 15%).",
					]
					type: "int"
				}
				chunk_size: {
					description: [
						"Maximum fingerprint chunk size.  **Changing will flush the entire database**.",
					]
					type: "int"
				}
				db_mode: {
					description: [
						"Behaviour when the maximum size is reached.",
					]
					type: "str"
					choices: [
						"stop-adding",
						"remove-modified-then-oldest",
						"remove-oldest",
					]
				}
				size: {
					description: [
						"Maximum total size of files within the storage (MB).",
					]
					type: "int"
				}
				storage_device: {
					description: [
						"Storage device name. Source system.storage.name.",
					]
					type: "str"
				}
			}
		}
	}
}
