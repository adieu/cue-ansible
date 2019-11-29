package oneview

oneview_logical_interconnect_group_info :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_logical_interconnect_group_info: {
		name?: string
	}
}

oneview_san_manager_info :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_san_manager_info: {
		params?:                string
		provider_display_name?: string
	}
}

oneview_enclosure_info :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_enclosure_info: {
		name?:    string
		options?: string
	}
}

oneview_ethernet_network :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_ethernet_network: {
		data:   string
		state?: string
	}
}

oneview_network_set_info :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_network_set_info: {
		name?:    string
		options?: string
	}
}

oneview_datacenter_info :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_datacenter_info: {
		name?:    string
		options?: string
	}
}

oneview_fc_network_info :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_fc_network_info: {
		name?: string
	}
}

oneview_fcoe_network :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_fcoe_network: {
		data:   string
		state?: string
	}
}

oneview_network_set :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_network_set: {
		data:   string
		state?: string
	}
}

oneview_san_manager :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_san_manager: {
		data:   string
		state?: string
	}
}

oneview_fc_network :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_fc_network: {
		state?: string
		data:   string
	}
}

oneview_fcoe_network_info :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_fcoe_network_info: {
		name?: string
	}
}

oneview_logical_interconnect_group :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_logical_interconnect_group: {
		data:   string
		state?: string
	}
}

wakeonlan :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	wakeonlan: {
		broadcast?: string
		mac:        string
		port?:      string
	}
}

oneview_ethernet_network_info :: {
	name?: string
	vars?: {...}
	notify?:   string | [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	oneview_ethernet_network_info: {
		name?:    string
		options?: string
	}
}
