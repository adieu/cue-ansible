package ansible

module: zabbix_user: {
	module:            "zabbix_user"
	short_description: "Create/update/delete Zabbix users"
	author: [
		"sky-joker (@sky-joker)",
	]
	version_added: "2.10"
	description: [
		"This module allows you to create, modify and delete Zabbix users.",
	]
	requirements: [
		"python >= 2.6",
		"zabbix-api",
	]
	options: {
		alias: {
			description: [
				"Name of the user alias in Zabbix.",
				"alias is the unique identifier used and cannot be updated using this module.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"Name of the user.",
			]
			default: ""
			type:    "str"
		}
		surname: {
			description: [
				"Surname of the user.",
			]
			default: ""
			type:    "str"
		}
		usrgrps: {
			description: [
				"User groups to add the user to.",
			]
			type: "list"
		}
		passwd: {
			description: [
				"User's password.",
			]
			required: true
			type:     "str"
		}
		override_passwd: {
			description: [
				"Override password.",
			]
			default: false
			type:    "bool"
		}
		lang: {
			description: [
				"Language code of the user's language.",
			]
			default: "en_GB"
			choices: [
				"en_GB",
				"en_US",
				"zh_CN",
				"cs_CZ",
				"fr_FR",
				"he_IL",
				"it_IT",
				"ko_KR",
				"ja_JP",
				"nb_NO",
				"pl_PL",
				"pt_BR",
				"pt_PT",
				"ru_RU",
				"sk_SK",
				"tr_TR",
				"uk_UA",
			]
			type: "str"
		}
		theme: {
			description: [
				"User's theme.",
			]
			default: "default"
			choices: [
				"default",
				"blue-theme",
				"dark-theme",
			]
			type: "str"
		}
		autologin: {
			description: [
				"Whether to enable auto-login.",
				"If enable autologin, cannot enable autologout.",
			]
			default: false
			type:    "bool"
		}
		autologout: {
			description: [
				"User session life time in seconds. If set to 0, the session will never expire.",
				"If enable autologout, cannot enable autologin.",
			]
			default: "0"
			type:    "str"
		}
		refresh: {
			description: [
				"Automatic refresh period in seconds.",
			]
			default: "30"
			type:    "str"
		}
		rows_per_page: {
			description: [
				"Amount of object rows to show per page.",
			]
			default: "50"
			type:    "str"
		}
		after_login_url: {
			description: [
				"URL of the page to redirect the user to after logging in.",
			]
			default: ""
			type:    "str"
		}
		user_medias: {
			description: [
				"Set the user's media.",
			]
			default: []
			suboptions: {
				mediatype: {
					description: [
						"Media type name to set.",
					]
					default: "Email"
					type:    "str"
				}
				sendto: {
					description: [
						"Address, user name or other identifier of the recipient.",
					]
					required: true
					type:     "str"
				}
				period: {
					description: [
						"Time when the notifications can be sent as a time period or user macros separated by a semicolon.",
						"Please review the documentation for more information on the supported time period.",
						"https://www.zabbix.com/documentation/4.0/manual/appendix/time_period",
					]
					default: "1-7,00:00-24:00"
					type:    "str"
				}
				severity: {
					description: [
						"Trigger severities to send notifications about.",
					]
					suboptions: {
						not_classified: {
							description: [
								"severity not_classified enable/disable.",
							]
							default: true
							type:    "bool"
						}
						information: {
							description: [
								"severity information enable/disable.",
							]
							default: true
							type:    "bool"
						}
						warning: {
							description: [
								"severity warning enable/disable.",
							]
							default: true
							type:    "bool"
						}
						average: {
							description: [
								"severity average enable/disable.",
							]
							default: true
							type:    "bool"
						}
						high: {
							description: [
								"severity high enable/disable.",
							]
							default: true
							type:    "bool"
						}
						disaster: {
							description: [
								"severity disaster enable/disable.",
							]
							default: true
							type:    "bool"
						}
					}
					default: {
						not_classified: true
						information:    true
						warning:        true
						average:        true
						high:           true
						disaster:       true
					}
					type: "dict"
				}
				active: {
					description: [
						"Whether the media is enabled.",
					]
					default: true
					type:    "bool"
				}
			}
			type: "list"
		}
		type: {
			description: [
				"Type of the user.",
			]
			default: "Zabbix user"
			choices: [
				"Zabbix user",
				"Zabbix admin",
				"Zabbix super admin",
			]
			type: "str"
		}
		state: {
			description: [
				"State of the user.",
				"On C(present), it will create if user does not exist or update the user if the associated data is different.",
				"On C(absent) will remove a user if it exists.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
	}
	extends_documentation_fragment: ["zabbix"]
}
