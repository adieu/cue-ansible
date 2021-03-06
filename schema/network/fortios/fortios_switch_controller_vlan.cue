package ansible

module: fortios_switch_controller_vlan: {
	module:            "fortios_switch_controller_vlan"
	short_description: "Configure VLANs for switch controller in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify switch_controller feature and vlan category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		switch_controller_vlan: {
			description: [
				"Configure VLANs for switch controller.",
			]
			default: null
			type:    "dict"
			suboptions: {
				auth: {
					description: [
						"Authentication.",
					]
					type: "str"
					choices: [
						"radius",
						"usergroup",
					]
				}
				color: {
					description: [
						"Color of icon on the GUI.",
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
						"Switch VLAN name.",
					]
					required: true
					type:     "str"
				}
				portal_message_override_group: {
					description: [
						"Specify captive portal replacement message override group.",
					]
					type: "str"
				}
				portal_message_overrides: {
					description: [
						"Individual message overrides.",
					]
					type: "dict"
					suboptions: {
						auth_disclaimer_page: {
							description: [
								"Override auth-disclaimer-page message with message from portal-message-overrides group.",
							]
							type: "str"
						}
						auth_login_failed_page: {
							description: [
								"Override auth-login-failed-page message with message from portal-message-overrides group.",
							]
							type: "str"
						}
						auth_login_page: {
							description: [
								"Override auth-login-page message with message from portal-message-overrides group.",
							]
							type: "str"
						}
						auth_reject_page: {
							description: [
								"Override auth-reject-page message with message from portal-message-overrides group.",
							]
							type: "str"
						}
					}
				}
				radius_server: {
					description: [
						"Authentication radius server. Source user.radius.name.",
					]
					type: "str"
				}
				security: {
					description: [
						"Security.",
					]
					type: "str"
					choices: [
						"open",
						"captive-portal",
						"8021x",
					]
				}
				selected_usergroups: {
					description: [
						"Selected user group.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"User group name. Source user.group.name.",
						]
						required: true
						type:     "str"
					}
				}
				usergroup: {
					description: [
						"Authentication usergroup. Source user.group.name.",
					]
					type: "str"
				}
				vdom: {
					description: [
						"Virtual domain,",
					]
					type: "str"
				}
				vlanid: {
					description: [
						"VLAN ID.",
					]
					type: "int"
				}
			}
		}
	}
}
