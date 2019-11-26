package ansible

module: fortios_log_threat_weight: {
	module:            "fortios_log_threat_weight"
	short_description: "Configure threat weight settings in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify log feature and threat_weight category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		log_threat_weight: {
			description: [
				"Configure threat weight settings.",
			]
			default: null
			type:    "dict"
			suboptions: {
				application: {
					description: [
						"Application-control threat weight settings.",
					]
					type: "list"
					suboptions: {
						category: {
							description: [
								"Application category.",
							]
							type: "int"
						}
						id: {
							description: [
								"Entry ID.",
							]
							required: true
							type:     "int"
						}
						level: {
							description: [
								"Threat weight score for Application events.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
					}
				}
				blocked_connection: {
					description: [
						"Threat weight score for blocked connections.",
					]
					type: "str"
					choices: [
						"disable",
						"low",
						"medium",
						"high",
						"critical",
					]
				}
				failed_connection: {
					description: [
						"Threat weight score for failed connections.",
					]
					type: "str"
					choices: [
						"disable",
						"low",
						"medium",
						"high",
						"critical",
					]
				}
				geolocation: {
					description: [
						"Geolocation-based threat weight settings.",
					]
					type: "list"
					suboptions: {
						country: {
							description: [
								"Country code.",
							]
							type: "str"
						}
						id: {
							description: [
								"Entry ID.",
							]
							required: true
							type:     "int"
						}
						level: {
							description: [
								"Threat weight score for Geolocation-based events.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
					}
				}
				ips: {
					description: [
						"IPS threat weight settings.",
					]
					type: "dict"
					suboptions: {
						critical_severity: {
							description: [
								"Threat weight score for IPS critical severity events.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						high_severity: {
							description: [
								"Threat weight score for IPS high severity events.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						info_severity: {
							description: [
								"Threat weight score for IPS info severity events.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						low_severity: {
							description: [
								"Threat weight score for IPS low severity events.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						medium_severity: {
							description: [
								"Threat weight score for IPS medium severity events.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
					}
				}
				level: {
					description: [
						"Score mapping for threat weight levels.",
					]
					type: "dict"
					suboptions: {
						critical: {
							description: [
								"Critical level score value (1 - 100).",
							]
							type: "int"
						}
						high: {
							description: [
								"High level score value (1 - 100).",
							]
							type: "int"
						}
						low: {
							description: [
								"Low level score value (1 - 100).",
							]
							type: "int"
						}
						medium: {
							description: [
								"Medium level score value (1 - 100).",
							]
							type: "int"
						}
					}
				}
				malware: {
					description: [
						"Anti-virus malware threat weight settings.",
					]
					type: "dict"
					suboptions: {
						botnet_connection: {
							description: [
								"Threat weight score for detected botnet connections.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						command_blocked: {
							description: [
								"Threat weight score for blocked command detected.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						content_disarm: {
							description: [
								"Threat weight score for virus (content disarm) detected.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						mimefragmented: {
							description: [
								"Threat weight score for mimefragmented detected.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						oversized: {
							description: [
								"Threat weight score for oversized file detected.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						switch_proto: {
							description: [
								"Threat weight score for switch proto detected.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						virus_blocked: {
							description: [
								"Threat weight score for virus (blocked) detected.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						virus_file_type_executable: {
							description: [
								"Threat weight score for virus (filetype executable) detected.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						virus_infected: {
							description: [
								"Threat weight score for virus (infected) detected.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						virus_outbreak_prevention: {
							description: [
								"Threat weight score for virus (outbreak prevention) event.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						virus_scan_error: {
							description: [
								"Threat weight score for virus (scan error) detected.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
					}
				}
				status: {
					description: [
						"Enable/disable the threat weight feature.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				url_block_detected: {
					description: [
						"Threat weight score for URL blocking.",
					]
					type: "str"
					choices: [
						"disable",
						"low",
						"medium",
						"high",
						"critical",
					]
				}
				web: {
					description: [
						"Web filtering threat weight settings.",
					]
					type: "list"
					suboptions: {
						category: {
							description: [
								"Threat weight score for web category filtering matches.",
							]
							type: "int"
						}
						id: {
							description: [
								"Entry ID.",
							]
							required: true
							type:     "int"
						}
						level: {
							description: [
								"Threat weight score for web category filtering matches.",
							]
							type: "str"
							choices: [
								"disable",
								"low",
								"medium",
								"high",
								"critical",
							]
						}
					}
				}
			}
		}
	}
}
