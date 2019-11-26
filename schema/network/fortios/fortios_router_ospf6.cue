package ansible

module: fortios_router_ospf6: {
	module:            "fortios_router_ospf6"
	short_description: "Configure IPv6 OSPF in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify router feature and ospf6 category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		router_ospf6: {
			description: [
				"Configure IPv6 OSPF.",
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
						"standard",
					]
				}
				area: {
					description: [
						"OSPF6 area configuration.",
					]
					type: "list"
					suboptions: {
						default_cost: {
							description: [
								"Summary default cost of stub or NSSA area.",
							]
							type: "int"
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
								"Enable/disable originate type 7 default into NSSA area.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						nssa_default_information_originate_metric: {
							description: [
								"OSPFv3 default metric.",
							]
							type: "int"
						}
						nssa_default_information_originate_metric_type: {
							description: [
								"OSPFv3 metric type for default routes.",
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
								"OSPF6 area range configuration.",
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
								prefix6: {
									description: [
										"IPv6 prefix.",
									]
									type: "str"
								}
							}
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
								"OSPF6 virtual link configuration.",
							]
							type: "list"
							suboptions: {
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
								name: {
									description: [
										"Virtual link entry name.",
									]
									required: true
									type:     "str"
								}
								peer: {
									description: [
										"A.B.C.D, peer router ID.",
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
						"Enable/disable Bidirectional Forwarding Detection (BFD).",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
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
				log_neighbour_changes: {
					description: [
						"Enable logging of OSPFv3 neighbour's changes",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ospf6_interface: {
					description: [
						"OSPF6 interface configuration.",
					]
					type: "list"
					suboptions: {
						area_id: {
							description: [
								"A.B.C.D, in IPv4 address format.",
							]
							type: "str"
						}
						bfd: {
							description: [
								"Enable/disable Bidirectional Forwarding Detection (BFD).",
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
						interface: {
							description: [
								"Configuration interface name. Source system.interface.name.",
							]
							type: "str"
						}
						mtu: {
							description: [
								"MTU for OSPFv3 packets.",
							]
							type: "int"
						}
						mtu_ignore: {
							description: [
								"Enable/disable ignoring MTU field in DBD packets.",
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
						neighbor: {
							description: [
								"OSPFv3 neighbors are used when OSPFv3 runs on non-broadcast media",
							]
							type: "list"
							suboptions: {
								cost: {
									description: [
										"Cost of the interface, value range from 0 to 65535, 0 means auto-cost.",
									]
									type: "int"
								}
								ip6: {
									description: [
										"IPv6 link local address of the neighbor.",
									]
									required: true
									type:     "str"
								}
								poll_interval: {
									description: [
										"Poll interval time in seconds.",
									]
									type: "int"
								}
								priority: {
									description: [
										"priority",
									]
									type: "int"
								}
							}
						}
						network_type: {
							description: [
								"Network type.",
							]
							type: "str"
							choices: [
								"broadcast",
								"point-to-point",
								"non-broadcast",
								"point-to-multipoint",
								"point-to-multipoint-non-broadcast",
							]
						}
						priority: {
							description: [
								"priority",
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
								"Enable/disable OSPF6 routing on this interface.",
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
					}
				}
				router_id: {
					description: [
						"A.B.C.D, in IPv4 address format.",
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
						"IPv6 address summary configuration.",
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
						prefix6: {
							description: [
								"IPv6 prefix.",
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
