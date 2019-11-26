package ansible

module: fortios_wanopt_content_delivery_network_rule: {
	module:            "fortios_wanopt_content_delivery_network_rule"
	short_description: "Configure WAN optimization content delivery network rules in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wanopt feature and content_delivery_network_rule category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wanopt_content_delivery_network_rule: {
			description: [
				"Configure WAN optimization content delivery network rules.",
			]
			default: null
			type:    "dict"
			suboptions: {
				category: {
					description: [
						"Content delivery network rule category.",
					]
					type: "str"
					choices: [
						"vcache",
						"youtube",
					]
				}
				comment: {
					description: [
						"Comment about this CDN-rule.",
					]
					type: "str"
				}
				host_domain_name_suffix: {
					description: [
						"Suffix portion of the fully qualified domain name (eg. fortinet.com in \"www.fortinet.com\").",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Suffix portion of the fully qualified domain name.",
						]
						required: true
						type:     "str"
					}
				}
				name: {
					description: [
						"Name of table.",
					]
					required: true
					type:     "str"
				}
				request_cache_control: {
					description: [
						"Enable/disable HTTP request cache control.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				response_cache_control: {
					description: [
						"Enable/disable HTTP response cache control.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				response_expires: {
					description: [
						"Enable/disable HTTP response cache expires.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				rules: {
					description: [
						"WAN optimization content delivery network rule entries.",
					]
					type: "list"
					suboptions: {
						content_id: {
							description: [
								"Content ID settings.",
							]
							type: "dict"
							suboptions: {
								end_direction: {
									description: [
										"Search direction from end-str match.",
									]
									type: "str"
									choices: [
										"forward",
										"backward",
									]
								}
								end_skip: {
									description: [
										"Number of characters in URL to skip after end-str has been matched.",
									]
									type: "int"
								}
								end_str: {
									description: [
										"String from which to end search.",
									]
									type: "str"
								}
								range_str: {
									description: [
										"Name of content ID within the start string and end string.",
									]
									type: "str"
								}
								start_direction: {
									description: [
										"Search direction from start-str match.",
									]
									type: "str"
									choices: [
										"forward",
										"backward",
									]
								}
								start_skip: {
									description: [
										"Number of characters in URL to skip after start-str has been matched.",
									]
									type: "int"
								}
								start_str: {
									description: [
										"String from which to start search.",
									]
									type: "str"
								}
								target: {
									description: [
										"Option in HTTP header or URL parameter to match.",
									]
									type: "str"
									choices: [
										"path",
										"parameter",
										"referrer",
										"youtube-map",
										"youtube-id",
										"youku-id",
										"hls-manifest",
										"dash-manifest",
										"hls-fragment",
										"dash-fragment",
									]
								}
							}
						}
						match_entries: {
							description: [
								"List of entries to match.",
							]
							type: "list"
							suboptions: {
								id: {
									description: [
										"Rule ID.",
									]
									required: true
									type:     "int"
								}
								pattern: {
									description: [
										"Pattern string for matching target (Referrer or URL pattern, eg. \"a\", \"a*c\", \"*a*\", \"a*c*e\", and \"*\").",
									]
									type: "list"
									suboptions: string: {
										description: [
											"Pattern strings.",
										]
										required: true
										type:     "str"
									}
								}
								target: {
									description: [
										"Option in HTTP header or URL parameter to match.",
									]
									type: "str"
									choices: [
										"path",
										"parameter",
										"referrer",
										"youtube-map",
										"youtube-id",
										"youku-id",
									]
								}
							}
						}
						match_mode: {
							description: [
								"Match criteria for collecting content ID.",
							]
							type: "str"
							choices: [
								"all",
								"any",
							]
						}
						name: {
							description: [
								"WAN optimization content delivery network rule name.",
							]
							required: true
							type:     "str"
						}
						skip_entries: {
							description: [
								"List of entries to skip.",
							]
							type: "list"
							suboptions: {
								id: {
									description: [
										"Rule ID.",
									]
									required: true
									type:     "int"
								}
								pattern: {
									description: [
										"Pattern string for matching target (Referrer or URL pattern, eg. \"a\", \"a*c\", \"*a*\", \"a*c*e\", and \"*\").",
									]
									type: "list"
									suboptions: string: {
										description: [
											"Pattern strings.",
										]
										required: true
										type:     "str"
									}
								}
								target: {
									description: [
										"Option in HTTP header or URL parameter to match.",
									]
									type: "str"
									choices: [
										"path",
										"parameter",
										"referrer",
										"youtube-map",
										"youtube-id",
										"youku-id",
									]
								}
							}
						}
						skip_rule_mode: {
							description: [
								"Skip mode when evaluating skip-rules.",
							]
							type: "str"
							choices: [
								"all",
								"any",
							]
						}
					}
				}
				status: {
					description: [
						"Enable/disable WAN optimization content delivery network rules.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				text_response_vcache: {
					description: [
						"Enable/disable caching of text responses.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				updateserver: {
					description: [
						"Enable/disable update server.",
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
