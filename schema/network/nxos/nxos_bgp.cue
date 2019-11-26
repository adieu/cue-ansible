package ansible

module: nxos_bgp: {
	module:                         "nxos_bgp"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages BGP configuration."
	description: [
		"Manages BGP configurations on NX-OS switches.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"C(state=absent) removes the whole BGP ASN configuration when C(vrf=default) or the whole VRF instance within the BGP process when using a different VRF.",
		"Default when supported restores params default value.",
		"Configuring global params is only permitted if C(vrf=default).",
	]
	options: {
		asn: {
			description: [
				"BGP autonomous system number. Valid values are String, Integer in ASPLAIN or ASDOT notation.",
			]

			required: true
		}
		vrf: description: [
			"Name of the VRF. The name 'default' is a valid VRF representing the global BGP.",
		]

		bestpath_always_compare_med: {
			description: [
				"Enable/Disable MED comparison on paths from different autonomous systems.",
			]

			type: "bool"
		}
		bestpath_aspath_multipath_relax: {
			description: [
				"Enable/Disable load sharing across the providers with different (but equal-length) AS paths.",
			]

			type: "bool"
		}
		bestpath_compare_routerid: {
			description: [
				"Enable/Disable comparison of router IDs for identical eBGP paths.",
			]
			type: "bool"
		}
		bestpath_compare_neighborid: {
			description: [
				"Enable/Disable neighborid. Use this when more paths available than max path config.",
			]
			type: "bool"
		}
		bestpath_cost_community_ignore: {
			description: [
				"Enable/Disable Ignores the cost community for BGP best-path calculations.",
			]

			type: "bool"
		}
		bestpath_med_confed: {
			description: [
				"Enable/Disable enforcement of bestpath to do a MED comparison only between paths originated within a confederation.",
			]

			type: "bool"
		}
		bestpath_med_missing_as_worst: {
			description: [
				"Enable/Disable assigns the value of infinity to received routes that do not carry the MED attribute, making these routes the least desirable.",
			]

			type: "bool"
		}
		bestpath_med_non_deterministic: {
			description: [
				"Enable/Disable deterministic selection of the best MED pat from among the paths from the same autonomous system.",
			]

			type: "bool"
		}
		cluster_id: description: [
			"Route Reflector Cluster-ID.",
		]
		confederation_id: description: [
			"Routing domain confederation AS.",
		]
		confederation_peers: description: [
			"AS confederation parameters.",
		]
		disable_policy_batching: {
			description: [
				"Enable/Disable the batching evaluation of prefix advertisement to all peers.",
			]

			type: "bool"
		}
		disable_policy_batching_ipv4_prefix_list: description: [
			"Enable/Disable the batching evaluation of prefix advertisements to all peers with prefix list.",
		]

		disable_policy_batching_ipv6_prefix_list: description: [
			"Enable/Disable the batching evaluation of prefix advertisements to all peers with prefix list.",
		]

		enforce_first_as: {
			description: [
				"Enable/Disable enforces the neighbor autonomous system to be the first AS number listed in the AS path attribute for eBGP. On NX-OS, this property is only supported in the global BGP context.",
			]

			type: "bool"
		}
		event_history_cli: {
			description: [
				"Enable/Disable cli event history buffer.",
			]
			choices: ["size_small", "size_medium", "size_large", "size_disable", "default"]
		}
		event_history_detail: {
			description: [
				"Enable/Disable detail event history buffer.",
			]
			choices: ["size_small", "size_medium", "size_large", "size_disable", "default"]
		}
		event_history_events: {
			description: [
				"Enable/Disable event history buffer.",
			]
			choices: ["size_small", "size_medium", "size_large", "size_disable", "default"]
		}
		event_history_periodic: {
			description: [
				"Enable/Disable periodic event history buffer.",
			]
			choices: ["size_small", "size_medium", "size_large", "size_disable", "default"]
		}
		fast_external_fallover: {
			description: [
				"Enable/Disable immediately reset the session if the link to a directly connected BGP peer goes down.  Only supported in the global BGP context.",
			]

			type: "bool"
		}
		flush_routes: {
			description: [
				"Enable/Disable flush routes in RIB upon controlled restart. On NX-OS, this property is only supported in the global BGP context.",
			]

			type: "bool"
		}
		graceful_restart: {
			description: [
				"Enable/Disable graceful restart.",
			]
			type: "bool"
		}
		graceful_restart_helper: {
			description: [
				"Enable/Disable graceful restart helper mode.",
			]
			type: "bool"
		}
		graceful_restart_timers_restart: description: [
			"Set maximum time for a restart sent to the BGP peer.",
		]
		graceful_restart_timers_stalepath_time: description: [
			"Set maximum time that BGP keeps the stale routes from the restarting BGP peer.",
		]

		isolate: {
			description: [
				"Enable/Disable isolate this router from BGP perspective.",
			]
			type: "bool"
		}
		local_as: description: [
			"Local AS number to be used within a VRF instance.",
		]
		log_neighbor_changes: {
			description: [
				"Enable/Disable message logging for neighbor up/down event.",
			]
			type: "bool"
		}
		maxas_limit: description: [
			"Specify Maximum number of AS numbers allowed in the AS-path attribute. Valid values are between 1 and 512.",
		]

		neighbor_down_fib_accelerate: {
			description: [
				"Enable/Disable handle BGP neighbor down event, due to various reasons.",
			]

			type: "bool"
		}
		reconnect_interval: description: [
			"The BGP reconnection interval for dropped sessions. Valid values are between 1 and 60.",
		]

		router_id: description: [
			"Router Identifier (ID) of the BGP router VRF instance.",
		]
		shutdown: {
			description: [
				"Administratively shutdown the BGP protocol.",
			]
			type: "bool"
		}
		suppress_fib_pending: {
			description: [
				"Enable/Disable advertise only routes programmed in hardware to peers.",
			]

			type: "bool"
		}
		timer_bestpath_limit: description: [
			"Specify timeout for the first best path after a restart, in seconds.",
		]

		timer_bgp_hold: description: [
			"Set BGP hold timer.",
		]
		timer_bgp_keepalive: description: [
			"Set BGP keepalive timer.",
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
