package protocol

net_lldp :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	net_lldp: {

		state?: string

		// State of the LLDP service configuration.
	}
}
