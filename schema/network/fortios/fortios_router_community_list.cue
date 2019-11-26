package ansible

module: fortios_router_community_list: {
	module:            "fortios_router_community_list"
	short_description: "Configure community lists in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify router feature and community_list category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		router_community_list: {
			description: [
				"Configure community lists.",
			]
			default: null
			type:    "dict"
			suboptions: {
				name: {
					description: [
						"Community list name.",
					]
					required: true
					type:     "str"
				}
				rule: {
					description: [
						"Community list rule.",
					]
					type: "list"
					suboptions: {
						action: {
							description: [
								"Permit or deny route-based operations, based on the route's COMMUNITY attribute.",
							]
							type: "str"
							choices: [
								"deny",
								"permit",
							]
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						match: {
							description: [
								"Community specifications for matching a reserved community.",
							]
							type: "str"
						}
						regexp: {
							description: [
								"Ordered list of COMMUNITY attributes as a regular expression.",
							]
							type: "str"
						}
					}
				}
				type: {
					description: [
						"Community list type (standard or expanded).",
					]
					type: "str"
					choices: [
						"standard",
						"expanded",
					]
				}
			}
		}
	}
}
