package ansible

module: fortios_spamfilter_profile: {
	module:            "fortios_spamfilter_profile"
	short_description: "Configure AntiSpam profiles in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify spamfilter feature and profile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		state: {
			description: [
				"Indicates whether to create or remove the object. This attribute was present already in previous version in a deeper level. It has been moved out to this outer level.",
			]

			type:     "str"
			required: false
			choices: [
				"present",
				"absent",
			]
			version_added: 2.9
		}
		spamfilter_profile: {
			description: [
				"Configure AntiSpam profiles.",
			]
			default: null
			type:    "dict"
			suboptions: {
				state: {
					description: [
						"B(Deprecated)",
						"Starting with Ansible 2.9 we recommend using the top-level 'state' parameter.",
						"HORIZONTALLINE",
						"Indicates whether to create or remove the object.",
					]
					type:     "str"
					required: false
					choices: [
						"present",
						"absent",
					]
				}
				comment: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				external: {
					description: [
						"Enable/disable external Email inspection.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				flow_based: {
					description: [
						"Enable/disable flow-based spam filtering.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gmail: {
					description: [
						"Gmail.",
					]
					type: "dict"
					suboptions: log: {
						description: [
							"Enable/disable logging.",
						]
						type: "str"
						choices: [
							"enable",
							"disable",
						]
					}
				}
				imap: {
					description: [
						"IMAP.",
					]
					type: "dict"
					suboptions: {
						action: {
							description: [
								"Action for spam email.",
							]
							type: "str"
							choices: [
								"pass",
								"tag",
							]
						}
						log: {
							description: [
								"Enable/disable logging.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						tag_msg: {
							description: [
								"Subject text or header added to spam email.",
							]
							type: "str"
						}
						tag_type: {
							description: [
								"Tag subject or header for spam email.",
							]
							type: "list"
							choices: [
								"subject",
								"header",
								"spaminfo",
							]
						}
					}
				}
				mapi: {
					description: [
						"MAPI.",
					]
					type: "dict"
					suboptions: {
						action: {
							description: [
								"Action for spam email.",
							]
							type: "str"
							choices: [
								"pass",
								"discard",
							]
						}
						log: {
							description: [
								"Enable/disable logging.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				msn_hotmail: {
					description: [
						"MSN Hotmail.",
					]
					type: "dict"
					suboptions: log: {
						description: [
							"Enable/disable logging.",
						]
						type: "str"
						choices: [
							"enable",
							"disable",
						]
					}
				}
				name: {
					description: [
						"Profile name.",
					]
					required: true
					type:     "str"
				}
				options: {
					description: [
						"Options.",
					]
					type: "list"
					choices: [
						"bannedword",
						"spambwl",
						"spamfsip",
						"spamfssubmit",
						"spamfschksum",
						"spamfsurl",
						"spamhelodns",
						"spamraddrdns",
						"spamrbl",
						"spamhdrcheck",
						"spamfsphish",
					]
				}
				pop3: {
					description: [
						"POP3.",
					]
					type: "dict"
					suboptions: {
						action: {
							description: [
								"Action for spam email.",
							]
							type: "str"
							choices: [
								"pass",
								"tag",
							]
						}
						log: {
							description: [
								"Enable/disable logging.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						tag_msg: {
							description: [
								"Subject text or header added to spam email.",
							]
							type: "str"
						}
						tag_type: {
							description: [
								"Tag subject or header for spam email.",
							]
							type: "list"
							choices: [
								"subject",
								"header",
								"spaminfo",
							]
						}
					}
				}
				replacemsg_group: {
					description: [
						"Replacement message group. Source system.replacemsg-group.name.",
					]
					type: "str"
				}
				smtp: {
					description: [
						"SMTP.",
					]
					type: "dict"
					suboptions: {
						action: {
							description: [
								"Action for spam email.",
							]
							type: "str"
							choices: [
								"pass",
								"tag",
								"discard",
							]
						}
						hdrip: {
							description: [
								"Enable/disable SMTP email header IP checks for spamfsip, spamrbl and spambwl filters.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						local_override: {
							description: [
								"Enable/disable local filter to override SMTP remote check result.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						log: {
							description: [
								"Enable/disable logging.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						tag_msg: {
							description: [
								"Subject text or header added to spam email.",
							]
							type: "str"
						}
						tag_type: {
							description: [
								"Tag subject or header for spam email.",
							]
							type: "list"
							choices: [
								"subject",
								"header",
								"spaminfo",
							]
						}
					}
				}
				spam_bwl_table: {
					description: [
						"Anti-spam black/white list table ID. Source spamfilter.bwl.id.",
					]
					type: "int"
				}
				spam_bword_table: {
					description: [
						"Anti-spam banned word table ID. Source spamfilter.bword.id.",
					]
					type: "int"
				}
				spam_bword_threshold: {
					description: [
						"Spam banned word threshold.",
					]
					type: "int"
				}
				spam_filtering: {
					description: [
						"Enable/disable spam filtering.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				spam_iptrust_table: {
					description: [
						"Anti-spam IP trust table ID. Source spamfilter.iptrust.id.",
					]
					type: "int"
				}
				spam_log: {
					description: [
						"Enable/disable spam logging for email filtering.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				spam_log_fortiguard_response: {
					description: [
						"Enable/disable logging FortiGuard spam response.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				spam_mheader_table: {
					description: [
						"Anti-spam MIME header table ID. Source spamfilter.mheader.id.",
					]
					type: "int"
				}
				spam_rbl_table: {
					description: [
						"Anti-spam DNSBL table ID. Source spamfilter.dnsbl.id.",
					]
					type: "int"
				}
				yahoo_mail: {
					description: [
						"Yahoo! Mail.",
					]
					type: "dict"
					suboptions: log: {
						description: [
							"Enable/disable logging.",
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
}
