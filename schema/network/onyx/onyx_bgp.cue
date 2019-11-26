package ansible

module: onyx_bgp: {
	module:            "onyx_bgp"
	version_added:     "2.5"
	author:            "Samer Deeb (@samerd), Anas Badaha (@anasb)"
	short_description: "Configures BGP on Mellanox ONYX network devices"
	description: [
		"This module provides declarative management of BGP router and neighbors on Mellanox ONYX network devices.",
	]

	notes: [
		"Tested on ONYX 3.6.4000",
	]
	options: {
		as_number: {
			description: [
				"Local AS number.",
			]
			required: true
		}
		router_id: description: [
			"Router IP address.",
		]
		neighbors: {
			description: [
				"List of neighbors. Required if I(state=present).",
			]
			suboptions: {
				remote_as: {
					description: [
						"Remote AS number.",
					]
					required: true
				}
				neighbor: {
					description: [
						"Neighbor IP address.",
					]
					required: true
				}
				multihop: description: [
					"multihop number.",
				]
			}
		}
		networks: description: [
			"List of advertised networks.",
		]
		fast_external_fallover: {
			description: [
				"will configure fast_external_fallover when it is True.",
			]
			type:          "bool"
			version_added: 2.9
		}
		max_paths: {
			description: [
				"Maximum bgp paths.",
			]
			version_added: 2.9
		}
		ecmp_bestpath: {
			description: [
				"Enables ECMP across AS paths.",
			]
			type:          "bool"
			version_added: 2.9
		}
		evpn: {
			description: [
				"Configure evpn peer-group.",
			]
			type:          "bool"
			version_added: 2.9
		}
		vrf: {
			description: [
				"vrf name.",
			]
			version_added: 2.9
		}
		state: {
			description: [
				"BGP state.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		purge: {
			description: [
				"will remove all neighbors when it is True.",
			]
			type:          "bool"
			default:       false
			version_added: 2.8
		}
	}
}
