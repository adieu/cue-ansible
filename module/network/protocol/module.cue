package protocol

net_lldp :: {
	when?: string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	connection?: string
	become?:     bool
	name?:       string
	notify?:     string | [...string]
	net_lldp: {
		state?: string
	}
}
