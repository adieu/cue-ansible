package layer2

net_l2_interface :: {
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	when?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	net_l2_interface: {
		trunk_allowed_vlans?: string
		trunk_vlans?:         string
		access_vlan?:         string
		aggregate?:           string
		mode?:                string
		name?:                string
		native_vlan?:         string
		state?:               string
	}
}

net_vlan :: {
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	when?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	net_vlan: {
		aggregate?:  string
		interfaces?: string
		name?:       string
		purge?:      string
		state?:      string
		vlan_id?:    string
	}
}
