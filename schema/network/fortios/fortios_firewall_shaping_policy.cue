package ansible

module: fortios_firewall_shaping_policy: {
	module:            "fortios_firewall_shaping_policy"
	short_description: "Configure shaping policies in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and shaping_policy category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_shaping_policy: {
			description: [
				"Configure shaping policies.",
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
				app_category: {
					description: [
						"IDs of one or more application categories that this shaper applies application control traffic shaping to.",
					]
					type: "list"
					suboptions: id: {
						description: [
							"Category IDs.",
						]
						required: true
						type:     "int"
					}
				}
				application: {
					description: [
						"IDs of one or more applications that this shaper applies application control traffic shaping to.",
					]
					type: "list"
					suboptions: id: {
						description: [
							"Application IDs.",
						]
						required: true
						type:     "int"
					}
				}
				class_id: {
					description: [
						"Traffic class ID.",
					]
					type: "int"
				}
				comment: {
					description: [
						"Comments.",
					]
					type: "str"
				}
				dstaddr: {
					description: [
						"IPv4 destination address and address group names.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address.name firewall.addrgrp.name.",
						]
						required: true
						type:     "str"
					}
				}
				dstaddr6: {
					description: [
						"IPv6 destination address and address group names.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address6.name firewall.addrgrp6.name.",
						]
						required: true
						type:     "str"
					}
				}
				dstintf: {
					description: [
						"One or more outgoing (egress) interfaces.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Interface name. Source system.interface.name system.zone.name.",
						]
						required: true
						type:     "str"
					}
				}
				groups: {
					description: [
						"Apply this traffic shaping policy to user groups that have authenticated with the FortiGate.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Group name. Source user.group.name.",
						]
						required: true
						type:     "str"
					}
				}
				id: {
					description: [
						"Shaping policy ID.",
					]
					required: true
					type:     "int"
				}
				internet_service: {
					description: [
						"Enable/disable use of Internet Services for this policy. If enabled, destination address and service are not used.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				internet_service_custom: {
					description: [
						"Custom Internet Service name.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Custom Internet Service name. Source firewall.internet-service-custom.name.",
						]
						required: true
						type:     "str"
					}
				}
				internet_service_id: {
					description: [
						"Internet Service ID.",
					]
					type: "list"
					suboptions: id: {
						description: [
							"Internet Service ID. Source firewall.internet-service.id.",
						]
						required: true
						type:     "int"
					}
				}
				internet_service_src: {
					description: [
						"Enable/disable use of Internet Services in source for this policy. If enabled, source address is not used.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				internet_service_src_custom: {
					description: [
						"Custom Internet Service source name.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Custom Internet Service name. Source firewall.internet-service-custom.name.",
						]
						required: true
						type:     "str"
					}
				}
				internet_service_src_id: {
					description: [
						"Internet Service source ID.",
					]
					type: "list"
					suboptions: id: {
						description: [
							"Internet Service ID. Source firewall.internet-service.id.",
						]
						required: true
						type:     "int"
					}
				}
				ip_version: {
					description: [
						"Apply this traffic shaping policy to IPv4 or IPv6 traffic.",
					]
					type: "str"
					choices: [
						4,
						6,
					]
				}
				per_ip_shaper: {
					description: [
						"Per-IP traffic shaper to apply with this policy. Source firewall.shaper.per-ip-shaper.name.",
					]
					type: "str"
				}
				schedule: {
					description: [
						"Schedule name. Source firewall.schedule.onetime.name firewall.schedule.recurring.name firewall.schedule.group.name.",
					]
					type: "str"
				}
				service: {
					description: [
						"Service and service group names.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Service name. Source firewall.service.custom.name firewall.service.group.name.",
						]
						required: true
						type:     "str"
					}
				}
				srcaddr: {
					description: [
						"IPv4 source address and address group names.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address.name firewall.addrgrp.name.",
						]
						required: true
						type:     "str"
					}
				}
				srcaddr6: {
					description: [
						"IPv6 source address and address group names.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address6.name firewall.addrgrp6.name.",
						]
						required: true
						type:     "str"
					}
				}
				status: {
					description: [
						"Enable/disable this traffic shaping policy.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				traffic_shaper: {
					description: [
						"Traffic shaper to apply to traffic forwarded by the firewall policy. Source firewall.shaper.traffic-shaper.name.",
					]
					type: "str"
				}
				traffic_shaper_reverse: {
					description: [
						"Traffic shaper to apply to response traffic received by the firewall policy. Source firewall.shaper.traffic-shaper.name.",
					]
					type: "str"
				}
				url_category: {
					description: [
						"IDs of one or more FortiGuard Web Filtering categories that this shaper applies traffic shaping to.",
					]
					type: "list"
					suboptions: id: {
						description: [
							"URL category ID.",
						]
						required: true
						type:     "int"
					}
				}
				users: {
					description: [
						"Apply this traffic shaping policy to individual users that have authenticated with the FortiGate.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"User name. Source user.local.name.",
						]
						required: true
						type:     "str"
					}
				}
			}
		}
	}
}
