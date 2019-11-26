package ansible

module: eos_bgp: {
	module:            "eos_bgp"
	version_added:     "2.8"
	author:            "Nilashish Chakraborty (@NilashishC)"
	short_description: "Configure global BGP protocol settings on Arista EOS."
	description: [
		"This module provides configuration management of global BGP parameters on Arista EOS devices.",
	]

	notes: [
		"Tested against Arista vEOS Version 4.15.9M.",
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
						description: description: [
							"Neighbor specific description.",
						]
						ebgp_multihop: {
							description: [
								"Specifies the maximum hop count for EBGP neighbors not on directly connected networks.",
								"The range is from 1 to 255.",
							]
							type: "int"
						}
						peer_group: description: [
							"Name of the peer group that the neighbor is a member of.",
						]
						timers: {
							description: [
								"Specifies BGP neighbor timer related configurations.",
							]
							suboptions: {
								keepalive: {
									description: [
										"Frequency (in seconds) with which the device sends keepalive messages to its peer.",
										"The range is from 0 to 3600.",
									]
									type:     "int"
									required: true
								}
								holdtime: {
									description: [
										"Interval (in seconds) after not receiving a keepalive message that device declares a peer dead.",
										"The range is from 3 to 7200.",
										"Setting this value to 0 will not send keep-alives (hold forever).",
									]
									type:     "int"
									required: true
								}
							}
						}
						route_reflector_client: {
							description: [
								"Specify a neighbor as a route reflector client.",
							]
							type: "bool"
						}
						remove_private_as: {
							description: [
								"Remove the private AS number from outbound updates.",
							]
							type: "bool"
						}
						enabled: description: [
							"Administratively shutdown or enable a neighbor.",
						]
						maximum_prefix: {
							description: [
								"Maximum number of prefixes to accept from this peer.",
								"The range is from 0 to 4294967294.",
							]
							type: "int"
						}
					}
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
							required: true
						}
						route_map: description: [
							"Specifies the route map reference.",
						]
					}
				}
				networks: {
					description: [
						"Specify Networks to announce via BGP.",
						"For operation replace, this option is mutually exclusive with networks option under address_family.",
						"For operation replace, if the device already has an address family activated, this option is not allowed.",
					]
					suboptions: {
						prefix: {
							description: [
								"Network ID to announce via BGP.",
							]
							required: true
						}
						masklen: description: [
							"Subnet mask length for the Network to announce(e.g, 8, 16, 24, etc.).",
						]
						route_map: description: [
							"Route map to modify the attributes.",
						]
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
						redistribute: {
							description: [
								"Specifies the redistribute information from another routing protocol.",
							]
							suboptions: {
								protocol: {
									description: [
										"Specifies the protocol for configuring redistribute information.",
									]
									required: true
								}
								route_map: description: [
									"Specifies the route map reference.",
								]
							}
						}
						networks: {
							description: [
								"Specify Networks to announce via BGP.",
								"For operation replace, this option is mutually exclusive with root level networks option.",
							]
							suboptions: {
								prefix: {
									description: [
										"Network ID to announce via BGP.",
									]
									required: true
								}
								masklen: description: [
									"Subnet mask length for the Network to announce(e.g, 8, 16, 24, etc.).",
								]
								route_map: description: [
									"Route map to modify the attributes.",
								]
							}
						}
						neighbors: {
							description: [
								"Specifies BGP neighbor related configurations in Address Family configuration mode.",
							]
							suboptions: {
								neighbor: {
									description: [
										"Neighbor router address.",
									]
									required: true
								}
								activate: {
									description: [
										"Enable the Address Family for this Neighbor.",
									]
									type: "bool"
								}
								default_originate: {
									description: [
										"Originate default route to this neighbor.",
									]
									type: "bool"
								}
								graceful_restart: {
									description: [
										"Enable/disable graceful restart mode for this neighbor.",
									]
									type: "bool"
								}
								weight: {
									description: [
										"Assign weight for routes learnt from this neighbor.",
										"The range is from 0 to 65535",
									]
									type: "int"
								}
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
