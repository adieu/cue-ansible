package routing

net_static_route :: {
	when?:       string
	notify?:     string | [...string]
	connection?: string
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	net_static_route: {
		next_hop:        string
		prefix:          string
		purge?:          string
		state?:          string
		admin_distance?: string
		aggregate?:      string
		mask:            string
	}
}
