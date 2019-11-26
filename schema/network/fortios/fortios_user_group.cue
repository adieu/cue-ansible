package ansible

module: fortios_user_group: {
	module:            "fortios_user_group"
	short_description: "Configure user groups in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify user feature and group category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		user_group: {
			description: [
				"Configure user groups.",
			]
			default: null
			type:    "dict"
			suboptions: {
				auth_concurrent_override: {
					description: [
						"Enable/disable overriding the global number of concurrent authentication sessions for this user group.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				auth_concurrent_value: {
					description: [
						"Maximum number of concurrent authenticated connections per user (0 - 100).",
					]
					type: "int"
				}
				authtimeout: {
					description: [
						"Authentication timeout in minutes for this user group. 0 to use the global user setting auth-timeout.",
					]
					type: "int"
				}
				company: {
					description: [
						"Set the action for the company guest user field.",
					]
					type: "str"
					choices: [
						"optional",
						"mandatory",
						"disabled",
					]
				}
				email: {
					description: [
						"Enable/disable the guest user email address field.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				expire: {
					description: [
						"Time in seconds before guest user accounts expire. (1 - 31536000 sec)",
					]
					type: "int"
				}
				expire_type: {
					description: [
						"Determine when the expiration countdown begins.",
					]
					type: "str"
					choices: [
						"immediately",
						"first-successful-login",
					]
				}
				group_type: {
					description: [
						"Set the group to be for firewall authentication, FSSO, RSSO, or guest users.",
					]
					type: "str"
					choices: [
						"firewall",
						"fsso-service",
						"rsso",
						"guest",
					]
				}
				guest: {
					description: [
						"Guest User.",
					]
					type: "list"
					suboptions: {
						comment: {
							description: [
								"Comment.",
							]
							type: "str"
						}
						company: {
							description: [
								"Set the action for the company guest user field.",
							]
							type: "str"
						}
						email: {
							description: [
								"Email.",
							]
							type: "str"
						}
						expiration: {
							description: [
								"Expire time.",
							]
							type: "str"
						}
						mobile_phone: {
							description: [
								"Mobile phone.",
							]
							type: "str"
						}
						name: {
							description: [
								"Guest name.",
							]
							type: "str"
						}
						password: {
							description: [
								"Guest password.",
							]
							type: "str"
						}
						sponsor: {
							description: [
								"Set the action for the sponsor guest user field.",
							]
							type: "str"
						}
						user_id: {
							description: [
								"Guest ID.",
							]
							type: "str"
						}
					}
				}
				http_digest_realm: {
					description: [
						"Realm attribute for MD5-digest authentication.",
					]
					type: "str"
				}
				id: {
					description: [
						"Group ID.",
					]
					type: "int"
				}
				match: {
					description: [
						"Group matches.",
					]
					type: "list"
					suboptions: {
						group_name: {
							description: [
								"Name of matching group on remote authentication server.",
							]
							type: "str"
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						server_name: {
							description: [
								"Name of remote auth server. Source user.radius.name user.ldap.name user.tacacs+.name.",
							]
							type: "str"
						}
					}
				}
				max_accounts: {
					description: [
						"Maximum number of guest accounts that can be created for this group (0 means unlimited).",
					]
					type: "int"
				}
				member: {
					description: [
						"Names of users, peers, LDAP servers, or RADIUS servers to add to the user group.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Group member name. Source user.peer.name user.local.name user.radius.name user.tacacs+.name user.ldap.name user.adgrp.name user .pop3.name.",
						]

						required: true
						type:     "str"
					}
				}
				mobile_phone: {
					description: [
						"Enable/disable the guest user mobile phone number field.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				multiple_guest_add: {
					description: [
						"Enable/disable addition of multiple guests.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				name: {
					description: [
						"Group name.",
					]
					required: true
					type:     "str"
				}
				password: {
					description: [
						"Guest user password type.",
					]
					type: "str"
					choices: [
						"auto-generate",
						"specify",
						"disable",
					]
				}
				sms_custom_server: {
					description: [
						"SMS server. Source system.sms-server.name.",
					]
					type: "str"
				}
				sms_server: {
					description: [
						"Send SMS through FortiGuard or other external server.",
					]
					type: "str"
					choices: [
						"fortiguard",
						"custom",
					]
				}
				sponsor: {
					description: [
						"Set the action for the sponsor guest user field.",
					]
					type: "str"
					choices: [
						"optional",
						"mandatory",
						"disabled",
					]
				}
				sso_attribute_value: {
					description: [
						"Name of the RADIUS user group that this local user group represents.",
					]
					type: "str"
				}
				user_id: {
					description: [
						"Guest user ID type.",
					]
					type: "str"
					choices: [
						"email",
						"auto-generate",
						"specify",
					]
				}
				user_name: {
					description: [
						"Enable/disable the guest user name entry.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
			}
		}
	}
}
