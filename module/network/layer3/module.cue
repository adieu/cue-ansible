package layer3

net_l3_interface :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	net_l3_interface: {

		// Name of the L3 interface.

		name?: string

		// Purge L3 interfaces not defined in the I(aggregate) parameter.

		purge?: string

		// State of the L3 interface configuration.

		state?: string

		// List of L3 interfaces definitions

		aggregate?: string

		// IPv4 of the L3 interface.

		ipv4?: string

		// IPv6 of the L3 interface.

		ipv6?: string
	}
}

net_vrf :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	net_vrf: {

		// List of VRFs definitions

		aggregate?: string

		// List of interfaces the VRF should be configured on.

		interfaces?: string

		// Name of the VRF.

		name?: string

		// Purge VRFs not defined in the I(aggregate) parameter.

		purge?: string

		// State of the VRF configuration.

		state?: string
	}
}
