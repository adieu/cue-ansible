package ansible

module: cp_mgmt_access_rule: {
	module:            "cp_mgmt_access_rule"
	short_description: "Manages access-rule objects on Check Point over Web Services API"
	description: [
		"Manages access-rule objects on Check Point devices including creating, updating and removing objects.",
		"All operations are performed over Web Services API.",
	]
	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: {
		layer: {
			description: [
				"Layer that the rule belongs to identified by the name or UID.",
			]
			type: "str"
		}
		position: {
			description: [
				"Position in the rulebase.",
			]
			type: "str"
		}
		name: {
			description: [
				"Object name.",
			]
			type:     "str"
			required: true
		}
		action: {
			description: [
				"a \"Accept\", \"Drop\", \"Ask\", \"Inform\", \"Reject\", \"User Auth\", \"Client Auth\", \"Apply Layer\".",
			]
			type: "str"
		}
		action_settings: {
			description: [
				"Action settings.",
			]
			type: "dict"
			suboptions: {
				enable_identity_captive_portal: {
					description: [
						"N/A",
					]
					type: "bool"
				}
				limit: {
					description: [
						"N/A",
					]
					type: "str"
				}
			}
		}
		content: {
			description: [
				"List of processed file types that this rule applies on.",
			]
			type: "list"
		}
		content_direction: {
			description: [
				"On which direction the file types processing is applied.",
			]
			type: "str"
			choices: ["any", "up", "down"]
		}
		content_negate: {
			description: [
				"True if negate is set for data.",
			]
			type: "bool"
		}
		custom_fields: {
			description: [
				"Custom fields.",
			]
			type: "dict"
			suboptions: {
				field_1: {
					description: [
						"First custom field.",
					]
					type: "str"
				}
				field_2: {
					description: [
						"Second custom field.",
					]
					type: "str"
				}
				field_3: {
					description: [
						"Third custom field.",
					]
					type: "str"
				}
			}
		}
		destination: {
			description: [
				"Collection of Network objects identified by the name or UID.",
			]
			type: "list"
		}
		destination_negate: {
			description: [
				"True if negate is set for destination.",
			]
			type: "bool"
		}
		enabled: {
			description: [
				"Enable/Disable the rule.",
			]
			type: "bool"
		}
		inline_layer: {
			description: [
				"Inline Layer identified by the name or UID. Relevant only if \"Action\" was set to \"Apply Layer\".",
			]
			type: "str"
		}
		install_on: {
			description: [
				"Which Gateways identified by the name or UID to install the policy on.",
			]
			type: "list"
		}
		service: {
			description: [
				"Collection of Network objects identified by the name or UID.",
			]
			type: "list"
		}
		service_negate: {
			description: [
				"True if negate is set for service.",
			]
			type: "bool"
		}
		source: {
			description: [
				"Collection of Network objects identified by the name or UID.",
			]
			type: "list"
		}
		source_negate: {
			description: [
				"True if negate is set for source.",
			]
			type: "bool"
		}
		time: {
			description: [
				"List of time objects. For example, \"Weekend\", \"Off-Work\", \"Every-Day\".",
			]
			type: "list"
		}
		track: {
			description: [
				"Track Settings.",
			]
			type: "dict"
			suboptions: {
				accounting: {
					description: [
						"Turns accounting for track on and off.",
					]
					type: "bool"
				}
				alert: {
					description: [
						"Type of alert for the track.",
					]
					type: "str"
					choices: ["none", "alert", "snmp", "mail", "user alert 1", "user alert 2", "user alert 3"]
				}
				enable_firewall_session: {
					description: [
						"Determine whether to generate session log to firewall only connections.",
					]
					type: "bool"
				}
				per_connection: {
					description: [
						"Determines whether to perform the log per connection.",
					]
					type: "bool"
				}
				per_session: {
					description: [
						"Determines whether to perform the log per session.",
					]
					type: "bool"
				}
				type: {
					description: [
						"a \"Log\", \"Extended Log\", \"Detailed  Log\", \"None\".",
					]
					type: "str"
				}
			}
		}
		user_check: {
			description: [
				"User check settings.",
			]
			type: "dict"
			suboptions: {
				confirm: {
					description: [
						"N/A",
					]
					type: "str"
					choices: ["per rule", "per category", "per application/site", "per data type"]
				}
				custom_frequency: {
					description: [
						"N/A",
					]
					type: "dict"
					suboptions: {
						every: {
							description: [
								"N/A",
							]
							type: "int"
						}
						unit: {
							description: [
								"N/A",
							]
							type: "str"
							choices: ["hours", "days", "weeks", "months"]
						}
					}
				}
				frequency: {
					description: [
						"N/A",
					]
					type: "str"
					choices: ["once a day", "once a week", "once a month", "custom frequency..."]
				}
				interaction: {
					description: [
						"N/A",
					]
					type: "str"
				}
			}
		}
		vpn: {
			description: [
				"Communities or Directional.",
			]
			type: "list"
			suboptions: {
				community: {
					description: [
						"List of community name or UID.",
					]
					type: "list"
				}
				directional: {
					description: [
						"Communities directional match condition.",
					]
					type: "list"
					suboptions: {
						from: {
							description: [
								"From community name or UID.",
							]
							type: "str"
						}
						to: {
							description: [
								"To community name or UID.",
							]
							type: "str"
						}
					}
				}
			}
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
	}
	extends_documentation_fragment: "checkpoint_objects"
}
