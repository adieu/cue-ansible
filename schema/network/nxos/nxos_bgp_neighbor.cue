package ansible

module: nxos_bgp_neighbor: {
	module:                         "nxos_bgp_neighbor"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages BGP neighbors configurations."
	description: [
		"Manages BGP neighbors configurations on NX-OS switches.",
	]
	author: "Gabriele Gerbino (@GGabriele)"
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"C(state=absent) removes the whole BGP neighbor configuration.",
		"Default, where supported, restores params default value.",
	]
	options: {
		asn: {
			description: [
				"BGP autonomous system number. Valid values are string, Integer in ASPLAIN or ASDOT notation.",
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
		description: description: [
			"Description of the neighbor.",
		]
		bfd: {
			description: [
				"Enables/Disables BFD for a given neighbor.",
				"Dependency: 'feature bfd'",
			]
			version_added: "2.9"
			type:          "str"
			choices: ["enable", "disable"]
		}
		connected_check: {
			description: [
				"Configure whether or not to check for directly connected peer.",
			]
			type: "bool"
		}
		capability_negotiation: {
			description: [
				"Configure whether or not to negotiate capability with this neighbor.",
			]

			type: "bool"
		}
		dynamic_capability: {
			description: [
				"Configure whether or not to enable dynamic capability.",
			]
			type: "bool"
		}
		ebgp_multihop: description: [
			"Specify multihop TTL for a remote peer. Valid values are integers between 2 and 255, or keyword 'default' to disable this property.",
		]

		local_as: description: [
			"Specify the local-as number for the eBGP neighbor. Valid values are String or Integer in ASPLAIN or ASDOT notation, or 'default', which means not to configure it.",
		]

		log_neighbor_changes: {
			description: [
				"Specify whether or not to enable log messages for neighbor up/down event.",
			]

			choices: ["enable", "disable", "inherit"]
		}
		low_memory_exempt: {
			description: [
				"Specify whether or not to shut down this neighbor under memory pressure.",
			]

			type: "bool"
		}
		maximum_peers: description: [
			"Specify Maximum number of peers for this neighbor prefix Valid values are between 1 and 1000, or 'default', which does not impose the limit. Note that this parameter is accepted only on neighbors with address/prefix.",
		]

		pwd: description: [
			"Specify the password for neighbor. Valid value is string.",
		]
		pwd_type: {
			description: [
				"Specify the encryption type the password will use. Valid values are '3des' or 'cisco_type_7' encryption or keyword 'default'.",
			]

			choices: ["3des", "cisco_type_7", "default"]
		}
		remote_as: description: [
			"Specify Autonomous System Number of the neighbor. Valid values are String or Integer in ASPLAIN or ASDOT notation, or 'default', which means not to configure it.",
		]

		remove_private_as: {
			description: [
				"Specify the config to remove private AS number from outbound updates. Valid values are 'enable' to enable this config, 'disable' to disable this config, 'all' to remove all private AS number, or 'replace-as', to replace the private AS number.",
			]

			choices: ["enable", "disable", "all", "replace-as"]
		}
		shutdown: {
			description: [
				"Configure to administratively shutdown this neighbor.",
			]
			type: "bool"
		}
		suppress_4_byte_as: {
			description: [
				"Configure to suppress 4-byte AS Capability.",
			]
			type: "bool"
		}
		timers_keepalive: description: [
			"Specify keepalive timer value. Valid values are integers between 0 and 3600 in terms of seconds, or 'default', which is 60.",
		]

		timers_holdtime: description: [
			"Specify holdtime timer value. Valid values are integers between 0 and 3600 in terms of seconds, or 'default', which is 180.",
		]

		transport_passive_only: {
			description: [
				"Specify whether or not to only allow passive connection setup. Valid values are 'true', 'false', and 'default', which defaults to 'false'. This property can only be configured when the neighbor is in 'ip' address format without prefix length.",
			]

			type: "bool"
		}
		update_source: description: [
			"Specify source interface of BGP session and updates.",
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
