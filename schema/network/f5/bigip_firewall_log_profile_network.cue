package ansible

module: bigip_firewall_log_profile_network: {
	module:            "bigip_firewall_log_profile_network"
	short_description: "Configures Network Firewall related settings of the log profile"
	description: [
		"Configures Network Firewall related settings of the log profile.",
	]
	version_added: 2.9
	options: {
		profile_name: {
			description: [
				"Specifies the name of the AFM log profile to be updated.",
			]
			type:     "str"
			required: true
		}
		log_publisher: {
			description: [
				"Specifies the name of the log publisher used for Network events.",
				"To specify the log_publisher on a different partition from the AFM log profile, specify the name in fullpath format, e.g. C(/Foobar/log-publisher), otherwise the partition for log publisher is inferred from C(partition) module parameter.",
			]

			type: "str"
		}
		rate_limit: {
			description: [
				"Defines a rate limit for all combined network firewall log messages per second. Beyond this rate limit, log messages are not logged.",
				"To specify an indefinite rate, use the value C(indefinite).",
				"If specifying a numeric rate, the value must be between C(1) and C(4294967295).",
			]
			type: "str"
		}
		log_matches_accept_rule: {
			description: [
				"Modify log settings for ACL rules configured with an \"accept\" or \"accept decisively\" action.",
			]
			suboptions: {
				enabled: {
					description: [
						"This option is used to enable or disable the logging of packets that match ACL rules configured with an \"accept\" or \"accept decisively\" action.",
					]

					type: "bool"
				}
				rate_limit: {
					description: [
						"This option is used to set rate limits for the logging of packets that match ACL rules configured with an \"accept\" or \"accept decisively\" action.",
						"This option is effective only if logging of this message type is enabled.",
					]
					type: "int"
				}
			}
			type: "dict"
		}
		log_matches_drop_rule: {
			description: [
				"Modify log settings for ACL rules configured with a drop action.",
			]
			suboptions: {
				enabled: {
					description: [
						"This option is used to enable or disable the logging of packets that match ACL rules configured with a drop action.",
					]

					type: "bool"
				}
				rate_limit: {
					description: [
						"This option is used to set rate limits for the logging of packets that match ACL rules configured with a drop action.",
						"This option is effective only if logging of this message type is enabled.",
					]
					type: "int"
				}
			}
			type: "dict"
		}
		log_matches_reject_rule: {
			description: [
				"Modify log settings for ACL rules configured with a reject action.",
			]
			suboptions: {
				enabled: {
					description: [
						"This option is used to enable or disable the logging of packets that match ACL rules configured with a reject action.",
					]

					type: "bool"
				}
				rate_limit: {
					description: [
						"This option is used to set rate limits for the logging of packets that match ACL rules configured with a reject action.",
						"This option is effective only if logging of this message type is enabled.",
					]
					type: "int"
				}
			}
			type: "dict"
		}
		log_ip_errors: {
			description: [
				"Modify log settings for logging of IP error packets.",
			]
			suboptions: {
				enabled: {
					description: [
						"This option is used to enable or disable the logging of IP error packets.",
					]
					type: "bool"
				}
				rate_limit: {
					description: [
						"This option is used to set rate limits for the logging of IP error packets.",
						"This option is effective only if logging of this message type is enabled.",
					]
					type: "int"
				}
			}
			type: "dict"
		}
		log_tcp_errors: {
			description: [
				"Modify log settings for logging of TCP error packets.",
			]
			suboptions: {
				enabled: {
					description: [
						"This option is used to enable or disable the logging of TCP error packets.",
					]
					type: "bool"
				}
				rate_limit: {
					description: [
						"This option is used to set rate limits for the logging of TCP error packets.",
						"This option is effective only if logging of this message type is enabled.",
					]
					type: "int"
				}
			}
			type: "dict"
		}
		log_tcp_events: {
			description: [
				"Modify log settings for logging of TCP events on the client side.",
			]
			suboptions: {
				enabled: {
					description: [
						"This option is used to enable or disable the logging of TCP events on the client side.",
						"Only 'Established' and 'Closed' states of a TCP session are logged if this option is enabled.",
					]
					type: "bool"
				}
				rate_limit: {
					description: [
						"This option is used to set rate limits for the logging of TCP events on the client side.",
						"This option is effective only if logging of this message type is enabled.",
					]
					type: "int"
				}
			}
			type: "dict"
		}
		log_translation_fields: {
			description: [
				"This option is used to enable or disable the logging of translated (i.e server side) fields in ACL match and TCP events.",
				"Translated fields include (but are not limited to) source address/port, destination address/port, IP protocol, route domain, and VLAN.",
			]

			type: "bool"
		}
		log_storage_format: {
			description: [
				"Specifies the type of the storage format.",
				"When creating a new log profile, if this parameter is not specified, the default is C(none).",
				"When C(field-list), specifies that the log displays only the items you specify in the C(log_message_fields) list with C(log_format_delimiter) as the delimiter between the items.",
				"When C(none), the messages will be logged in the default format, which is C(\"management_ip_address\", \"bigip_hostname\",\"context_type\", \"context_name\",\"src_geo\",\"src_ip\", \"dest_geo\",\"dest_ip\",\"src_port\", \"dest_port\",\"vlan\",\"protocol\",\"route_domain\", \"translated_src_ip\", \"translated_dest_ip\", \"translated_src_port\",\"translated_dest_port\", \"translated_vlan\",\"translated_ip_protocol\", \"translated_route_domain\", \"acl_policy_type\", \"acl_policy_name\",\"acl_rule_name\",\"action\", \"drop_reason\",\"sa_translation_type\", \"sa_translation_pool\",\"flow_id\", \"source_user\", \"source_fqdn\",\"dest_fqdn\").",
			]

			choices: [
				"field-list",
				"none",
			]
			type: "str"
		}
		log_format_delimiter: {
			description: [
				"Specifies the delimiter string when using a C(log_storage_format) of C(field-list).",
				"When creating a new profile, if this parameter is not specified, the default value of C(,) (the comma character) will be used.",
				"This option is valid when the C(log_storage_format) is set to C(field-list). It will be ignored otherwise.",
				"Depending on the delimiter used, it may be necessary to wrap the delimiter in quotes to prevent YAML errors from occurring.",
				"The special character C($) should not be used, and will raise an error if used, as it is reserved for internal use.",
				"The maximum length allowed for this parameter is C(31) characters.",
			]
			type: "str"
		}
		log_message_fields: {
			description: [
				"Specifies a set of fields to be logged.",
				"This option is valid when the C(log_storage_format) is set to C(field-list). It will be ignored otherwise.",
				"The order of the list is important as the server displays the selected traffic items in the log sequentially according to it.",
			]

			type: "list"
			choices: [
				"acl_policy_name",
				"acl_policy_type",
				"acl_rule_name",
				"action",
				"bigip_hostname",
				"context_name",
				"context_type",
				"date_time",
				"dest_fqdn",
				"dest_geo",
				"dest_ip",
				"dest_port",
				"drop_reason",
				"management_ip_address",
				"protocol",
				"route_domain",
				"sa_translation_pool",
				"sa_translation_type",
				"source_fqdn",
				"source_user",
				"src_geo",
				"src_ip",
				"src_port",
				"translated_dest_ip",
				"translated_dest_port",
				"translated_ip_protocol",
				"translated_route_domain",
				"translated_src_ip",
				"translated_src_port",
				"translated_vlan",
				"vlan",
			]
		}
		partition: {
			description: [
				"Device partition to create log profile on.",
				"Parameter also used when specifying names for log publishers, unless log publisher names are in fullpath format.",
			]
			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(state) is C(present), ensures the resource exists.",
				"Only built-in profile that allows updating network log settings is global-network, attempts to do so on other built-in profiles will be ignored.",
				"When C(state) is C(absent), ensures that resource is removed.",
				"The C(absent) state is ignored for global-network log profile.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Wojciech Wypior (@wojtek0806)"]
}
