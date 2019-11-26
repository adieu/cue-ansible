package ansible

module: bigip_firewall_log_profile: {
	module:            "bigip_firewall_log_profile"
	short_description: "Manages AFM logging profiles configured in the system"
	description: [
		"Manages AFM logging profiles configured in the system along with basic information about each profile.",
	]
	version_added: 2.9
	options: {
		name: {
			description: [
				"Specifies the name of the log profile.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"Description of the log profile.",
			]
			type: "str"
		}
		dos_protection: {
			description: [
				"Configures DoS related settings of the log profile.",
			]
			suboptions: {
				dns_publisher: {
					description: [
						"Specifies the name of the log publisher used for DNS DoS events.",
						"To specify the log_publisher on a different partition from the AFM log profile, specify the name in fullpath format, e.g. C(/Foobar/log-publisher), otherwise the partition for log publisher is inferred from C(partition) module parameter.",
					]

					type: "str"
				}
				sip_publisher: {
					description: [
						"Specifies the name of the log publisher used for SIP DoS events.",
						"To specify the log_publisher on a different partition from the AFM log profile, specify the name in fullpath format, e.g. C(/Foobar/log-publisher), otherwise the partition for log publisher is inferred from C(partition) module parameter.",
					]

					type: "str"
				}
				network_publisher: {
					description: [
						"Specifies the name of the log publisher used for DoS Network events.",
						"To specify the log_publisher on a different partition from the AFM log profile, specify the name in fullpath format, e.g. C(/Foobar/log-publisher), otherwise the partition for log publisher is inferred from C(partition) module parameter.",
					]

					type: "str"
				}
			}
			type: "dict"
		}
		ip_intelligence: {
			description: [
				"Configures IP Intelligence related settings of the log profile.",
			]
			suboptions: {
				log_publisher: {
					description: [
						"Specifies the name of the log publisher used for IP Intelligence events.",
						"To specify the log_publisher on a different partition from the AFM log profile, specify the name in fullpath format, e.g. C(/Foobar/log-publisher), otherwise the partition for log publisher is inferred from C(partition) module parameter.",
					]

					type: "str"
				}
				rate_limit: {
					description: [
						"Defines a rate limit for all combined IP intelligence log messages per second. Beyond this rate limit, log messages are not logged until the threshold drops below the specified rate.",
						"To specify an indefinite rate, use the value C(indefinite).",
						"If specifying a numeric rate, the value must be between C(1) and C(4294967295).",
					]
					type: "str"
				}
				log_rtbh: {
					description: [
						"Specifies, when C(yes), that remotely triggered blackholing events are logged.",
					]
					type: "bool"
				}
				log_shun: {
					description: [
						"Specifies, when C(yes), that IP Intelligence shun list events are logged.",
						"This option can only be set on C(global-network) built-in profile",
					]
					type: "bool"
				}
				log_translation_fields: {
					description: [
						"This option is used to enable or disable the logging of translated (i.e server side) fields in IP Intelligence log messages.",
						"Translated fields include (but are not limited to) source address/port, destination address/port, IP protocol, route domain, and VLAN.",
					]

					type: "bool"
				}
			}
			type: "dict"
		}
		port_misuse: {
			description: [
				"Port Misuse log configuration.",
			]
			suboptions: {
				log_publisher: {
					description: [
						"Specifies the name of the log publisher used for Port Misuse events.",
						"To specify the log_publisher on a different partition from the AFM log profile, specify the name in fullpath format, e.g. C(/Foobar/log-publisher), otherwise the partition for log publisher is inferred from C(partition) module parameter.",
					]

					type: "str"
				}
				rate_limit: {
					description: [
						"Defines a rate limit for all combined port misuse log messages per second. Beyond this rate limit, log messages are not logged until the threshold drops below the specified rate.",
						"To specify an indefinite rate, use the value C(indefinite).",
						"If specifying a numeric rate, the value must be between C(1) and C(4294967295).",
					]
					type: "str"
				}
			}
			type: "dict"
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
				"When C(state) is C(absent), ensures that resource is removed. Attempts to remove built-in system profiles are ignored and no change is returned.",
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
