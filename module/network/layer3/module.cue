package layer3

net_l3_interface :: {
	when?:       string
	notify?:     string | [...string]
	connection?: string
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	net_l3_interface: {
		aggregate?: string
		ipv4?:      string
		ipv6?:      string
		name?:      string
		purge?:     string
		state?:     string
	}
}

net_vrf :: {
	when?:       string
	notify?:     string | [...string]
	connection?: string
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	net_vrf: {
		aggregate?:  string
		interfaces?: string
		name?:       string
		purge?:      string
		state?:      string
	}
}
