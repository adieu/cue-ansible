package ansible

module: fortios_log_setting: {
	module:            "fortios_log_setting"
	short_description: "Configure general log settings in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify log feature and setting category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		log_setting: {
			description: [
				"Configure general log settings.",
			]
			default: null
			type:    "dict"
			suboptions: {
				brief_traffic_format: {
					description: [
						"Enable/disable brief format traffic logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				custom_log_fields: {
					description: [
						"Custom fields to append to all log messages.",
					]
					type: "list"
					suboptions: field_id: {
						description: [
							"Custom log field. Source log.custom-field.id.",
						]
						type: "str"
					}
				}
				daemon_log: {
					description: [
						"Enable/disable daemon logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				expolicy_implicit_log: {
					description: [
						"Enable/disable explicit proxy firewall implicit policy logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				fwpolicy_implicit_log: {
					description: [
						"Enable/disable implicit firewall policy logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				fwpolicy6_implicit_log: {
					description: [
						"Enable/disable implicit firewall policy6 logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				local_in_allow: {
					description: [
						"Enable/disable local-in-allow logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				local_in_deny_broadcast: {
					description: [
						"Enable/disable local-in-deny-broadcast logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				local_in_deny_unicast: {
					description: [
						"Enable/disable local-in-deny-unicast logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				local_out: {
					description: [
						"Enable/disable local-out logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				log_invalid_packet: {
					description: [
						"Enable/disable invalid packet traffic logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				log_policy_comment: {
					description: [
						"Enable/disable inserting policy comments into traffic logs.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				log_policy_name: {
					description: [
						"Enable/disable inserting policy name into traffic logs.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				log_user_in_upper: {
					description: [
						"Enable/disable logs with user-in-upper.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				neighbor_event: {
					description: [
						"Enable/disable neighbor event logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				resolve_ip: {
					description: [
						"Enable/disable adding resolved domain names to traffic logs if possible.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				resolve_port: {
					description: [
						"Enable/disable adding resolved service names to traffic logs.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				user_anonymize: {
					description: [
						"Enable/disable anonymizing user names in log messages.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
			}
		}
	}
}
