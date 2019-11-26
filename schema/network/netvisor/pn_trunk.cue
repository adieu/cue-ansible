package ansible

module: pn_trunk: {
	module:            "pn_trunk"
	author:            "Pluribus Networks (@amitsi)"
	version_added:     "2.2"
	short_description: "CLI command to create/delete/modify a trunk."
	deprecated: {
		removed_in:  "2.12"
		why:         "Doesn't support latest Pluribus Networks netvisor"
		alternative: "Latest modules will be pushed in Ansible future versions."
	}
	description: [
		"Execute trunk-create or trunk-delete command.",
		"Trunks can be used to aggregate network links at Layer 2 on the local switch. Use this command to create a new trunk.",
	]

	options: {
		pn_cliusername: {
			description: [
				"Provide login username if user is not root.",
			]
			required: false
		}
		pn_clipassword: {
			description: [
				"Provide login password if user is not root.",
			]
			required: false
		}
		pn_cliswitch: {
			description: [
				"Target switch(es) to run the cli on.",
			]
			required: false
			default:  "local"
		}
		state: {
			description: [
				"State the action to perform. Use 'present' to create trunk, 'absent' to delete trunk and 'update' to modify trunk.",
			]

			required: true
			choices: ["present", "absent", "update"]
		}
		pn_name: {
			description: [
				"Specify the name for the trunk configuration.",
			]
			required: true
		}
		pn_ports: description: [
			"Specify the port number(s) for the link(s) to aggregate into the trunk.",
			"Required for trunk-create.",
		]
		pn_speed: {
			description: [
				"Specify the port speed or disable the port.",
			]
			choices: ["disable", "10m", "100m", "1g", "2.5g", "10g", "40g"]
		}
		pn_egress_rate_limit: description: [
			"Specify an egress port data rate limit for the configuration.",
		]
		pn_jumbo: {
			description: [
				"Specify if the port can receive jumbo frames.",
			]
			type: "bool"
		}
		pn_lacp_mode: {
			description: [
				"Specify the LACP mode for the configuration.",
			]
			choices: ["off", "passive", "active"]
		}
		pn_lacp_priority: description: [
			"Specify the LACP priority. This is a number between 1 and 65535 with a default value of 32768.",
		]

		pn_lacp_timeout: {
			description: [
				"Specify the LACP time out as slow (30 seconds) or fast (4seconds). The default value is slow.",
			]

			choices: ["slow", "fast"]
		}
		pn_lacp_fallback: {
			description: [
				"Specify the LACP fallback mode as bundles or individual.",
			]
			choices: ["bundle", "individual"]
		}
		pn_lacp_fallback_timeout: description: [
			"Specify the LACP fallback timeout in seconds. The range is between 30 and 60 seconds with a default value of 50 seconds.",
		]

		pn_edge_switch: {
			description: [
				"Specify if the switch is an edge switch.",
			]
			type: "bool"
		}
		pn_pause: {
			description: [
				"Specify if pause frames are sent.",
			]
			type: "bool"
		}
		pn_description: description: [
			"Specify a description for the trunk configuration.",
		]
		pn_loopback: {
			description: [
				"Specify loopback if you want to use loopback.",
			]
			type: "bool"
		}
		pn_mirror_receive: {
			description: [
				"Specify if the configuration receives mirrored traffic.",
			]
			type: "bool"
		}
		pn_unknown_ucast_level: description: [
			"Specify an unknown unicast level in percent. The default value is 100%.",
		]
		pn_unknown_mcast_level: description: [
			"Specify an unknown multicast level in percent. The default value is 100%.",
		]
		pn_broadcast_level: description: [
			"Specify a broadcast level in percent. The default value is 100%.",
		]
		pn_port_macaddr: description: [
			"Specify the MAC address of the port.",
		]
		pn_loopvlans: description: [
			"Specify a list of looping vlans.",
		]
		pn_routing: {
			description: [
				"Specify if the port participates in routing on the network.",
			]
			type: "bool"
		}
		pn_host: {
			description: [
				"Host facing port control setting.",
			]
			type: "bool"
		}
	}
}
