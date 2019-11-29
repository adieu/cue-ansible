package eos

eos_lldp_interfaces :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_lldp_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

eos_static_route :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_static_route: {
		next_hop:        string
		state?:          string
		vrf?:            string
		address:         string
		admin_distance?: string
		aggregate?:      string
	}
}

eos_system :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_system: {
		domain_name?:   string
		domain_search?: string
		hostname?:      string
		lookup_source?: string
		name_servers?:  string
		state?:         string
	}
}

eos_vlan :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_vlan: {
		delay?:                 string
		interfaces?:            string
		name?:                  string
		purge?:                 bool
		state?:                 string
		vlan_id:                string
		aggregate?:             string
		associated_interfaces?: string
	}
}

eos_lacp :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_lacp: {
		state?: string
		config?: {...}
	}
}

eos_facts :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_facts: {
		gather_network_resources?: [...]
		gather_subset?: [...]
	}
}

eos_l2_interface :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_l2_interface: {
		access_vlan?:         string
		aggregate?:           string
		mode?:                string
		name:                 string
		native_vlan?:         string
		state?:               string
		trunk_allowed_vlans?: string
	}
}

eos_l2_interfaces :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_l2_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

eos_l3_interfaces :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_l3_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

eos_lag_interfaces :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_lag_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

eos_logging :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_logging: {
		state?:     string
		aggregate?: string
		dest?:      string
		facility?:  string
		level?:     string
		name?:      string
		size?:      string
	}
}

eos_user :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_user: {
		role?:                string
		sshkey?:              string
		update_password?:     string
		configured_password?: string
		name?:                string
		nopassword?:          bool
		privilege?:           string
		aggregate?:           string
		purge?:               bool
		state?:               string
	}
}

eos_config :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_config: {
		backup?: bool
		backup_options?: {...}
		before?:            string
		running_config?:    string
		src?:               string
		defaults?:          bool
		diff_against?:      string
		parents?:           string
		intended_config?:   string
		match?:             string
		replace?:           string
		after?:             string
		diff_ignore_lines?: string
		lines?:             string
		save_when?:         string
	}
}

eos_vrf :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_vrf: {
		interfaces?:            string
		name:                   string
		purge?:                 bool
		rd?:                    string
		state?:                 string
		aggregate?:             string
		associated_interfaces?: string
		delay?:                 string
	}
}

eos_bgp :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_bgp: {
		config?:    string
		operation?: string
	}
}

eos_command :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_command: {
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
	}
}

eos_interface :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_interface: {
		name: string
		neighbors?: [...]
		state?:   string
		mtu?:     string
		rx_rate?: string
		speed?:   string
		tx_rate?: string
		aggregate?: [...]
		delay?:       int
		description?: string
		enabled?:     bool
	}
}

eos_linkagg :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_linkagg: {
		group?:     string
		members?:   string
		min_links?: string
		mode?:      string
		purge?:     bool
		state?:     string
		aggregate?: string
	}
}

eos_banner :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_banner: {
		banner: string
		state?: string
		text?:  string
	}
}

eos_interfaces :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_interfaces: {
		config?: [...]
		state?: string
	}
}

eos_l3_interface :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_l3_interface: {
		state?:     string
		aggregate?: string
		ipv4?:      string
		ipv6?:      string
		name?:      string
	}
}

eos_lacp_interfaces :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_lacp_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

eos_lldp :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_lldp: {
		state?: string
	}
}

eos_lldp_global :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_lldp_global: {
		config?: {...}
		state?: string
	}
}

eos_vlans :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_vlans: {
		config?: [...{...}]
		state?: string
	}
}

eos_eapi :: {
	name?:       string
	notify?:     string | [...string]
	connection?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?: string
	eos_eapi: {
		http?:            bool
		http_port?:       string
		local_http?:      bool
		config?:          string
		https_port?:      string
		local_http_port?: string
		socket?:          bool
		state?:           string
		timeout?:         int
		vrf?:             string
		https?:           bool
	}
}
