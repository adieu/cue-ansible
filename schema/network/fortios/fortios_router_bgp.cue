package ansible

module: fortios_router_bgp: {
	module:            "fortios_router_bgp"
	short_description: "Configure BGP in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify router feature and bgp category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		router_bgp: {
			description: [
				"Configure BGP.",
			]
			default: null
			type:    "dict"
			suboptions: {
				admin_distance: {
					description: [
						"Administrative distance modifications.",
					]
					type: "list"
					suboptions: {
						distance: {
							description: [
								"Administrative distance to apply (1 - 255).",
							]
							type: "int"
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						neighbour_prefix: {
							description: [
								"Neighbor address prefix.",
							]
							type: "str"
						}
						route_list: {
							description: [
								"Access list of routes to apply new distance to. Source router.access-list.name.",
							]
							type: "str"
						}
					}
				}
				aggregate_address: {
					description: [
						"BGP aggregate address table.",
					]
					type: "list"
					suboptions: {
						as_set: {
							description: [
								"Enable/disable generate AS set path information.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						prefix: {
							description: [
								"Aggregate prefix.",
							]
							type: "str"
						}
						summary_only: {
							description: [
								"Enable/disable filter more specific routes from updates.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				aggregate_address6: {
					description: [
						"BGP IPv6 aggregate address table.",
					]
					type: "list"
					suboptions: {
						as_set: {
							description: [
								"Enable/disable generate AS set path information.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						prefix6: {
							description: [
								"Aggregate IPv6 prefix.",
							]
							type: "str"
						}
						summary_only: {
							description: [
								"Enable/disable filter more specific routes from updates.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				always_compare_med: {
					description: [
						"Enable/disable always compare MED.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				as: {
					description: [
						"Router AS number, valid from 1 to 4294967295, 0 to disable BGP.",
					]
					type: "int"
				}
				bestpath_as_path_ignore: {
					description: [
						"Enable/disable ignore AS path.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				bestpath_cmp_confed_aspath: {
					description: [
						"Enable/disable compare federation AS path length.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				bestpath_cmp_routerid: {
					description: [
						"Enable/disable compare router ID for identical EBGP paths.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				bestpath_med_confed: {
					description: [
						"Enable/disable compare MED among confederation paths.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				bestpath_med_missing_as_worst: {
					description: [
						"Enable/disable treat missing MED as least preferred.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				client_to_client_reflection: {
					description: [
						"Enable/disable client-to-client route reflection.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				cluster_id: {
					description: [
						"Route reflector cluster ID.",
					]
					type: "str"
				}
				confederation_identifier: {
					description: [
						"Confederation identifier.",
					]
					type: "int"
				}
				confederation_peers: {
					description: [
						"Confederation peers.",
					]
					type: "list"
					suboptions: peer: {
						description: [
							"Peer ID.",
						]
						required: true
						type:     "str"
					}
				}
				dampening: {
					description: [
						"Enable/disable route-flap dampening.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				dampening_max_suppress_time: {
					description: [
						"Maximum minutes a route can be suppressed.",
					]
					type: "int"
				}
				dampening_reachability_half_life: {
					description: [
						"Reachability half-life time for penalty (min).",
					]
					type: "int"
				}
				dampening_reuse: {
					description: [
						"Threshold to reuse routes.",
					]
					type: "int"
				}
				dampening_route_map: {
					description: [
						"Criteria for dampening. Source router.route-map.name.",
					]
					type: "str"
				}
				dampening_suppress: {
					description: [
						"Threshold to suppress routes.",
					]
					type: "int"
				}
				dampening_unreachability_half_life: {
					description: [
						"Unreachability half-life time for penalty (min).",
					]
					type: "int"
				}
				default_local_preference: {
					description: [
						"Default local preference.",
					]
					type: "int"
				}
				deterministic_med: {
					description: [
						"Enable/disable enforce deterministic comparison of MED.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				distance_external: {
					description: [
						"Distance for routes external to the AS.",
					]
					type: "int"
				}
				distance_internal: {
					description: [
						"Distance for routes internal to the AS.",
					]
					type: "int"
				}
				distance_local: {
					description: [
						"Distance for routes local to the AS.",
					]
					type: "int"
				}
				ebgp_multipath: {
					description: [
						"Enable/disable EBGP multi-path.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				enforce_first_as: {
					description: [
						"Enable/disable enforce first AS for EBGP routes.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				fast_external_failover: {
					description: [
						"Enable/disable reset peer BGP session if link goes down.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				graceful_end_on_timer: {
					description: [
						"Enable/disable to exit graceful restart on timer only.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				graceful_restart: {
					description: [
						"Enable/disable BGP graceful restart capabilities.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				graceful_restart_time: {
					description: [
						"Time needed for neighbors to restart (sec).",
					]
					type: "int"
				}
				graceful_stalepath_time: {
					description: [
						"Time to hold stale paths of restarting neighbor (sec).",
					]
					type: "int"
				}
				graceful_update_delay: {
					description: [
						"Route advertisement/selection delay after restart (sec).",
					]
					type: "int"
				}
				holdtime_timer: {
					description: [
						"Number of seconds to mark peer as dead.",
					]
					type: "int"
				}
				ibgp_multipath: {
					description: [
						"Enable/disable IBGP multi-path.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ignore_optional_capability: {
					description: [
						"Don't send unknown optional capability notification message",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				keepalive_timer: {
					description: [
						"Frequency to send keep alive requests.",
					]
					type: "int"
				}
				log_neighbour_changes: {
					description: [
						"Enable logging of BGP neighbour's changes",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				neighbor: {
					description: [
						"BGP neighbor table.",
					]
					type: "list"
					suboptions: {
						activate: {
							description: [
								"Enable/disable address family IPv4 for this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						activate6: {
							description: [
								"Enable/disable address family IPv6 for this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						advertisement_interval: {
							description: [
								"Minimum interval (sec) between sending updates.",
							]
							type: "int"
						}
						allowas_in: {
							description: [
								"IPv4 The maximum number of occurrence of my AS number allowed.",
							]
							type: "int"
						}
						allowas_in_enable: {
							description: [
								"Enable/disable IPv4 Enable to allow my AS in AS path.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						allowas_in_enable6: {
							description: [
								"Enable/disable IPv6 Enable to allow my AS in AS path.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						allowas_in6: {
							description: [
								"IPv6 The maximum number of occurrence of my AS number allowed.",
							]
							type: "int"
						}
						as_override: {
							description: [
								"Enable/disable replace peer AS with own AS for IPv4.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						as_override6: {
							description: [
								"Enable/disable replace peer AS with own AS for IPv6.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						attribute_unchanged: {
							description: [
								"IPv4 List of attributes that should be unchanged.",
							]
							type: "str"
							choices: [
								"as-path",
								"med",
								"next-hop",
							]
						}
						attribute_unchanged6: {
							description: [
								"IPv6 List of attributes that should be unchanged.",
							]
							type: "str"
							choices: [
								"as-path",
								"med",
								"next-hop",
							]
						}
						bfd: {
							description: [
								"Enable/disable BFD for this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						capability_default_originate: {
							description: [
								"Enable/disable advertise default IPv4 route to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						capability_default_originate6: {
							description: [
								"Enable/disable advertise default IPv6 route to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						capability_dynamic: {
							description: [
								"Enable/disable advertise dynamic capability to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						capability_graceful_restart: {
							description: [
								"Enable/disable advertise IPv4 graceful restart capability to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						capability_graceful_restart6: {
							description: [
								"Enable/disable advertise IPv6 graceful restart capability to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						capability_orf: {
							description: [
								"Accept/Send IPv4 ORF lists to/from this neighbor.",
							]
							type: "str"
							choices: [
								"none",
								"receive",
								"send",
								"both",
							]
						}
						capability_orf6: {
							description: [
								"Accept/Send IPv6 ORF lists to/from this neighbor.",
							]
							type: "str"
							choices: [
								"none",
								"receive",
								"send",
								"both",
							]
						}
						capability_route_refresh: {
							description: [
								"Enable/disable advertise route refresh capability to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						conditional_advertise: {
							description: [
								"Conditional advertisement.",
							]
							type: "list"
							suboptions: {
								advertise_routemap: {
									description: [
										"Name of advertising route map. Source router.route-map.name.",
									]
									type: "str"
								}
								condition_routemap: {
									description: [
										"Name of condition route map. Source router.route-map.name.",
									]
									type: "str"
								}
								condition_type: {
									description: [
										"Type of condition.",
									]
									type: "str"
									choices: [
										"exist",
										"non-exist",
									]
								}
							}
						}
						connect_timer: {
							description: [
								"Interval (sec) for connect timer.",
							]
							type: "int"
						}
						default_originate_routemap: {
							description: [
								"Route map to specify criteria to originate IPv4 default. Source router.route-map.name.",
							]
							type: "str"
						}
						default_originate_routemap6: {
							description: [
								"Route map to specify criteria to originate IPv6 default. Source router.route-map.name.",
							]
							type: "str"
						}
						description: {
							description: [
								"Description.",
							]
							type: "str"
						}
						distribute_list_in: {
							description: [
								"Filter for IPv4 updates from this neighbor. Source router.access-list.name.",
							]
							type: "str"
						}
						distribute_list_in6: {
							description: [
								"Filter for IPv6 updates from this neighbor. Source router.access-list6.name.",
							]
							type: "str"
						}
						distribute_list_out: {
							description: [
								"Filter for IPv4 updates to this neighbor. Source router.access-list.name.",
							]
							type: "str"
						}
						distribute_list_out6: {
							description: [
								"Filter for IPv6 updates to this neighbor. Source router.access-list6.name.",
							]
							type: "str"
						}
						dont_capability_negotiate: {
							description: [
								"Don't negotiate capabilities with this neighbor",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ebgp_enforce_multihop: {
							description: [
								"Enable/disable allow multi-hop EBGP neighbors.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ebgp_multihop_ttl: {
							description: [
								"EBGP multihop TTL for this peer.",
							]
							type: "int"
						}
						filter_list_in: {
							description: [
								"BGP filter for IPv4 inbound routes. Source router.aspath-list.name.",
							]
							type: "str"
						}
						filter_list_in6: {
							description: [
								"BGP filter for IPv6 inbound routes. Source router.aspath-list.name.",
							]
							type: "str"
						}
						filter_list_out: {
							description: [
								"BGP filter for IPv4 outbound routes. Source router.aspath-list.name.",
							]
							type: "str"
						}
						filter_list_out6: {
							description: [
								"BGP filter for IPv6 outbound routes. Source router.aspath-list.name.",
							]
							type: "str"
						}
						holdtime_timer: {
							description: [
								"Interval (sec) before peer considered dead.",
							]
							type: "int"
						}
						interface: {
							description: [
								"Interface Source system.interface.name.",
							]
							type: "str"
						}
						ip: {
							description: [
								"IP/IPv6 address of neighbor.",
							]
							required: true
							type:     "str"
						}
						keep_alive_timer: {
							description: [
								"Keep alive timer interval (sec).",
							]
							type: "int"
						}
						link_down_failover: {
							description: [
								"Enable/disable failover upon link down.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						local_as: {
							description: [
								"Local AS number of neighbor.",
							]
							type: "int"
						}
						local_as_no_prepend: {
							description: [
								"Do not prepend local-as to incoming updates.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						local_as_replace_as: {
							description: [
								"Replace real AS with local-as in outgoing updates.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						maximum_prefix: {
							description: [
								"Maximum number of IPv4 prefixes to accept from this peer.",
							]
							type: "int"
						}
						maximum_prefix_threshold: {
							description: [
								"Maximum IPv4 prefix threshold value (1 - 100 percent).",
							]
							type: "int"
						}
						maximum_prefix_threshold6: {
							description: [
								"Maximum IPv6 prefix threshold value (1 - 100 percent).",
							]
							type: "int"
						}
						maximum_prefix_warning_only: {
							description: [
								"Enable/disable IPv4 Only give warning message when limit is exceeded.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						maximum_prefix_warning_only6: {
							description: [
								"Enable/disable IPv6 Only give warning message when limit is exceeded.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						maximum_prefix6: {
							description: [
								"Maximum number of IPv6 prefixes to accept from this peer.",
							]
							type: "int"
						}
						next_hop_self: {
							description: [
								"Enable/disable IPv4 next-hop calculation for this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						next_hop_self6: {
							description: [
								"Enable/disable IPv6 next-hop calculation for this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						override_capability: {
							description: [
								"Enable/disable override result of capability negotiation.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						passive: {
							description: [
								"Enable/disable sending of open messages to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						password: {
							description: [
								"Password used in MD5 authentication.",
							]
							type: "str"
						}
						prefix_list_in: {
							description: [
								"IPv4 Inbound filter for updates from this neighbor. Source router.prefix-list.name.",
							]
							type: "str"
						}
						prefix_list_in6: {
							description: [
								"IPv6 Inbound filter for updates from this neighbor. Source router.prefix-list6.name.",
							]
							type: "str"
						}
						prefix_list_out: {
							description: [
								"IPv4 Outbound filter for updates to this neighbor. Source router.prefix-list.name.",
							]
							type: "str"
						}
						prefix_list_out6: {
							description: [
								"IPv6 Outbound filter for updates to this neighbor. Source router.prefix-list6.name.",
							]
							type: "str"
						}
						remote_as: {
							description: [
								"AS number of neighbor.",
							]
							type: "int"
						}
						remove_private_as: {
							description: [
								"Enable/disable remove private AS number from IPv4 outbound updates.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						remove_private_as6: {
							description: [
								"Enable/disable remove private AS number from IPv6 outbound updates.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						restart_time: {
							description: [
								"Graceful restart delay time (sec, 0 = global default).",
							]
							type: "int"
						}
						retain_stale_time: {
							description: [
								"Time to retain stale routes.",
							]
							type: "int"
						}
						route_map_in: {
							description: [
								"IPv4 Inbound route map filter. Source router.route-map.name.",
							]
							type: "str"
						}
						route_map_in6: {
							description: [
								"IPv6 Inbound route map filter. Source router.route-map.name.",
							]
							type: "str"
						}
						route_map_out: {
							description: [
								"IPv4 Outbound route map filter. Source router.route-map.name.",
							]
							type: "str"
						}
						route_map_out6: {
							description: [
								"IPv6 Outbound route map filter. Source router.route-map.name.",
							]
							type: "str"
						}
						route_reflector_client: {
							description: [
								"Enable/disable IPv4 AS route reflector client.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						route_reflector_client6: {
							description: [
								"Enable/disable IPv6 AS route reflector client.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						route_server_client: {
							description: [
								"Enable/disable IPv4 AS route server client.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						route_server_client6: {
							description: [
								"Enable/disable IPv6 AS route server client.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						send_community: {
							description: [
								"IPv4 Send community attribute to neighbor.",
							]
							type: "str"
							choices: [
								"standard",
								"extended",
								"both",
								"disable",
							]
						}
						send_community6: {
							description: [
								"IPv6 Send community attribute to neighbor.",
							]
							type: "str"
							choices: [
								"standard",
								"extended",
								"both",
								"disable",
							]
						}
						shutdown: {
							description: [
								"Enable/disable shutdown this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						soft_reconfiguration: {
							description: [
								"Enable/disable allow IPv4 inbound soft reconfiguration.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						soft_reconfiguration6: {
							description: [
								"Enable/disable allow IPv6 inbound soft reconfiguration.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						stale_route: {
							description: [
								"Enable/disable stale route after neighbor down.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						strict_capability_match: {
							description: [
								"Enable/disable strict capability matching.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						unsuppress_map: {
							description: [
								"IPv4 Route map to selectively unsuppress suppressed routes. Source router.route-map.name.",
							]
							type: "str"
						}
						unsuppress_map6: {
							description: [
								"IPv6 Route map to selectively unsuppress suppressed routes. Source router.route-map.name.",
							]
							type: "str"
						}
						update_source: {
							description: [
								"Interface to use as source IP/IPv6 address of TCP connections. Source system.interface.name.",
							]
							type: "str"
						}
						weight: {
							description: [
								"Neighbor weight.",
							]
							type: "int"
						}
					}
				}
				neighbor_group: {
					description: [
						"BGP neighbor group table.",
					]
					type: "list"
					suboptions: {
						activate: {
							description: [
								"Enable/disable address family IPv4 for this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						activate6: {
							description: [
								"Enable/disable address family IPv6 for this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						advertisement_interval: {
							description: [
								"Minimum interval (sec) between sending updates.",
							]
							type: "int"
						}
						allowas_in: {
							description: [
								"IPv4 The maximum number of occurrence of my AS number allowed.",
							]
							type: "int"
						}
						allowas_in_enable: {
							description: [
								"Enable/disable IPv4 Enable to allow my AS in AS path.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						allowas_in_enable6: {
							description: [
								"Enable/disable IPv6 Enable to allow my AS in AS path.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						allowas_in6: {
							description: [
								"IPv6 The maximum number of occurrence of my AS number allowed.",
							]
							type: "int"
						}
						as_override: {
							description: [
								"Enable/disable replace peer AS with own AS for IPv4.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						as_override6: {
							description: [
								"Enable/disable replace peer AS with own AS for IPv6.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						attribute_unchanged: {
							description: [
								"IPv4 List of attributes that should be unchanged.",
							]
							type: "str"
							choices: [
								"as-path",
								"med",
								"next-hop",
							]
						}
						attribute_unchanged6: {
							description: [
								"IPv6 List of attributes that should be unchanged.",
							]
							type: "str"
							choices: [
								"as-path",
								"med",
								"next-hop",
							]
						}
						bfd: {
							description: [
								"Enable/disable BFD for this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						capability_default_originate: {
							description: [
								"Enable/disable advertise default IPv4 route to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						capability_default_originate6: {
							description: [
								"Enable/disable advertise default IPv6 route to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						capability_dynamic: {
							description: [
								"Enable/disable advertise dynamic capability to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						capability_graceful_restart: {
							description: [
								"Enable/disable advertise IPv4 graceful restart capability to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						capability_graceful_restart6: {
							description: [
								"Enable/disable advertise IPv6 graceful restart capability to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						capability_orf: {
							description: [
								"Accept/Send IPv4 ORF lists to/from this neighbor.",
							]
							type: "str"
							choices: [
								"none",
								"receive",
								"send",
								"both",
							]
						}
						capability_orf6: {
							description: [
								"Accept/Send IPv6 ORF lists to/from this neighbor.",
							]
							type: "str"
							choices: [
								"none",
								"receive",
								"send",
								"both",
							]
						}
						capability_route_refresh: {
							description: [
								"Enable/disable advertise route refresh capability to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						connect_timer: {
							description: [
								"Interval (sec) for connect timer.",
							]
							type: "int"
						}
						default_originate_routemap: {
							description: [
								"Route map to specify criteria to originate IPv4 default. Source router.route-map.name.",
							]
							type: "str"
						}
						default_originate_routemap6: {
							description: [
								"Route map to specify criteria to originate IPv6 default. Source router.route-map.name.",
							]
							type: "str"
						}
						description: {
							description: [
								"Description.",
							]
							type: "str"
						}
						distribute_list_in: {
							description: [
								"Filter for IPv4 updates from this neighbor. Source router.access-list.name.",
							]
							type: "str"
						}
						distribute_list_in6: {
							description: [
								"Filter for IPv6 updates from this neighbor. Source router.access-list6.name.",
							]
							type: "str"
						}
						distribute_list_out: {
							description: [
								"Filter for IPv4 updates to this neighbor. Source router.access-list.name.",
							]
							type: "str"
						}
						distribute_list_out6: {
							description: [
								"Filter for IPv6 updates to this neighbor. Source router.access-list6.name.",
							]
							type: "str"
						}
						dont_capability_negotiate: {
							description: [
								"Don't negotiate capabilities with this neighbor",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ebgp_enforce_multihop: {
							description: [
								"Enable/disable allow multi-hop EBGP neighbors.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ebgp_multihop_ttl: {
							description: [
								"EBGP multihop TTL for this peer.",
							]
							type: "int"
						}
						filter_list_in: {
							description: [
								"BGP filter for IPv4 inbound routes. Source router.aspath-list.name.",
							]
							type: "str"
						}
						filter_list_in6: {
							description: [
								"BGP filter for IPv6 inbound routes. Source router.aspath-list.name.",
							]
							type: "str"
						}
						filter_list_out: {
							description: [
								"BGP filter for IPv4 outbound routes. Source router.aspath-list.name.",
							]
							type: "str"
						}
						filter_list_out6: {
							description: [
								"BGP filter for IPv6 outbound routes. Source router.aspath-list.name.",
							]
							type: "str"
						}
						holdtime_timer: {
							description: [
								"Interval (sec) before peer considered dead.",
							]
							type: "int"
						}
						interface: {
							description: [
								"Interface Source system.interface.name.",
							]
							type: "str"
						}
						keep_alive_timer: {
							description: [
								"Keep alive timer interval (sec).",
							]
							type: "int"
						}
						link_down_failover: {
							description: [
								"Enable/disable failover upon link down.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						local_as: {
							description: [
								"Local AS number of neighbor.",
							]
							type: "int"
						}
						local_as_no_prepend: {
							description: [
								"Do not prepend local-as to incoming updates.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						local_as_replace_as: {
							description: [
								"Replace real AS with local-as in outgoing updates.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						maximum_prefix: {
							description: [
								"Maximum number of IPv4 prefixes to accept from this peer.",
							]
							type: "int"
						}
						maximum_prefix_threshold: {
							description: [
								"Maximum IPv4 prefix threshold value (1 - 100 percent).",
							]
							type: "int"
						}
						maximum_prefix_threshold6: {
							description: [
								"Maximum IPv6 prefix threshold value (1 - 100 percent).",
							]
							type: "int"
						}
						maximum_prefix_warning_only: {
							description: [
								"Enable/disable IPv4 Only give warning message when limit is exceeded.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						maximum_prefix_warning_only6: {
							description: [
								"Enable/disable IPv6 Only give warning message when limit is exceeded.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						maximum_prefix6: {
							description: [
								"Maximum number of IPv6 prefixes to accept from this peer.",
							]
							type: "int"
						}
						name: {
							description: [
								"Neighbor group name.",
							]
							required: true
							type:     "str"
						}
						next_hop_self: {
							description: [
								"Enable/disable IPv4 next-hop calculation for this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						next_hop_self6: {
							description: [
								"Enable/disable IPv6 next-hop calculation for this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						override_capability: {
							description: [
								"Enable/disable override result of capability negotiation.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						passive: {
							description: [
								"Enable/disable sending of open messages to this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						prefix_list_in: {
							description: [
								"IPv4 Inbound filter for updates from this neighbor. Source router.prefix-list.name.",
							]
							type: "str"
						}
						prefix_list_in6: {
							description: [
								"IPv6 Inbound filter for updates from this neighbor. Source router.prefix-list6.name.",
							]
							type: "str"
						}
						prefix_list_out: {
							description: [
								"IPv4 Outbound filter for updates to this neighbor. Source router.prefix-list.name.",
							]
							type: "str"
						}
						prefix_list_out6: {
							description: [
								"IPv6 Outbound filter for updates to this neighbor. Source router.prefix-list6.name.",
							]
							type: "str"
						}
						remote_as: {
							description: [
								"AS number of neighbor.",
							]
							type: "int"
						}
						remove_private_as: {
							description: [
								"Enable/disable remove private AS number from IPv4 outbound updates.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						remove_private_as6: {
							description: [
								"Enable/disable remove private AS number from IPv6 outbound updates.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						restart_time: {
							description: [
								"Graceful restart delay time (sec, 0 = global default).",
							]
							type: "int"
						}
						retain_stale_time: {
							description: [
								"Time to retain stale routes.",
							]
							type: "int"
						}
						route_map_in: {
							description: [
								"IPv4 Inbound route map filter. Source router.route-map.name.",
							]
							type: "str"
						}
						route_map_in6: {
							description: [
								"IPv6 Inbound route map filter. Source router.route-map.name.",
							]
							type: "str"
						}
						route_map_out: {
							description: [
								"IPv4 Outbound route map filter. Source router.route-map.name.",
							]
							type: "str"
						}
						route_map_out6: {
							description: [
								"IPv6 Outbound route map filter. Source router.route-map.name.",
							]
							type: "str"
						}
						route_reflector_client: {
							description: [
								"Enable/disable IPv4 AS route reflector client.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						route_reflector_client6: {
							description: [
								"Enable/disable IPv6 AS route reflector client.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						route_server_client: {
							description: [
								"Enable/disable IPv4 AS route server client.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						route_server_client6: {
							description: [
								"Enable/disable IPv6 AS route server client.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						send_community: {
							description: [
								"IPv4 Send community attribute to neighbor.",
							]
							type: "str"
							choices: [
								"standard",
								"extended",
								"both",
								"disable",
							]
						}
						send_community6: {
							description: [
								"IPv6 Send community attribute to neighbor.",
							]
							type: "str"
							choices: [
								"standard",
								"extended",
								"both",
								"disable",
							]
						}
						shutdown: {
							description: [
								"Enable/disable shutdown this neighbor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						soft_reconfiguration: {
							description: [
								"Enable/disable allow IPv4 inbound soft reconfiguration.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						soft_reconfiguration6: {
							description: [
								"Enable/disable allow IPv6 inbound soft reconfiguration.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						stale_route: {
							description: [
								"Enable/disable stale route after neighbor down.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						strict_capability_match: {
							description: [
								"Enable/disable strict capability matching.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						unsuppress_map: {
							description: [
								"IPv4 Route map to selectively unsuppress suppressed routes. Source router.route-map.name.",
							]
							type: "str"
						}
						unsuppress_map6: {
							description: [
								"IPv6 Route map to selectively unsuppress suppressed routes. Source router.route-map.name.",
							]
							type: "str"
						}
						update_source: {
							description: [
								"Interface to use as source IP/IPv6 address of TCP connections. Source system.interface.name.",
							]
							type: "str"
						}
						weight: {
							description: [
								"Neighbor weight.",
							]
							type: "int"
						}
					}
				}
				neighbor_range: {
					description: [
						"BGP neighbor range table.",
					]
					type: "list"
					suboptions: {
						id: {
							description: [
								"Neighbor range ID.",
							]
							required: true
							type:     "int"
						}
						max_neighbor_num: {
							description: [
								"Maximum number of neighbors.",
							]
							type: "int"
						}
						neighbor_group: {
							description: [
								"Neighbor group name. Source router.bgp.neighbor-group.name.",
							]
							type: "str"
						}
						prefix: {
							description: [
								"Neighbor range prefix.",
							]
							type: "str"
						}
					}
				}
				neighbor_range6: {
					description: [
						"BGP IPv6 neighbor range table.",
					]
					type: "list"
					suboptions: {
						id: {
							description: [
								"IPv6 neighbor range ID.",
							]
							required: true
							type:     "int"
						}
						max_neighbor_num: {
							description: [
								"Maximum number of neighbors.",
							]
							type: "int"
						}
						neighbor_group: {
							description: [
								"Neighbor group name. Source router.bgp.neighbor-group.name.",
							]
							type: "str"
						}
						prefix6: {
							description: [
								"IPv6 prefix.",
							]
							type: "str"
						}
					}
				}
				network: {
					description: [
						"BGP network table.",
					]
					type: "list"
					suboptions: {
						backdoor: {
							description: [
								"Enable/disable route as backdoor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						prefix: {
							description: [
								"Network prefix.",
							]
							type: "str"
						}
						route_map: {
							description: [
								"Route map to modify generated route. Source router.route-map.name.",
							]
							type: "str"
						}
					}
				}
				network_import_check: {
					description: [
						"Enable/disable ensure BGP network route exists in IGP.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				network6: {
					description: [
						"BGP IPv6 network table.",
					]
					type: "list"
					suboptions: {
						backdoor: {
							description: [
								"Enable/disable route as backdoor.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						prefix6: {
							description: [
								"Network IPv6 prefix.",
							]
							type: "str"
						}
						route_map: {
							description: [
								"Route map to modify generated route. Source router.route-map.name.",
							]
							type: "str"
						}
					}
				}
				redistribute: {
					description: [
						"BGP IPv4 redistribute table.",
					]
					type: "list"
					suboptions: {
						name: {
							description: [
								"Distribute list entry name.",
							]
							required: true
							type:     "str"
						}
						route_map: {
							description: [
								"Route map name. Source router.route-map.name.",
							]
							type: "str"
						}
						status: {
							description: [
								"Status",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				redistribute6: {
					description: [
						"BGP IPv6 redistribute table.",
					]
					type: "list"
					suboptions: {
						name: {
							description: [
								"Distribute list entry name.",
							]
							required: true
							type:     "str"
						}
						route_map: {
							description: [
								"Route map name. Source router.route-map.name.",
							]
							type: "str"
						}
						status: {
							description: [
								"Status",
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
						"Router ID.",
					]
					type: "str"
				}
				scan_time: {
					description: [
						"Background scanner interval (sec), 0 to disable it.",
					]
					type: "int"
				}
				synchronization: {
					description: [
						"Enable/disable only advertise routes from iBGP if routes present in an IGP.",
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
