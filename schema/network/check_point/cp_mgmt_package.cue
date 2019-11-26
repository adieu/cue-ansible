package ansible

module: cp_mgmt_package: {
	module:            "cp_mgmt_package"
	short_description: "Manages package objects on Check Point over Web Services API"
	description: [
		"Manages package objects on Check Point devices including creating, updating and removing objects.",
		"All operations are performed over Web Services API.",
	]
	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: {
		name: {
			description: [
				"Object name.",
			]
			type:     "str"
			required: true
		}
		access: {
			description: [
				"True - enables, False - disables access & NAT policies, empty - nothing is changed.",
			]
			type: "bool"
		}
		desktop_security: {
			description: [
				"True - enables, False - disables Desktop security policy, empty - nothing is changed.",
			]
			type: "bool"
		}
		installation_targets: {
			description: [
				"Which Gateways identified by the name or UID to install the policy on.",
			]
			type: "list"
		}
		qos: {
			description: [
				"True - enables, False - disables QoS policy, empty - nothing is changed.",
			]
			type: "bool"
		}
		qos_policy_type: {
			description: [
				"QoS policy type.",
			]
			type: "str"
			choices: ["recommended", "express"]
		}
		tags: {
			description: [
				"Collection of tag identifiers.",
			]
			type: "list"
		}
		threat_prevention: {
			description: [
				"True - enables, False - disables Threat policy, empty - nothing is changed.",
			]
			type: "bool"
		}
		vpn_traditional_mode: {
			description: [
				"True - enables, False - disables VPN traditional mode, empty - nothing is changed.",
			]
			type: "bool"
		}
		color: {
			description: [
				"Color of the object. Should be one of existing colors.",
			]
			type: "str"
			choices: [
				"aquamarine",
				"black",
				"blue",
				"crete blue",
				"burlywood",
				"cyan",
				"dark green",
				"khaki",
				"orchid",
				"dark orange",
				"dark sea green",
				"pink",
				"turquoise",
				"dark blue",
				"firebrick",
				"brown",
				"forest green",
				"gold",
				"dark gold",
				"gray",
				"dark gray",
				"light green",
				"lemon chiffon",
				"coral",
				"sea green",
				"sky blue",
				"magenta",
				"purple",
				"slate blue",
				"violet red",
				"navy blue",
				"olive",
				"orange",
				"red",
				"sienna",
				"yellow",
			]
		}
		comments: {
			description: [
				"Comments string.",
			]
			type: "str"
		}
		details_level: {
			description: [
				"The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.",
			]

			type: "str"
			choices: ["uid", "standard", "full"]
		}
		ignore_warnings: {
			description: [
				"Apply changes ignoring warnings.",
			]
			type: "bool"
		}
		ignore_errors: {
			description: [
				"Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.",
			]
			type: "bool"
		}
		access_layers: {
			description: [
				"Access policy layers.",
			]
			type: "dict"
			suboptions: {
				add: {
					description: [
						"Collection of Access layer objects to be added identified by the name or UID.",
					]
					type: "list"
					suboptions: {
						name: {
							description: [
								"Layer name or UID.",
							]
							type: "str"
						}
						position: {
							description: [
								"Layer position.",
							]
							type: "int"
						}
					}
				}
				remove: {
					description: [
						"Collection of Access layer objects to be removed identified by the name or UID.",
					]
					type: "list"
				}
				value: {
					description: [
						"Collection of Access layer objects to be set identified by the name or UID. Replaces existing Access layers.",
					]
					type: "list"
				}
			}
		}
		threat_layers: {
			description: [
				"Threat policy layers.",
			]
			type: "dict"
			suboptions: {
				add: {
					description: [
						"Collection of Threat layer objects to be added identified by the name or UID.",
					]
					type: "list"
					suboptions: {
						name: {
							description: [
								"Layer name or UID.",
							]
							type: "str"
						}
						position: {
							description: [
								"Layer position.",
							]
							type: "int"
						}
					}
				}
				remove: {
					description: [
						"Collection of Threat layer objects to be removed identified by the name or UID.",
					]
					type: "list"
				}
				value: {
					description: [
						"Collection of Threat layer objects to be set identified by the name or UID. Replaces existing Threat layers.",
					]
					type: "list"
				}
			}
		}
	}
	extends_documentation_fragment: "checkpoint_objects"
}
