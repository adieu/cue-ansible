package ansible

module: fortios_firewall_profile_protocol_options: {
	module:            "fortios_firewall_profile_protocol_options"
	short_description: "Configure protocol options in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and profile_protocol_options category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_profile_protocol_options: {
			description: [
				"Configure protocol options.",
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
						"Optional comments.",
					]
					type: "str"
				}
				dns: {
					description: [
						"Configure DNS protocol options.",
					]
					type: "dict"
					suboptions: {
						ports: {
							description: [
								"Ports to scan for content (1 - 65535).",
							]
							type: "int"
						}
						status: {
							description: [
								"Enable/disable the active status of scanning for this protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				ftp: {
					description: [
						"Configure FTP protocol options.",
					]
					type: "dict"
					suboptions: {
						comfort_amount: {
							description: [
								"Amount of data to send in a transmission for client comforting (1 - 10240 bytes).",
							]
							type: "int"
						}
						comfort_interval: {
							description: [
								"Period of time between start, or last transmission, and the next client comfort transmission of data (1 - 900 sec).",
							]
							type: "int"
						}
						inspect_all: {
							description: [
								"Enable/disable the inspection of all ports for the protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						options: {
							description: [
								"One or more options that can be applied to the session.",
							]
							type: "str"
							choices: [
								"clientcomfort",
								"oversize",
								"splice",
								"bypass-rest-command",
								"bypass-mode-command",
							]
						}
						oversize_limit: {
							description: [
								"Maximum in-memory file size that can be scanned (1 - 383 MB).",
							]
							type: "int"
						}
						ports: {
							description: [
								"Ports to scan for content (1 - 65535).",
							]
							type: "int"
						}
						scan_bzip2: {
							description: [
								"Enable/disable scanning of BZip2 compressed files.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						status: {
							description: [
								"Enable/disable the active status of scanning for this protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						uncompressed_nest_limit: {
							description: [
								"Maximum nested levels of compression that can be uncompressed and scanned (2 - 100).",
							]
							type: "int"
						}
						uncompressed_oversize_limit: {
							description: [
								"Maximum in-memory uncompressed file size that can be scanned (0 - 383 MB, 0 = unlimited).",
							]
							type: "int"
						}
					}
				}
				http: {
					description: [
						"Configure HTTP protocol options.",
					]
					type: "dict"
					suboptions: {
						block_page_status_code: {
							description: [
								"Code number returned for blocked HTTP pages (non-FortiGuard only) (100 - 599).",
							]
							type: "int"
						}
						comfort_amount: {
							description: [
								"Amount of data to send in a transmission for client comforting (1 - 10240 bytes).",
							]
							type: "int"
						}
						comfort_interval: {
							description: [
								"Period of time between start, or last transmission, and the next client comfort transmission of data (1 - 900 sec).",
							]
							type: "int"
						}
						fortinet_bar: {
							description: [
								"Enable/disable Fortinet bar on HTML content.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						fortinet_bar_port: {
							description: [
								"Port for use by Fortinet Bar (1 - 65535).",
							]
							type: "int"
						}
						http_policy: {
							description: [
								"Enable/disable HTTP policy check.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						inspect_all: {
							description: [
								"Enable/disable the inspection of all ports for the protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						options: {
							description: [
								"One or more options that can be applied to the session.",
							]
							type: "str"
							choices: [
								"clientcomfort",
								"servercomfort",
								"oversize",
								"chunkedbypass",
							]
						}
						oversize_limit: {
							description: [
								"Maximum in-memory file size that can be scanned (1 - 383 MB).",
							]
							type: "int"
						}
						ports: {
							description: [
								"Ports to scan for content (1 - 65535).",
							]
							type: "int"
						}
						post_lang: {
							description: [
								"ID codes for character sets to be used to convert to UTF-8 for banned words and DLP on HTTP posts (maximum of 5 character sets).",
							]
							type: "str"
							choices: [
								"jisx0201",
								"jisx0208",
								"jisx0212",
								"gb2312",
								"ksc5601-ex",
								"euc-jp",
								"sjis",
								"iso2022-jp",
								"iso2022-jp-1",
								"iso2022-jp-2",
								"euc-cn",
								"ces-gbk",
								"hz",
								"ces-big5",
								"euc-kr",
								"iso2022-jp-3",
								"iso8859-1",
								"tis620",
								"cp874",
								"cp1252",
								"cp1251",
							]
						}
						range_block: {
							description: [
								"Enable/disable blocking of partial downloads.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						retry_count: {
							description: [
								"Number of attempts to retry HTTP connection (0 - 100).",
							]
							type: "int"
						}
						scan_bzip2: {
							description: [
								"Enable/disable scanning of BZip2 compressed files.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						status: {
							description: [
								"Enable/disable the active status of scanning for this protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						streaming_content_bypass: {
							description: [
								"Enable/disable bypassing of streaming content from buffering.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						strip_x_forwarded_for: {
							description: [
								"Enable/disable stripping of HTTP X-Forwarded-For header.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						switching_protocols: {
							description: [
								"Bypass from scanning, or block a connection that attempts to switch protocol.",
							]
							type: "str"
							choices: [
								"bypass",
								"block",
							]
						}
						uncompressed_nest_limit: {
							description: [
								"Maximum nested levels of compression that can be uncompressed and scanned (2 - 100).",
							]
							type: "int"
						}
						uncompressed_oversize_limit: {
							description: [
								"Maximum in-memory uncompressed file size that can be scanned (0 - 383 MB, 0 = unlimited).",
							]
							type: "int"
						}
					}
				}
				imap: {
					description: [
						"Configure IMAP protocol options.",
					]
					type: "dict"
					suboptions: {
						inspect_all: {
							description: [
								"Enable/disable the inspection of all ports for the protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						options: {
							description: [
								"One or more options that can be applied to the session.",
							]
							type: "str"
							choices: [
								"fragmail",
								"oversize",
							]
						}
						oversize_limit: {
							description: [
								"Maximum in-memory file size that can be scanned (1 - 383 MB).",
							]
							type: "int"
						}
						ports: {
							description: [
								"Ports to scan for content (1 - 65535).",
							]
							type: "int"
						}
						scan_bzip2: {
							description: [
								"Enable/disable scanning of BZip2 compressed files.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						status: {
							description: [
								"Enable/disable the active status of scanning for this protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						uncompressed_nest_limit: {
							description: [
								"Maximum nested levels of compression that can be uncompressed and scanned (2 - 100).",
							]
							type: "int"
						}
						uncompressed_oversize_limit: {
							description: [
								"Maximum in-memory uncompressed file size that can be scanned (0 - 383 MB, 0 = unlimited).",
							]
							type: "int"
						}
					}
				}
				mail_signature: {
					description: [
						"Configure Mail signature.",
					]
					type: "dict"
					suboptions: {
						signature: {
							description: [
								"Email signature to be added to outgoing email (if the signature contains spaces, enclose with quotation marks).",
							]
							type: "str"
						}
						status: {
							description: [
								"Enable/disable adding an email signature to SMTP email messages as they pass through the FortiGate.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
					}
				}
				mapi: {
					description: [
						"Configure MAPI protocol options.",
					]
					type: "dict"
					suboptions: {
						options: {
							description: [
								"One or more options that can be applied to the session.",
							]
							type: "str"
							choices: [
								"fragmail",
								"oversize",
							]
						}
						oversize_limit: {
							description: [
								"Maximum in-memory file size that can be scanned (1 - 383 MB).",
							]
							type: "int"
						}
						ports: {
							description: [
								"Ports to scan for content (1 - 65535).",
							]
							type: "int"
						}
						scan_bzip2: {
							description: [
								"Enable/disable scanning of BZip2 compressed files.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						status: {
							description: [
								"Enable/disable the active status of scanning for this protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						uncompressed_nest_limit: {
							description: [
								"Maximum nested levels of compression that can be uncompressed and scanned (2 - 100).",
							]
							type: "int"
						}
						uncompressed_oversize_limit: {
							description: [
								"Maximum in-memory uncompressed file size that can be scanned (0 - 383 MB, 0 = unlimited).",
							]
							type: "int"
						}
					}
				}
				name: {
					description: [
						"Name.",
					]
					required: true
					type:     "str"
				}
				nntp: {
					description: [
						"Configure NNTP protocol options.",
					]
					type: "dict"
					suboptions: {
						inspect_all: {
							description: [
								"Enable/disable the inspection of all ports for the protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						options: {
							description: [
								"One or more options that can be applied to the session.",
							]
							type: "str"
							choices: [
								"oversize",
								"splice",
							]
						}
						oversize_limit: {
							description: [
								"Maximum in-memory file size that can be scanned (1 - 383 MB).",
							]
							type: "int"
						}
						ports: {
							description: [
								"Ports to scan for content (1 - 65535).",
							]
							type: "int"
						}
						scan_bzip2: {
							description: [
								"Enable/disable scanning of BZip2 compressed files.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						status: {
							description: [
								"Enable/disable the active status of scanning for this protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						uncompressed_nest_limit: {
							description: [
								"Maximum nested levels of compression that can be uncompressed and scanned (2 - 100).",
							]
							type: "int"
						}
						uncompressed_oversize_limit: {
							description: [
								"Maximum in-memory uncompressed file size that can be scanned (0 - 383 MB, 0 = unlimited).",
							]
							type: "int"
						}
					}
				}
				oversize_log: {
					description: [
						"Enable/disable logging for antivirus oversize file blocking.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				pop3: {
					description: [
						"Configure POP3 protocol options.",
					]
					type: "dict"
					suboptions: {
						inspect_all: {
							description: [
								"Enable/disable the inspection of all ports for the protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						options: {
							description: [
								"One or more options that can be applied to the session.",
							]
							type: "str"
							choices: [
								"fragmail",
								"oversize",
							]
						}
						oversize_limit: {
							description: [
								"Maximum in-memory file size that can be scanned (1 - 383 MB).",
							]
							type: "int"
						}
						ports: {
							description: [
								"Ports to scan for content (1 - 65535).",
							]
							type: "int"
						}
						scan_bzip2: {
							description: [
								"Enable/disable scanning of BZip2 compressed files.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						status: {
							description: [
								"Enable/disable the active status of scanning for this protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						uncompressed_nest_limit: {
							description: [
								"Maximum nested levels of compression that can be uncompressed and scanned (2 - 100).",
							]
							type: "int"
						}
						uncompressed_oversize_limit: {
							description: [
								"Maximum in-memory uncompressed file size that can be scanned (0 - 383 MB, 0 = unlimited).",
							]
							type: "int"
						}
					}
				}
				replacemsg_group: {
					description: [
						"Name of the replacement message group to be used Source system.replacemsg-group.name.",
					]
					type: "str"
				}
				rpc_over_http: {
					description: [
						"Enable/disable inspection of RPC over HTTP.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				smtp: {
					description: [
						"Configure SMTP protocol options.",
					]
					type: "dict"
					suboptions: {
						inspect_all: {
							description: [
								"Enable/disable the inspection of all ports for the protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						options: {
							description: [
								"One or more options that can be applied to the session.",
							]
							type: "str"
							choices: [
								"fragmail",
								"oversize",
								"splice",
							]
						}
						oversize_limit: {
							description: [
								"Maximum in-memory file size that can be scanned (1 - 383 MB).",
							]
							type: "int"
						}
						ports: {
							description: [
								"Ports to scan for content (1 - 65535).",
							]
							type: "int"
						}
						scan_bzip2: {
							description: [
								"Enable/disable scanning of BZip2 compressed files.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						server_busy: {
							description: [
								"Enable/disable SMTP server busy when server not available.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						status: {
							description: [
								"Enable/disable the active status of scanning for this protocol.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						uncompressed_nest_limit: {
							description: [
								"Maximum nested levels of compression that can be uncompressed and scanned (2 - 100).",
							]
							type: "int"
						}
						uncompressed_oversize_limit: {
							description: [
								"Maximum in-memory uncompressed file size that can be scanned (0 - 383 MB, 0 = unlimited).",
							]
							type: "int"
						}
					}
				}
				switching_protocols_log: {
					description: [
						"Enable/disable logging for HTTP/HTTPS switching protocols.",
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
