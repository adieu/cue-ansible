package ansible

module: fortios_user_device_access_list: {
	module:            "fortios_user_device_access_list"
	short_description: "Configure device access control lists in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify user feature and device_access_list category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		user_device_access_list: {
			description: [
				"Configure device access control lists.",
			]
			default: null
			type:    "dict"
			suboptions: {
				default_action: {
					description: [
						"Accept or deny unknown/unspecified devices.",
					]
					type: "str"
					choices: [
						"accept",
						"deny",
					]
				}
				device_list: {
					description: [
						"Device list.",
					]
					type: "list"
					suboptions: {
						action: {
							description: [
								"Allow or block device.",
							]
							type: "str"
							choices: [
								"accept",
								"deny",
							]
						}
						device: {
							description: [
								"Firewall device or device group. Source user.device.alias user.device-group.name user.device-category.name.",
							]
							type: "str"
						}
						id: {
							description: [
								"Entry ID.",
							]
							required: true
							type:     "int"
						}
					}
				}
				name: {
					description: [
						"Device access list name.",
					]
					required: true
					type:     "str"
				}
			}
		}
	}
}
