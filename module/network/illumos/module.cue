package illumos

dladm_iptun :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	connection?: string
	register?:   string
	when?:       string
	dladm_iptun: {
		remote_address?: string
		state?:          string
		temporary?:      bool
		type?:           string
		local_address?:  string
		name:            string
	}
}

ipadm_addr :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	connection?: string
	register?:   string
	when?:       string
	ipadm_addr: {
		addrtype?:  string
		state?:     string
		temporary?: bool
		wait?:      string
		address?:   string
		addrobj:    string
	}
}

ipadm_addrprop :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	connection?: string
	register?:   string
	when?:       string
	ipadm_addrprop: {
		addrobj:    string
		property:   string
		state?:     string
		temporary?: bool
		value?:     string
	}
}

ipadm_if :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	connection?: string
	register?:   string
	when?:       string
	ipadm_if: {
		state?:     string
		temporary?: bool
		name:       string
	}
}

dladm_etherstub :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	connection?: string
	register?:   string
	when?:       string
	dladm_etherstub: {
		name:       string
		state?:     string
		temporary?: bool
	}
}

dladm_linkprop :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	connection?: string
	register?:   string
	when?:       string
	dladm_linkprop: {
		link:       string
		property:   string
		state?:     string
		temporary?: bool
		value?:     string
	}
}

dladm_vlan :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	connection?: string
	register?:   string
	when?:       string
	dladm_vlan: {
		link:       string
		name:       string
		state?:     string
		temporary?: bool
		vlan_id?:   string
	}
}

dladm_vnic :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	connection?: string
	register?:   string
	when?:       string
	dladm_vnic: {
		mac?:       string
		name:       string
		state?:     string
		temporary?: bool
		vlan?:      string
		link:       string
	}
}

flowadm :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	connection?: string
	register?:   string
	when?:       string
	flowadm: {
		maxbw?:      string
		name:        string
		state?:      string
		temporary?:  bool
		dsfield?:    string
		link?:       string
		local_port?: string
		transport?:  string
		local_ip?:   string
		priority?:   string
		remote_ip?:  string
	}
}

ipadm_ifprop :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	connection?: string
	register?:   string
	when?:       string
	ipadm_ifprop: {
		temporary?: bool
		value?:     string
		interface:  string
		property:   string
		protocol:   string
		state?:     string
	}
}

ipadm_prop :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	connection?: string
	register?:   string
	when?:       string
	ipadm_prop: {
		property:   string
		protocol:   string
		state?:     string
		temporary?: bool
		value?:     string
	}
}
