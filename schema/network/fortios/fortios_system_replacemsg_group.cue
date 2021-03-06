package ansible

module: fortios_system_replacemsg_group: {
	module:            "fortios_system_replacemsg_group"
	short_description: "Configure replacement message groups in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and replacemsg_group category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_replacemsg_group: {
			description: [
				"Configure replacement message groups.",
			]
			default: null
			type:    "dict"
			suboptions: {
				admin: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				alertmail: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				auth: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				comment: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				custom_message: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				device_detection_portal: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				ec: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				fortiguard_wf: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				ftp: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				group_type: {
					description: [
						"Group type.",
					]
					type: "str"
					choices: [
						"default",
						"utm",
						"auth",
						"ec",
					]
				}
				http: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				icap: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				mail: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				nac_quar: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				name: {
					description: [
						"Group name.",
					]
					required: true
					type:     "str"
				}
				nntp: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				spam: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				sslvpn: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				traffic_quota: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				utm: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
				webproxy: {
					description: [
						"Replacement message table entries.",
					]
					type: "list"
					suboptions: {
						buffer: {
							description: [
								"Message string.",
							]
							type: "str"
						}
						format: {
							description: [
								"Format flag.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"html",
								"wml",
							]
						}
						header: {
							description: [
								"Header flag.",
							]
							type: "str"
							choices: [
								"none",
								"http",
								"8bit",
							]
						}
						msg_type: {
							description: [
								"Message type.",
							]
							type: "str"
						}
					}
				}
			}
		}
	}
}
