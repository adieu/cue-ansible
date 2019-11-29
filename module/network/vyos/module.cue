package vyos

vyos_user :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_user: {
		purge?:               bool
		state?:               string
		update_password?:     string
		aggregate?:           string
		configured_password?: string
		full_name?:           string
		level?:               string
		name?:                string
	}
}

vyos_l3_interface :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_l3_interface: {
		state?:     string
		aggregate?: string
		ipv4?:      string
		ipv6?:      string
		name?:      string
	}
}

vyos_lag_interfaces :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_lag_interfaces: {
		config?: [...]
		state?: string
	}
}

vyos_lldp_interface :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_lldp_interface: {
		aggregate?: [...]
		name?:  string
		state?: string
	}
}

vyos_lldp_interfaces :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_lldp_interfaces: {
		config?: [...]
		state?: string
	}
}

vyos_logging :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_logging: {
		name?:      string
		state?:     string
		aggregate?: string
		dest?:      string
		facility?:  string
		level?:     string
	}
}

vyos_command :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_command: {
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
	}
}

vyos_interface :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_interface: {
		delay?:       string
		enabled?:     bool
		speed?:       string
		state?:       string
		aggregate?:   string
		description?: string
		duplex?:      string
		mtu?:         string
		name:         string
		neighbors?:   string
	}
}

vyos_lldp_global :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_lldp_global: {
		config?: {...}
		state?: string
	}
}

vyos_linkagg :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_linkagg: {
		state?: string
		aggregate?: [...]
		members?: [...]
		mode?: string
		name:  string
	}
}

vyos_lldp :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_lldp: {
		interfaces?: [...]
		state?: string
	}
}

vyos_static_route :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_static_route: {
		admin_distance?: string
		aggregate?:      string
		mask?:           string
		next_hop?:       string
		prefix?:         string
		state?:          string
	}
}

vyos_system :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_system: {
		domain_name?:   string
		domain_search?: string
		host_name?:     string
		name_servers?:  string
		state?:         string
	}
}

vyos_banner :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_banner: {
		banner: string
		state?: string
		text?:  string
	}
}

vyos_interfaces :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_interfaces: {
		state?: string
		config?: [...]
	}
}

vyos_l3_interfaces :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_l3_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

vyos_vlan :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_vlan: {
		associated_interfaces?: string
		interfaces:             string
		state?:                 string
		address?:               string
		aggregate?:             string
		purge?:                 bool
		vlan_id:                string
		delay?:                 string
		name?:                  string
	}
}

vyos_config :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_config: {
		comment?: string
		config?:  string
		lines?:   string
		match?:   string
		save?:    bool
		src?:     string
		backup?:  bool
		backup_options?: {...}
	}
}

vyos_facts :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_facts: {
		gather_network_resources?: string
		gather_subset?:            string
	}
}

vyos_ping :: {
	tags?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vyos_ping: {
		source?:   string
		state?:    string
		ttl?:      int
		count?:    int
		dest:      string
		interval?: int
		size?:     int
	}
}
