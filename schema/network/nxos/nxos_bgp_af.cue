package ansible

module: nxos_bgp_af: {
	module:                         "nxos_bgp_af"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages BGP Address-family configuration."
	description: [
		"Manages BGP Address-family configurations on NX-OS switches.",
	]
	author: "Gabriele Gerbino (@GGabriele)"
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"C(state=absent) removes the whole BGP ASN configuration",
		"Default, where supported, restores params default value.",
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
		additional_paths_install: {
			description: [
				"Install a backup path into the forwarding table and provide prefix independent convergence (PIC) in case of a PE-CE link failure.",
			]

			type: "bool"
		}
		additional_paths_receive: {
			description: [
				"Enables the receive capability of additional paths for all of the neighbors under this address family for which the capability has not been disabled.",
			]

			type: "bool"
		}
		additional_paths_selection: description: [
			"Configures the capability of selecting additional paths for a prefix. Valid values are a string defining the name of the route-map.",
		]

		additional_paths_send: {
			description: [
				"Enables the send capability of additional paths for all of the neighbors under this address family for which the capability has not been disabled.",
			]

			type: "bool"
		}
		advertise_l2vpn_evpn: {
			description: [
				"Advertise evpn routes.",
			]
			type: "bool"
		}
		client_to_client: {
			description: [
				"Configure client-to-client route reflection.",
			]
			type: "bool"
		}
		dampen_igp_metric: description: [
			"Specify dampen value for IGP metric-related changes, in seconds. Valid values are integer and keyword 'default'.",
		]

		dampening_state: {
			description: [
				"Enable/disable route-flap dampening.",
			]
			type: "bool"
		}
		dampening_half_time: description: [
			"Specify decay half-life in minutes for route-flap dampening. Valid values are integer and keyword 'default'.",
		]

		dampening_max_suppress_time: description: [
			"Specify max suppress time for route-flap dampening stable route. Valid values are integer and keyword 'default'.",
		]

		dampening_reuse_time: description: [
			"Specify route reuse time for route-flap dampening. Valid values are integer and keyword 'default'.",
		]

		dampening_routemap: description: [
			"Specify route-map for route-flap dampening. Valid values are a string defining the name of the route-map.",
		]

		dampening_suppress_time: description: [
			"Specify route suppress time for route-flap dampening. Valid values are integer and keyword 'default'.",
		]

		default_information_originate: {
			description: [
				"Default information originate.",
			]
			type: "bool"
		}
		default_metric: description: [
			"Sets default metrics for routes redistributed into BGP. Valid values are Integer or keyword 'default'",
		]

		distance_ebgp: description: [
			"Sets the administrative distance for eBGP routes. Valid values are Integer or keyword 'default'.",
		]

		distance_ibgp: description: [
			"Sets the administrative distance for iBGP routes. Valid values are Integer or keyword 'default'.",
		]

		distance_local: description: [
			"Sets the administrative distance for local BGP routes. Valid values are Integer or keyword 'default'.",
		]

		inject_map: description: [
			"An array of route-map names which will specify prefixes to inject. Each array entry must first specify the inject-map name, secondly an exist-map name, and optionally the copy-attributes keyword which indicates that attributes should be copied from the aggregate. For example [['lax_inject_map', 'lax_exist_map'], ['nyc_inject_map', 'nyc_exist_map', 'copy-attributes'], ['fsd_inject_map', 'fsd_exist_map']].",
		]

		maximum_paths: description: [
			"Configures the maximum number of equal-cost paths for load sharing. Valid value is an integer in the range 1-64.",
		]

		maximum_paths_ibgp: description: [
			"Configures the maximum number of ibgp equal-cost paths for load sharing. Valid value is an integer in the range 1-64.",
		]

		networks: description: [
			"Networks to configure. Valid value is a list of network prefixes to advertise. The list must be in the form of an array. Each entry in the array must include a prefix address and an optional route-map. For example [['10.0.0.0/16', 'routemap_LA'], ['192.168.1.1', 'Chicago'], ['192.168.2.0/24'], ['192.168.3.0/24', 'routemap_NYC']].",
		]

		next_hop_route_map: description: [
			"Configure a route-map for valid nexthops. Valid values are a string defining the name of the route-map.",
		]

		redistribute: description: [
			"A list of redistribute directives. Multiple redistribute entries are allowed. The list must be in the form of a nested array. the first entry of each array defines the source-protocol to redistribute from; the second entry defines a route-map name. A route-map is highly advised but may be optional on some platforms, in which case it may be omitted from the array list. For example [['direct', 'rm_direct'], ['lisp', 'rm_lisp']].",
		]

		suppress_inactive: {
			description: [
				"Advertises only active routes to peers.",
			]
			type: "bool"
		}
		table_map: description: [
			"Apply table-map to filter routes downloaded into URIB. Valid values are a string.",
		]

		table_map_filter: {
			description: [
				"Filters routes rejected by the route-map and does not download them to the RIB.",
			]

			type: "bool"
		}
		state: {
			description: [
				"Determines whether the config should be present or not on the device.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
}
