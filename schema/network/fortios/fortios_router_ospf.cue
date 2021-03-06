package ansible

module: fortios_router_ospf: {
	module:            "fortios_router_ospf"
	short_description: "Configure OSPF in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify router feature and ospf category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		router_ospf: {
			description: [
				"Configure OSPF.",
			]
			default: null
			type:    "dict"
			suboptions: {
				abr_type: {
					description: [
						"Area border router type.",
					]
					type: "str"
					choices: [
						"cisco",
						"ibm",
						"shortcut",
						"standard",
					]
				}
				area: {
					description: [
						"OSPF area configuration.",
					]
					type: "list"
					suboptions: {
						authentication: {
							description: [
								"Authentication type.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"md5",
							]
						}
						default_cost: {
							description: [
								"Summary default cost of stub or NSSA area.",
							]
							type: "int"
						}
						filter_list: {
							description: [
								"OSPF area filter-list configuration.",
							]
							type: "list"
							suboptions: {
								direction: {
									description: [
										"Direction.",
									]
									type: "str"
									choices: [
										"in",
										"out",
									]
								}
								id: {
									description: [
										"Filter list entry ID.",
									]
									required: true
									type:     "int"
								}
								list: {
									description: [
										"Access-list or prefix-list name. Source router.access-list.name router.prefix-list.name.",
									]
									type: "str"
								}
							}
						}
						id: {
							description: [
								"Area entry IP address.",
							]
							required: true
							type:     "str"
						}
						nssa_default_information_originate: {
							description: [
								"Redistribute, advertise, or do not originate Type-7 default route into NSSA area.",
							]
							type: "str"
							choices: [
								"enable",
								"always",
								"disable",
							]
						}
						nssa_default_information_originate_metric: {
							description: [
								"OSPF default metric.",
							]
							type: "int"
						}
						nssa_default_information_originate_metric_type: {
							description: [
								"OSPF metric type for default routes.",
							]
							type: "str"
							choices: [
								1,
								2,
							]
						}
						nssa_redistribution: {
							description: [
								"Enable/disable redistribute into NSSA area.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						nssa_translator_role: {
							description: [
								"NSSA translator role type.",
							]
							type: "str"
							choices: [
								"candidate",
								"never",
								"always",
							]
						}
						range: {
							description: [
								"OSPF area range configuration.",
							]
							type: "list"
							suboptions: {
								advertise: {
									description: [
										"Enable/disable advertise status.",
									]
									type: "str"
									choices: [
										"disable",
										"enable",
									]
								}
								id: {
									description: [
										"Range entry ID.",
									]
									required: true
									type:     "int"
								}
								prefix: {
									description: [
										"Prefix.",
									]
									type: "str"
								}
								substitute: {
									description: [
										"Substitute prefix.",
									]
									type: "str"
								}
								substitute_status: {
									description: [
										"Enable/disable substitute status.",
									]
									type: "str"
									choices: [
										"enable",
										"disable",
									]
								}
							}
						}
						shortcut: {
							description: [
								"Enable/disable shortcut option.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
								"default",
							]
						}
						stub_type: {
							description: [
								"Stub summary setting.",
							]
							type: "str"
							choices: [
								"no-summary",
								"summary",
							]
						}
						type: {
							description: [
								"Area type setting.",
							]
							type: "str"
							choices: [
								"regular",
								"nssa",
								"stub",
							]
						}
						virtual_link: {
							description: [
								"OSPF virtual link configuration.",
							]
							type: "list"
							suboptions: {
								authentication: {
									description: [
										"Authentication type.",
									]
									type: "str"
									choices: [
										"none",
										"text",
										"md5",
									]
								}
								authentication_key: {
									description: [
										"Authentication key.",
									]
									type: "str"
								}
								dead_interval: {
									description: [
										"Dead interval.",
									]
									type: "int"
								}
								hello_interval: {
									description: [
										"Hello interval.",
									]
									type: "int"
								}
								md5_key: {
									description: [
										"MD5 key.",
									]
									type: "str"
								}
								name: {
									description: [
										"Virtual link entry name.",
									]
									required: true
									type:     "str"
								}
								peer: {
									description: [
										"Peer IP.",
									]
									type: "str"
								}
								retransmit_interval: {
									description: [
										"Retransmit interval.",
									]
									type: "int"
								}
								transmit_delay: {
									description: [
										"Transmit delay.",
									]
									type: "int"
								}
							}
						}
					}
				}
				auto_cost_ref_bandwidth: {
					description: [
						"Reference bandwidth in terms of megabits per second.",
					]
					type: "int"
				}
				bfd: {
					description: [
						"Bidirectional Forwarding Detection (BFD).",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				database_overflow: {
					description: [
						"Enable/disable database overflow.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				database_overflow_max_lsas: {
					description: [
						"Database overflow maximum LSAs.",
					]
					type: "int"
				}
				database_overflow_time_to_recover: {
					description: [
						"Database overflow time to recover (sec).",
					]
					type: "int"
				}
				default_information_metric: {
					description: [
						"Default information metric.",
					]
					type: "int"
				}
				default_information_metric_type: {
					description: [
						"Default information metric type.",
					]
					type: "str"
					choices: [
						1,
						2,
					]
				}
				default_information_originate: {
					description: [
						"Enable/disable generation of default route.",
					]
					type: "str"
					choices: [
						"enable",
						"always",
						"disable",
					]
				}
				default_information_route_map: {
					description: [
						"Default information route map. Source router.route-map.name.",
					]
					type: "str"
				}
				default_metric: {
					description: [
						"Default metric of redistribute routes.",
					]
					type: "int"
				}
				distance: {
					description: [
						"Distance of the route.",
					]
					type: "int"
				}
				distance_external: {
					description: [
						"Administrative external distance.",
					]
					type: "int"
				}
				distance_inter_area: {
					description: [
						"Administrative inter-area distance.",
					]
					type: "int"
				}
				distance_intra_area: {
					description: [
						"Administrative intra-area distance.",
					]
					type: "int"
				}
				distribute_list: {
					description: [
						"Distribute list configuration.",
					]
					type: "list"
					suboptions: {
						access_list: {
							description: [
								"Access list name. Source router.access-list.name.",
							]
							type: "str"
						}
						id: {
							description: [
								"Distribute list entry ID.",
							]
							required: true
							type:     "int"
						}
						protocol: {
							description: [
								"Protocol type.",
							]
							type: "str"
							choices: [
								"connected",
								"static",
								"rip",
							]
						}
					}
				}
				distribute_list_in: {
					description: [
						"Filter incoming routes. Source router.access-list.name router.prefix-list.name.",
					]
					type: "str"
				}
				distribute_route_map_in: {
					description: [
						"Filter incoming external routes by route-map. Source router.route-map.name.",
					]
					type: "str"
				}
				log_neighbour_changes: {
					description: [
						"Enable logging of OSPF neighbour's changes",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				neighbor: {
					description: [
						"OSPF neighbor configuration are used when OSPF runs on non-broadcast media",
					]
					type: "list"
					suboptions: {
						cost: {
							description: [
								"Cost of the interface, value range from 0 to 65535, 0 means auto-cost.",
							]
							type: "int"
						}
						id: {
							description: [
								"Neighbor entry ID.",
							]
							required: true
							type:     "int"
						}
						ip: {
							description: [
								"Interface IP address of the neighbor.",
							]
							type: "str"
						}
						poll_interval: {
							description: [
								"Poll interval time in seconds.",
							]
							type: "int"
						}
						priority: {
							description: [
								"Priority.",
							]
							type: "int"
						}
					}
				}
				network: {
					description: [
						"OSPF network configuration.",
					]
					type: "list"
					suboptions: {
						area: {
							description: [
								"Attach the network to area.",
							]
							type: "str"
						}
						id: {
							description: [
								"Network entry ID.",
							]
							required: true
							type:     "int"
						}
						prefix: {
							description: [
								"Prefix.",
							]
							type: "str"
						}
					}
				}
				ospf_interface: {
					description: [
						"OSPF interface configuration.",
					]
					type: "list"
					suboptions: {
						authentication: {
							description: [
								"Authentication type.",
							]
							type: "str"
							choices: [
								"none",
								"text",
								"md5",
							]
						}
						authentication_key: {
							description: [
								"Authentication key.",
							]
							type: "str"
						}
						bfd: {
							description: [
								"Bidirectional Forwarding Detection (BFD).",
							]
							type: "str"
							choices: [
								"global",
								"enable",
								"disable",
							]
						}
						cost: {
							description: [
								"Cost of the interface, value range from 0 to 65535, 0 means auto-cost.",
							]
							type: "int"
						}
						database_filter_out: {
							description: [
								"Enable/disable control of flooding out LSAs.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						dead_interval: {
							description: [
								"Dead interval.",
							]
							type: "int"
						}
						hello_interval: {
							description: [
								"Hello interval.",
							]
							type: "int"
						}
						hello_multiplier: {
							description: [
								"Number of hello packets within dead interval.",
							]
							type: "int"
						}
						interface: {
							description: [
								"Configuration interface name. Source system.interface.name.",
							]
							type: "str"
						}
						ip: {
							description: [
								"IP address.",
							]
							type: "str"
						}
						md5_key: {
							description: [
								"MD5 key.",
							]
							type: "str"
						}
						mtu: {
							description: [
								"MTU for database description packets.",
							]
							type: "int"
						}
						mtu_ignore: {
							description: [
								"Enable/disable ignore MTU.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						name: {
							description: [
								"Interface entry name.",
							]
							required: true
							type:     "str"
						}
						network_type: {
							description: [
								"Network type.",
							]
							type: "str"
							choices: [
								"broadcast",
								"non-broadcast",
								"point-to-point",
								"point-to-multipoint",
								"point-to-multipoint-non-broadcast",
							]
						}
						prefix_length: {
							description: [
								"Prefix length.",
							]
							type: "int"
						}
						priority: {
							description: [
								"Priority.",
							]
							type: "int"
						}
						resync_timeout: {
							description: [
								"Graceful restart neighbor resynchronization timeout.",
							]
							type: "int"
						}
						retransmit_interval: {
							description: [
								"Retransmit interval.",
							]
							type: "int"
						}
						status: {
							description: [
								"Enable/disable status.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						transmit_delay: {
							description: [
								"Transmit delay.",
							]
							type: "int"
						}
					}
				}
				passive_interface: {
					description: [
						"Passive interface configuration.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Passive interface name. Source system.interface.name.",
						]
						required: true
						type:     "str"
					}
				}
				redistribute: {
					description: [
						"Redistribute configuration.",
					]
					type: "list"
					suboptions: {
						metric: {
							description: [
								"Redistribute metric setting.",
							]
							type: "int"
						}
						metric_type: {
							description: [
								"Metric type.",
							]
							type: "str"
							choices: [
								1,
								2,
							]
						}
						name: {
							description: [
								"Redistribute name.",
							]
							required: true
							type:     "str"
						}
						routemap: {
							description: [
								"Route map name. Source router.route-map.name.",
							]
							type: "str"
						}
						status: {
							description: [
								"status",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						tag: {
							description: [
								"Tag value.",
							]
							type: "int"
						}
					}
				}
				restart_mode: {
					description: [
						"OSPF restart mode (graceful or LLS).",
					]
					type: "str"
					choices: [
						"none",
						"lls",
						"graceful-restart",
					]
				}
				restart_period: {
					description: [
						"Graceful restart period.",
					]
					type: "int"
				}
				rfc1583_compatible: {
					description: [
						"Enable/disable RFC1583 compatibility.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				router_id: {
					description: [
						"Router ID.",
					]
					type: "str"
				}
				spf_timers: {
					description: [
						"SPF calculation frequency.",
					]
					type: "str"
				}
				summary_address: {
					description: [
						"IP address summary configuration.",
					]
					type: "list"
					suboptions: {
						advertise: {
							description: [
								"Enable/disable advertise status.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						id: {
							description: [
								"Summary address entry ID.",
							]
							required: true
							type:     "int"
						}
						prefix: {
							description: [
								"Prefix.",
							]
							type: "str"
						}
						tag: {
							description: [
								"Tag value.",
							]
							type: "int"
						}
					}
				}
			}
		}
	}
}
