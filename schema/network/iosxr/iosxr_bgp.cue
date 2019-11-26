package ansible

module: iosxr_bgp: {
	module:            "iosxr_bgp"
	version_added:     "2.8"
	author:            "Nilashish Chakraborty (@NilashishC)"
	short_description: "Configure global BGP protocol settings on Cisco IOS-XR"
	description: [
		"This module provides configuration management of global BGP parameters on devices running Cisco IOS-XR",
	]

	notes: [
		"Tested against Cisco IOS XR Software Version 6.1.3",
		"This module works with connection C(network_cli). See L(the IOS-XR Platform Options,../network/user_guide/platform_iosxr.html).",
	]
	options: {
		config: {
			description: [
				"Specifies the BGP related configuration.",
			]
			suboptions: {
				bgp_as: {
					description: [
						"Specifies the BGP Autonomous System (AS) number to configure on the device.",
					]
					type:     "int"
					required: true
				}
				router_id: {
					description: [
						"Configures the BGP routing process router-id value.",
					]
					default: null
				}
				log_neighbor_changes: {
					description: [
						"Enable/disable logging neighbor up/down and reset reason.",
					]
					type: "bool"
				}
				neighbors: {
					description: [
						"Specifies BGP neighbor related configurations.",
					]
					suboptions: {
						neighbor: {
							description: [
								"Neighbor router address.",
							]
							required: true
						}
						remote_as: {
							description: [
								"Remote AS of the BGP neighbor to configure.",
							]
							type:     "int"
							required: true
						}
						update_source: description: [
							"Source of the routing updates.",
						]
						password: description: [
							"Password to authenticate the BGP peer connection.",
						]
						enabled: {
							description: [
								"Administratively shutdown or enable a neighbor.",
							]
							type: "bool"
						}
						description: description: [
							"Neighbor specific description.",
						]
						advertisement_interval: {
							description: [
								"Specifies the minimum interval (in seconds) between sending BGP routing updates.",
								"The range is from 0 to 600.",
							]
							type: "int"
						}
						tcp_mss: {
							description: [
								"Specifies the TCP initial maximum segment size to use.",
								"The range is from 68 to 10000.",
							]
							type: "int"
						}
						ebgp_multihop: {
							description: [
								"Specifies the maximum hop count for EBGP neighbors not on directly connected networks.",
								"The range is from 0 to 255.",
							]
							type: "int"
						}
						timers: {
							description: [
								"Specifies BGP neighbor timer related configurations.",
							]
							suboptions: {
								keepalive: {
									description: [
										"Frequency with which the Cisco IOS-XR software sends keepalive messages to its peer.",
										"The range is from 0 to 65535.",
									]
									type:     "int"
									required: true
								}
								holdtime: {
									description: [
										"Interval after not receiving a keepalive message that the software declares a peer dead.",
										"The range is from 3 to 65535.",
									]
									type:     "int"
									required: true
								}
								min_neighbor_holdtime: {
									description: [
										"Interval specifying the minimum acceptable hold-time from a BGP neighbor.",
										"The minimum acceptable hold-time must be less than, or equal to, the interval specified in the holdtime argument.",
										"The range is from 3 to 65535.",
									]
									type: "int"
								}
							}
						}
					}
				}
				address_family: {
					description: [
						"Specifies BGP address family related configurations.",
					]
					suboptions: {
						afi: {
							description: [
								"Type of address family to configure.",
							]
							choices: [
								"ipv4",
								"ipv6",
							]
							required: true
						}
						safi: {
							description: [
								"Specifies the type of cast for the address family.",
							]
							choices: [
								"flowspec",
								"unicast",
								"multicast",
								"labeled-unicast",
							]
							default: "unicast"
						}
						redistribute: {
							description: [
								"Specifies the redistribute information from another routing protocol.",
							]
							suboptions: {
								protocol: {
									description: [
										"Specifies the protocol for configuring redistribute information.",
									]
									choices: ["ospf", "ospfv3", "eigrp", "isis", "static", "connected", "lisp", "mobile", "rip", "subscriber"]
									required: true
								}
								id: description: [
									"Identifier for the routing protocol for configuring redistribute information.",
									"Valid for protocols 'ospf', 'eigrp', 'isis' and 'ospfv3'.",
								]
								metric: description: [
									"Specifies the metric for redistributed routes.",
								]
								route_map: description: [
									"Specifies the route map reference.",
								]
							}
						}
						networks: {
							description: [
								"Specify networks to announce via BGP.",
								"For operation replace, this option is mutually exclusive with root level networks option.",
							]
							suboptions: {
								network: {
									description: [
										"Network ID to announce via BGP.",
									]
									required: true
								}
								masklen: description: [
									"Subnet mask length for the network to announce(e.g, 8, 16, 24, etc.).",
								]
								route_map: description: [
									"Route map to modify the attributes.",
								]
							}
						}
					}
				}
			}
		}
		operation: {
			description: [
				"Specifies the operation to be performed on the BGP process configured on the device.",
				"In case of merge, the input configuration will be merged with the existing BGP configuration on the device.",
				"In case of replace, if there is a diff between the existing configuration and the input configuration, the existing configuration will be replaced by the input configuration for every option that has the diff.",
				"In case of override, all the existing BGP configuration will be removed from the device and replaced with the input configuration.",
				"In case of delete the existing BGP configuration will be removed from the device.",
			]
			default: "merge"
			choices: ["merge", "replace", "override", "delete"]
		}
	}
}
