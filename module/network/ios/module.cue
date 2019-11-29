package ios

ios_command :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_command: {
		match?:    string
		retries?:  string
		wait_for?: string
		commands:  string
		interval?: string
	}
}

ios_facts :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_facts: {
		gather_network_resources?: string
		gather_subset?:            string
	}
}

ios_ping :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_ping: {
		count?:  string
		dest:    string
		source?: string
		state?:  string
		vrf?:    string
	}
}

ios_static_route :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_static_route: {
		track?:          string
		vrf?:            string
		aggregate?:      string
		name?:           string
		prefix?:         string
		state?:          string
		tag?:            string
		admin_distance?: string
		interface?:      string
		mask?:           string
		next_hop?:       string
	}
}

ios_vlans :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_vlans: {
		config?: [...{...}]
		state?: string
	}
}

ios_l2_interface :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_l2_interface: {
		state?:               string
		trunk_allowed_vlans?: string
		trunk_vlans?:         string
		access_vlan?:         string
		aggregate?:           string
		mode?:                string
		name:                 string
		native_vlan?:         string
	}
}

ios_ntp :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_ntp: {
		server?:     string
		source_int?: string
		state?:      string
		acl?:        string
		auth?:       bool
		auth_key?:   string
		key_id?:     string
		logging?:    bool
	}
}

ios_user :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_user: {
		aggregate?:           string
		hashed_password?:     string
		password_type?:       string
		view?:                string
		update_password?:     string
		configured_password?: string
		name?:                string
		nopassword?:          bool
		privilege?:           string
		purge?:               bool
		sshkey?:              string
		state?:               string
	}
}

ios_l3_interface :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_l3_interface: {
		aggregate?: string
		ipv4?:      string
		ipv6?:      string
		name?:      string
		state?:     string
	}
}

ios_lacp_interfaces :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_lacp_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

ios_lag_interfaces :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_lag_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

ios_l2_interfaces :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_l2_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

ios_lacp :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_lacp: {
		config?: {...}
		state?: string
	}
}

ios_linkagg :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_linkagg: {
		group?:     string
		members?:   string
		mode?:      string
		purge?:     bool
		state?:     string
		aggregate?: string
	}
}

ios_lldp :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_lldp: {
		state?: string
	}
}

ios_logging :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_logging: {
		size?:      string
		state?:     string
		aggregate?: string
		dest?:      string
		facility?:  string
		level?:     string
		name?:      string
	}
}

ios_l3_interfaces :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_l3_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

ios_lldp_global :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_lldp_global: {
		config?: {...}
		state?: string
	}
}

ios_vrf :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_vrf: {
		delay?:                 string
		route_both_ipv6?:       string
		associated_interfaces?: string
		route_both_ipv4?:       string
		route_export?:          string
		route_import_ipv4?:     string
		route_import_ipv6?:     string
		state?:                 string
		vrfs?:                  string
		interfaces?:            string
		purge?:                 bool
		rd?:                    string
		route_export_ipv6?:     string
		route_import?:          string
		description?:           string
		name?:                  string
		route_both?:            string
		route_export_ipv4?:     string
	}
}

ios_banner :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_banner: {
		state?: string
		text?:  string
		banner: string
	}
}

ios_interface :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_interface: {
		description?: string
		enabled?:     bool
		mtu?:         string
		name:         string
		state?:       string
		tx_rate?:     string
		aggregate?:   string
		delay?:       string
		duplex?:      string
		neighbors?:   string
		rx_rate?:     string
		speed?:       string
	}
}

ios_interfaces :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_interfaces: {
		config?: [...]
		state?: string
	}
}

ios_lldp_interfaces :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_lldp_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

ios_system :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_system: {
		lookup_enabled?: bool
		lookup_source?:  string
		name_servers?:   string
		state?:          string
		domain_name?:    string
		domain_search?:  string
		hostname?:       string
	}
}

ios_vlan :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_vlan: {
		associated_interfaces?: string
		delay?:                 string
		interfaces:             string
		name?:                  string
		purge?:                 bool
		state?:                 string
		vlan_id:                string
		aggregate?:             string
	}
}

ios_bgp :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_bgp: {
		config?:    string
		operation?: string
	}
}

ios_config :: {
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	ios_config: {
		before?:              string
		diff_ignore_lines?:   string
		parents?:             string
		replace?:             string
		multiline_delimiter?: string
		diff_against?:        string
		intended_config?:     string
		lines?:               string
		match?:               string
		after?:               string
		backup_options?: {...}
		src?:            string
		backup?:         bool
		defaults?:       bool
		running_config?: string
		save_when?:      string
	}
}
