package ansible

module: fortios_system_external_resource: {
	module:            "fortios_system_external_resource"
	short_description: "Configure external resource in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and external_resource category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_external_resource: {
			description: [
				"Configure external resource.",
			]
			default: null
			type:    "dict"
			suboptions: {
				category: {
					description: [
						"User resource category.",
					]
					type: "int"
				}
				comments: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				name: {
					description: [
						"External resource name.",
					]
					required: true
					type:     "str"
				}
				refresh_rate: {
					description: [
						"Time interval to refresh external resource (1 - 43200 min).",
					]
					type: "int"
				}
				resource: {
					description: [
						"URI of external resource.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable user resource.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				type: {
					description: [
						"User resource type.",
					]
					type: "str"
					choices: [
						"category",
						"address",
						"domain",
					]
				}
			}
		}
	}
}
