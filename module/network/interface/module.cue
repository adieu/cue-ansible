package interface

net_interface :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	net_interface: {
		mtu?:         string
		purge?:       string
		state?:       string
		tx_rate?:     string
		aggregate?:   string
		delay?:       string
		description?: string
		rx_rate?:     string
		speed?:       string
		duplex?:      string
		enabled?:     string
		name:         string
	}
}

net_linkagg :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	net_linkagg: {
		state?:     string
		aggregate?: string
		members:    string
		min_links?: string
		mode?:      string
		name:       string
		purge?:     string
	}
}

net_lldp_interface :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	net_lldp_interface: {
		aggregate?: string
		name?:      string
		purge?:     string
		state?:     string
	}
}
