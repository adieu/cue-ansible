package ovs

openvswitch_bridge :: {
	when?:       string
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	openvswitch_bridge: {
		vlan?:         string
		bridge:        string
		external_ids?: string
		fail_mode?:    string
		parent?:       string
		set?:          string
		state?:        string
		timeout?:      string
	}
}

openvswitch_db :: {
	when?:       string
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	openvswitch_db: {
		state?:   string
		table:    string
		timeout?: string
		value:    string
		col:      string
		key?:     string
		record:   string
	}
}

openvswitch_port :: {
	when?:       string
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	openvswitch_port: {
		bridge:        string
		external_ids?: string
		port:          string
		set?:          string
		state?:        string
		tag?:          string
		timeout?:      string
	}
}
