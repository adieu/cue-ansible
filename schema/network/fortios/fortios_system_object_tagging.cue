package ansible

module: fortios_system_object_tagging: {
	module:            "fortios_system_object_tagging"
	short_description: "Configure object tagging in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and object_tagging category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_object_tagging: {
			description: [
				"Configure object tagging.",
			]
			default: null
			type:    "dict"
			suboptions: {
				address: {
					description: [
						"Address.",
					]
					type: "str"
					choices: [
						"disable",
						"mandatory",
						"optional",
					]
				}
				category: {
					description: [
						"Tag Category.",
					]
					required: true
					type:     "str"
				}
				color: {
					description: [
						"Color of icon on the GUI.",
					]
					type: "int"
				}
				device: {
					description: [
						"Device.",
					]
					type: "str"
					choices: [
						"disable",
						"mandatory",
						"optional",
					]
				}
				interface: {
					description: [
						"Interface.",
					]
					type: "str"
					choices: [
						"disable",
						"mandatory",
						"optional",
					]
				}
				multiple: {
					description: [
						"Allow multiple tag selection.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				tags: {
					description: [
						"Tags.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Tag name.",
						]
						required: true
						type:     "str"
					}
				}
			}
		}
	}
}
