package ansible

module: fortios_dlp_sensor: {
	module:            "fortios_dlp_sensor"
	short_description: "Configure DLP sensors in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify dlp feature and sensor category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		dlp_sensor: {
			description: [
				"Configure DLP sensors.",
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
				dlp_log: {
					description: [
						"Enable/disable DLP logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				extended_log: {
					description: [
						"Enable/disable extended logging for data leak prevention.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				filter: {
					description: [
						"Set up DLP filters for this sensor.",
					]
					type: "list"
					suboptions: {
						action: {
							description: [
								"Action to take with content that this DLP sensor matches.",
							]
							type: "str"
							choices: [
								"allow",
								"log-only",
								"block",
								"quarantine-ip",
							]
						}
						archive: {
							description: [
								"Enable/disable DLP archiving.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						company_identifier: {
							description: [
								"Enter a company identifier watermark to match. Only watermarks that your company has placed on the files are matched.",
							]
							type: "str"
						}
						expiry: {
							description: [
								"Quarantine duration in days, hours, minutes format (dddhhmm).",
							]
							type: "str"
						}
						file_size: {
							description: [
								"Match files this size or larger (0 - 4294967295 kbytes).",
							]
							type: "int"
						}
						file_type: {
							description: [
								"Select the number of a DLP file pattern table to match. Source dlp.filepattern.id.",
							]
							type: "int"
						}
						filter_by: {
							description: [
								"Select the type of content to match.",
							]
							type: "str"
							choices: [
								"credit-card",
								"ssn",
								"regexp",
								"file-type",
								"file-size",
								"fingerprint",
								"watermark",
								"encrypted",
							]
						}
						fp_sensitivity: {
							description: [
								"Select a DLP file pattern sensitivity to match.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Select a DLP sensitivity. Source dlp.fp-sensitivity.name.",
								]
								required: true
								type:     "str"
							}
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						match_percentage: {
							description: [
								"Percentage of fingerprints in the fingerprint databases designated with the selected fp-sensitivity to match.",
							]
							type: "int"
						}
						name: {
							description: [
								"Filter name.",
							]
							type: "str"
						}
						proto: {
							description: [
								"Check messages or files over one or more of these protocols.",
							]
							type: "str"
							choices: [
								"smtp",
								"pop3",
								"imap",
								"http-get",
								"http-post",
								"ftp",
								"nntp",
								"mapi",
								"mm1",
								"mm3",
								"mm4",
								"mm7",
							]
						}
						regexp: {
							description: [
								"Enter a regular expression to match (max. 255 characters).",
							]
							type: "str"
						}
						severity: {
							description: [
								"Select the severity or threat level that matches this filter.",
							]
							type: "str"
							choices: [
								"info",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						type: {
							description: [
								"Select whether to check the content of messages (an email message) or files (downloaded files or email attachments).",
							]
							type: "str"
							choices: [
								"file",
								"message",
							]
						}
					}
				}
				flow_based: {
					description: [
						"Enable/disable flow-based DLP.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				full_archive_proto: {
					description: [
						"Protocols to always content archive.",
					]
					type: "str"
					choices: [
						"smtp",
						"pop3",
						"imap",
						"http-get",
						"http-post",
						"ftp",
						"nntp",
						"mapi",
						"mm1",
						"mm3",
						"mm4",
						"mm7",
					]
				}
				nac_quar_log: {
					description: [
						"Enable/disable NAC quarantine logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				name: {
					description: [
						"Name of the DLP sensor.",
					]
					required: true
					type:     "str"
				}
				options: {
					description: [
						"Configure DLP options.",
					]
					type: "str"
				}
				replacemsg_group: {
					description: [
						"Replacement message group used by this DLP sensor. Source system.replacemsg-group.name.",
					]
					type: "str"
				}
				summary_proto: {
					description: [
						"Protocols to always log summary.",
					]
					type: "str"
					choices: [
						"smtp",
						"pop3",
						"imap",
						"http-get",
						"http-post",
						"ftp",
						"nntp",
						"mapi",
						"mm1",
						"mm3",
						"mm4",
						"mm7",
					]
				}
			}
		}
	}
}
