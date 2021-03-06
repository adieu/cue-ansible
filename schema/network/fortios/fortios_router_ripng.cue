package ansible

module: fortios_router_ripng: {
	module:            "fortios_router_ripng"
	short_description: "Configure RIPng in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify router feature and ripng category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		router_ripng: {
			description: [
				"Configure RIPng.",
			]
			default: null
			type:    "dict"
			suboptions: {
				aggregate_address: {
					description: [
						"Aggregate address.",
					]
					type: "list"
					suboptions: {
						id: {
							description: [
								"Aggregate address entry ID.",
							]
							required: true
							type:     "int"
						}
						prefix6: {
							description: [
								"Aggregate address prefix.",
							]
							type: "str"
						}
					}
				}
				default_information_originate: {
					description: [
						"Enable/disable generation of default route.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				default_metric: {
					description: [
						"Metric that the FortiGate unit advertises to adjacent routers.",
					]
					type: "int"
				}
				distance: {
					description: [
						"Administrative distance",
					]
					type: "list"
					suboptions: {
						access_list6: {
							description: [
								"Access list for route destination. Source router.access-list6.name.",
							]
							type: "str"
						}
						distance: {
							description: [
								"Distance (1 - 255).",
							]
							type: "int"
						}
						id: {
							description: [
								"Distance ID.",
							]
							required: true
							type:     "int"
						}
						prefix6: {
							description: [
								"Distance prefix6.",
							]
							type: "str"
						}
					}
				}
				distribute_list: {
					description: [
						"Use this to filter incoming or outgoing updates using an access list or a prefix list.",
					]
					type: "list"
					suboptions: {
						direction: {
							description: [
								"Distribute list direction.",
							]
							type: "str"
							choices: [
								"in",
								"out",
							]
						}
						id: {
							description: [
								"Distribute list ID.",
							]
							required: true
							type:     "int"
						}
						interface: {
							description: [
								"Distribute list interface name. Source system.interface.name.",
							]
							type: "str"
						}
						listname: {
							description: [
								"Distribute access/prefix list name. Source router.access-list6.name router.prefix-list6.name.",
							]
							type: "str"
						}
						status: {
							description: [
								"Use this to activate or deactivate",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				garbage_timer: {
					description: [
						"Time in seconds that must elapse after the timeout interval for a route expires,.",
					]
					type: "int"
				}
				interface: {
					description: [
						"RIPng interface configuration.",
					]
					type: "list"
					suboptions: {
						flags: {
							description: [
								"Configuration flags of the interface.",
							]
							type: "int"
						}
						name: {
							description: [
								"Interface name. Source system.interface.name.",
							]
							required: true
							type:     "str"
						}
						split_horizon: {
							description: [
								"Configure RIP to use either regular or poisoned split horizon on this interface.",
							]
							type: "str"
							choices: [
								"poisoned",
								"regular",
							]
						}
						split_horizon_status: {
							description: [
								"Enable/disable split horizon.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				max_out_metric: {
					description: [
						"Maximum metric allowed to output(0 means 'not set').",
					]
					type: "int"
				}
				neighbor: {
					description: [
						"List of neighbors.",
					]
					type: "list"
					suboptions: {
						id: {
							description: [
								"Neighbor entry ID.",
							]
							required: true
							type:     "int"
						}
						interface: {
							description: [
								"Interface name. Source system.interface.name.",
							]
							type: "str"
						}
						ip6: {
							description: [
								"IPv6 link-local address.",
							]
							type: "str"
						}
					}
				}
				network: {
					description: [
						"list of networks connected.",
					]
					type: "list"
					suboptions: {
						id: {
							description: [
								"Network entry ID.",
							]
							required: true
							type:     "int"
						}
						prefix: {
							description: [
								"Network IPv6 link-local prefix.",
							]
							type: "str"
						}
					}
				}
				offset_list: {
					description: [
						"Adds the specified offset to the metric (hop count) of a route.",
					]
					type: "list"
					suboptions: {
						access_list6: {
							description: [
								"IPv6 access list name. Source router.access-list6.name.",
							]
							type: "str"
						}
						direction: {
							description: [
								"Offset list direction.",
							]
							type: "str"
							choices: [
								"in",
								"out",
							]
						}
						id: {
							description: [
								"Offset-list ID.",
							]
							required: true
							type:     "int"
						}
						interface: {
							description: [
								"Interface name. Source system.interface.name.",
							]
							type: "str"
						}
						offset: {
							description: [
								"Offset range",
							]
							type: "int"
						}
						status: {
							description: [
								"Indicates if the offset is active or not",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
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
								"Indicates if the redistribute is active or not",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				timeout_timer: {
					description: [
						"Time interval in seconds after which a route is declared unreachable.",
					]
					type: "int"
				}
				update_timer: {
					description: [
						"The time interval in seconds between RIP updates.",
					]
					type: "int"
				}
			}
		}
	}
}
