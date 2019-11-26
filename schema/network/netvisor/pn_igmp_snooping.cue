package ansible

module: pn_igmp_snooping: {
	module:            "pn_igmp_snooping"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to modify igmp-snooping"
	description: [
		"This module can be used to modify Internet Group Management Protocol (IGMP) snooping.",
	]
	options: {
		pn_cliswitch: {
			description: [
				"Target switch to run the CLI on.",
			]
			required: false
			type:     "str"
		}
		state: {
			description: [
				"State the action to perform. Use C(update) to modify the igmp-snooping.",
			]
			required: true
			type:     "str"
			choices: ["update"]
		}
		pn_enable: {
			description: [
				"enable or disable IGMP snooping.",
			]
			required: false
			type:     "bool"
		}
		pn_query_interval: {
			description: [
				"IGMP query interval in seconds.",
			]
			required: false
			type:     "str"
		}
		pn_igmpv2_vlans: {
			description: [
				"VLANs on which to use IGMPv2 protocol.",
			]
			required: false
			type:     "str"
		}
		pn_igmpv3_vlans: {
			description: [
				"VLANs on which to use IGMPv3 protocol.",
			]
			required: false
			type:     "str"
		}
		pn_enable_vlans: {
			description: [
				"enable per VLAN IGMP snooping.",
			]
			required: false
			type:     "str"
		}
		pn_vxlan: {
			description: [
				"enable or disable IGMP snooping on vxlans.",
			]
			required: false
			type:     "bool"
		}
		pn_query_max_response_time: {
			description: [
				"maximum response time, in seconds, advertised in IGMP queries.",
			]
			required: false
			type:     "str"
		}
		pn_scope: {
			description: [
				"IGMP snooping scope - fabric or local.",
			]
			required: false
			choices: ["local", "fabric"]
		}
		pn_no_snoop_linklocal_vlans: {
			description: [
				"Remove snooping of link-local groups(224.0.0.0/24) on these vlans.",
			]
			required: false
			type:     "str"
		}
		pn_snoop_linklocal_vlans: {
			description: [
				"Allow snooping of link-local groups(224.0.0.0/24) on these vlans.",
			]
			required: false
			type:     "str"
		}
	}
}
