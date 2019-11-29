package junos

junos_interfaces :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_interfaces: {
		config?: [...]
		state?: string
	}
}

junos_l2_interface :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_l2_interface: {
		filter_input?:   string
		native_vlan?:    string
		filter_output?:  string
		mode?:           string
		name?:           string
		access_vlan?:    string
		active?:         bool
		aggregate?:      string
		description?:    string
		enhanced_layer?: bool
		state?:          string
		trunk_vlans?:    string
		unit?:           string
	}
}

junos_command :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_command: {
		display?:  string
		interval?: string
		match?:    string
		retries?:  string
		rpcs?:     string
		wait_for?: string
		commands?: string
	}
}

junos_lldp :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_lldp: {
		active?:          bool
		hold_multiplier?: string
		interval?:        string
		state?:           string
		transmit_delay?:  string
	}
}

junos_rpc :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_rpc: {
		output?: string
		rpc:     string
		args?:   string
		attrs?:  string
	}
}

junos_scp :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_scp: {
		dest?:       string
		recursive?:  bool
		remote_src?: bool
		src:         string
	}
}

junos_banner :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_banner: {
		banner:  string
		state?:  string
		text?:   string
		active?: bool
	}
}

junos_lacp :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_lacp: {
		config?: {...}
		state?: string
	}
}

junos_linkagg :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_linkagg: {
		mode?:         string
		name:          string
		active?:       bool
		description?:  string
		device_count?: string
		min_links?:    string
		aggregate?:    string
		members:       string
		state?:        string
	}
}

junos_l2_interfaces :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_l2_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

junos_l3_interfaces :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_l3_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

junos_lldp_interface :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_lldp_interface: {
		active?: bool
		name?:   string
		state?:  string
	}
}

junos_lldp_interfaces :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_lldp_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

junos_system :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_system: {
		hostname?:      string
		name_servers?:  string
		state?:         string
		active?:        bool
		domain_name?:   string
		domain_search?: string
	}
}

junos_interface :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_interface: {
		state?:       string
		tx_rate?:     string
		active?:      bool
		aggregate?:   string
		delay?:       string
		mtu?:         string
		name:         string
		neighbors?:   string
		description?: string
		duplex?:      string
		enabled?:     bool
		rx_rate?:     string
		speed?:       string
	}
}

junos_lacp_interfaces :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_lacp_interfaces: {
		state?: string
		config?: [...{...}]
	}
}

junos_lag_interfaces :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_lag_interfaces: {
		config?: [...]
		state?: string
	}
}

junos_lldp_global :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_lldp_global: {
		config?: {...}
		state?: string
	}
}

junos_netconf :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_netconf: {
		netconf_port?: string
		state?:        string
	}
}

junos_package :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_package: {
		reboot?:     bool
		src:         string
		validate?:   bool
		version?:    string
		force?:      bool
		force_host?: bool
		issu?:       bool
		no_copy?:    bool
	}
}

junos_static_route :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_static_route: {
		qualified_preference?: string
		state?:                string
		active?:               bool
		address:               string
		aggregate?:            string
		next_hop:              string
		preference?:           string
		qualified_next_hop?:   string
	}
}

junos_vrf :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_vrf: {
		interfaces?:  string
		name?:        string
		state?:       string
		target?:      string
		description?: string
		aggregate?:   string
		rd?:          string
		table_label?: bool
		active?:      bool
	}
}

junos_facts :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_facts: {
		config_format?:            string
		gather_network_resources?: string
		gather_subset?:            string
	}
}

junos_user :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_user: {
		purge?:              bool
		role?:               string
		sshkey?:             string
		encrypted_password?: string
		name?:               string
		full_name?:          string
		state?:              string
		active?:             bool
		aggregate?:          string
	}
}

junos_l3_interface :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_l3_interface: {
		filter_input?:   string
		filter6_output?: string
		ipv6?:           string
		unit?:           string
		active?:         bool
		aggregate?:      string
		filter_output?:  string
		filter6_input?:  string
		ipv4?:           string
		name?:           string
		state?:          string
	}
}

junos_ping :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_ping: {
		state?:     string
		ttl?:       int
		count?:     int
		dest:       string
		interface?: string
		interval?:  int
		size?:      int
		source?:    string
	}
}

junos_vlan :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_vlan: {
		state?:         string
		active?:        bool
		aggregate?:     string
		filter_output?: string
		interfaces?:    string
		vlan_id:        string
		description?:   string
		filter_input?:  string
		l3_interface?:  string
		name:           string
	}
}

junos_vlans :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_vlans: {
		config?: [...{...}]
		state?: string
	}
}

junos_config :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_config: {
		confirm_commit?: bool
		rollback?:       string
		src?:            string
		src_format?:     string
		update?:         string
		zeroize?:        bool
		backup?:         bool
		comment?:        string
		confirm?:        string
		lines?:          string
		replace?:        bool
		backup_options?: {...}
		check_commit?: bool
	}
}

junos_logging :: {
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	register?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	junos_logging: {
		dest?:             string
		facility?:         string
		files?:            string
		rotate_frequency?: string
		size?:             string
		active?:           bool
		aggregate?:        string
		level?:            string
		name?:             string
		state?:            string
	}
}
