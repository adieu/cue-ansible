package ansible

module: fortios_dnsfilter_profile: {
	module:            "fortios_dnsfilter_profile"
	short_description: "Configure DNS domain filter profiles in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify dnsfilter feature and profile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		dnsfilter_profile: {
			description: [
				"Configure DNS domain filter profiles.",
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
				block_action: {
					description: [
						"Action to take for blocked domains.",
					]
					type: "str"
					choices: [
						"block",
						"redirect",
					]
				}
				block_botnet: {
					description: [
						"Enable/disable blocking botnet C&C DNS lookups.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				comment: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				domain_filter: {
					description: [
						"Domain filter settings.",
					]
					type: "dict"
					suboptions: domain_filter_table: {
						description: [
							"DNS domain filter table ID. Source dnsfilter.domain-filter.id.",
						]
						type: "int"
					}
				}
				external_ip_blocklist: {
					description: [
						"One or more external IP block lists.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"External domain block list name. Source system.external-resource.name.",
						]
						required: true
						type:     "str"
					}
				}
				ftgd_dns: {
					description: [
						"FortiGuard DNS Filter settings.",
					]
					type: "dict"
					suboptions: {
						filters: {
							description: [
								"FortiGuard DNS domain filters.",
							]
							type: "list"
							suboptions: {
								action: {
									description: [
										"Action to take for DNS requests matching the category.",
									]
									type: "str"
									choices: [
										"block",
										"monitor",
									]
								}
								category: {
									description: [
										"Category number.",
									]
									type: "int"
								}
								id: {
									description: [
										"ID number.",
									]
									required: true
									type:     "int"
								}
								log: {
									description: [
										"Enable/disable DNS filter logging for this DNS profile.",
									]
									type: "str"
									choices: [
										"enable",
										"disable",
									]
								}
							}
						}
						options: {
							description: [
								"FortiGuard DNS filter options.",
							]
							type: "str"
							choices: [
								"error-allow",
								"ftgd-disable",
							]
						}
					}
				}
				log_all_domain: {
					description: [
						"Enable/disable logging of all domains visited (detailed DNS logging).",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				name: {
					description: [
						"Profile name.",
					]
					required: true
					type:     "str"
				}
				redirect_portal: {
					description: [
						"IP address of the SDNS redirect portal.",
					]
					type: "str"
				}
				safe_search: {
					description: [
						"Enable/disable Google, Bing, and YouTube safe search.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				sdns_domain_log: {
					description: [
						"Enable/disable domain filtering and botnet domain logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				sdns_ftgd_err_log: {
					description: [
						"Enable/disable FortiGuard SDNS rating error logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				youtube_restrict: {
					description: [
						"Set safe search for YouTube restriction level.",
					]
					type: "str"
					choices: [
						"strict",
						"moderate",
					]
				}
			}
		}
	}
}
