package dimensiondata

dimensiondata_vlan :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	dimensiondata_vlan: {
		description?:               string
		name?:                      string
		network_domain:             string
		private_ipv4_base_address?: string
		private_ipv4_prefix_size?:  string
		state?:                     string
		allow_expand?:              bool
	}
}

dimensiondata_network :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	dimensiondata_network: {
		description?:  string
		name:          string
		service_plan?: string
		state?:        string
	}
}
