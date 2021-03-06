package ansible

module: nxos_bgp_neighbor_af: {
	module:                         "nxos_bgp_neighbor_af"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages BGP address-family's neighbors configuration."
	description: [
		"Manages BGP address-family's neighbors configurations on NX-OS switches.",
	]
	author: "Gabriele Gerbino (@GGabriele)"
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"C(state=absent) removes the whole BGP address-family's neighbor configuration.",
		"Default, when supported, removes properties",
		"In order to default maximum-prefix configuration, only C(max_prefix_limit=default) is needed.",
	]

	options: {
		asn: {
			description: [
				"BGP autonomous system number. Valid values are String, Integer in ASPLAIN or ASDOT notation.",
			]

			required: true
		}
		vrf: {
			description: [
				"Name of the VRF. The name 'default' is a valid VRF representing the global bgp.",
			]

			default: "default"
		}
		neighbor: {
			description: [
				"Neighbor Identifier. Valid values are string. Neighbors may use IPv4 or IPv6 notation, with or without prefix length.",
			]

			required: true
		}
		afi: {
			description: [
				"Address Family Identifier.",
			]
			required: true
			choices: ["ipv4", "ipv6", "vpnv4", "vpnv6", "l2vpn"]
		}
		safi: {
			description: [
				"Sub Address Family Identifier.",
			]
			required: true
			choices: ["unicast", "multicast", "evpn"]
		}
		additional_paths_receive: {
			description: [
				"Valid values are enable for basic command enablement; disable for disabling the command at the neighbor af level (it adds the disable keyword to the basic command); and inherit to remove the command at this level (the command value is inherited from a higher BGP layer).",
			]

			choices: ["enable", "disable", "inherit"]
		}
		additional_paths_send: {
			description: [
				"Valid values are enable for basic command enablement; disable for disabling the command at the neighbor af level (it adds the disable keyword to the basic command); and inherit to remove the command at this level (the command value is inherited from a higher BGP layer).",
			]

			choices: ["enable", "disable", "inherit"]
		}
		advertise_map_exist: description: [
			"Conditional route advertisement. This property requires two route maps, an advertise-map and an exist-map. Valid values are an array specifying both the advertise-map name and the exist-map name, or simply 'default' e.g. ['my_advertise_map', 'my_exist_map']. This command is mutually exclusive with the advertise_map_non_exist property.",
		]

		advertise_map_non_exist: description: [
			"Conditional route advertisement. This property requires two route maps, an advertise-map and an exist-map. Valid values are an array specifying both the advertise-map name and the non-exist-map name, or simply 'default' e.g. ['my_advertise_map', 'my_non_exist_map']. This command is mutually exclusive with the advertise_map_exist property.",
		]

		allowas_in: {
			description: [
				"Activate allowas-in property",
			]
			type: "bool"
		}
		allowas_in_max: description: [
			"Max-occurrences value for allowas_in. Valid values are an integer value or 'default'. This is mutually exclusive with allowas_in.",
		]

		as_override: {
			description: [
				"Activate the as-override feature.",
			]
			type: "bool"
		}
		default_originate: {
			description: [
				"Activate the default-originate feature.",
			]
			type: "bool"
		}
		default_originate_route_map: description: [
			"Route-map for the default_originate property. Valid values are a string defining a route-map name, or 'default'. This is mutually exclusive with default_originate.",
		]

		disable_peer_as_check: {
			description: [
				"Disable checking of peer AS-number while advertising",
			]
			type:          "bool"
			version_added: 2.5
		}
		filter_list_in: description: [
			"Valid values are a string defining a filter-list name, or 'default'.",
		]

		filter_list_out: description: [
			"Valid values are a string defining a filter-list name, or 'default'.",
		]

		max_prefix_limit: description: [
			"maximum-prefix limit value. Valid values are an integer value or 'default'.",
		]

		max_prefix_interval: description: [
			"Optional restart interval. Valid values are an integer. Requires max_prefix_limit. May not be combined with max_prefix_warning.",
		]

		max_prefix_threshold: description: [
			"Optional threshold percentage at which to generate a warning. Valid values are an integer value. Requires max_prefix_limit.",
		]

		max_prefix_warning: {
			description: [
				"Optional warning-only keyword. Requires max_prefix_limit. May not be combined with max_prefix_interval.",
			]

			type: "bool"
		}
		next_hop_self: {
			description: [
				"Activate the next-hop-self feature.",
			]
			type: "bool"
		}
		next_hop_third_party: {
			description: [
				"Activate the next-hop-third-party feature.",
			]
			type: "bool"
		}
		prefix_list_in: description: [
			"Valid values are a string defining a prefix-list name, or 'default'.",
		]

		prefix_list_out: description: [
			"Valid values are a string defining a prefix-list name, or 'default'.",
		]

		route_map_in: description: [
			"Valid values are a string defining a route-map name, or 'default'.",
		]

		route_map_out: description: [
			"Valid values are a string defining a route-map name, or 'default'.",
		]

		route_reflector_client: {
			description: [
				"Router reflector client.",
			]
			type: "bool"
		}
		send_community: {
			description: [
				"send-community attribute.",
			]
			choices: ["none", "both", "extended", "standard", "default"]
		}
		soft_reconfiguration_in: {
			description: [
				"Valid values are 'enable' for basic command enablement; 'always' to add the always keyword to the basic command; and 'inherit' to remove the command at this level (the command value is inherited from a higher BGP layer).",
			]

			choices: ["enable", "always", "inherit"]
		}
		soo: description: [
			"Site-of-origin. Valid values are a string defining a VPN extcommunity or 'default'.",
		]

		suppress_inactive: {
			description: [
				"suppress-inactive feature.",
			]
			type: "bool"
		}
		unsuppress_map: description: [
			"unsuppress-map. Valid values are a string defining a route-map name or 'default'.",
		]

		weight: description: [
			"Weight value. Valid values are an integer value or 'default'.",
		]
		state: {
			description: [
				"Determines whether the config should be present or not on the device.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
}
