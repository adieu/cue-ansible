package icx

icx_l3_interface :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_l3_interface: {
		aggregate?: [...]
		check_running_config?: bool
		ipv4?:                 string
		ipv6?:                 string
		mode?:                 string
		replace?:              string
		secondary?:            string
		state?:                string
		name?:                 string
	}
}

icx_linkagg :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_linkagg: {
		state?: string
		aggregate?: [...]
		check_running_config?: bool
		group?:                int
		members?: [...]
		mode?:  string
		name?:  string
		purge?: bool
	}
}

icx_ping :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_ping: {
		vrf?:     string
		count?:   int
		dest:     string
		size?:    int
		source?:  string
		state?:   string
		timeout?: int
		ttl?:     int
	}
}

icx_banner :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_banner: {
		check_running_config?: bool
		enterkey?:             bool
		state?:                string
		text?:                 string
		banner:                string
	}
}

icx_facts :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_facts: {
		gather_subset?: [...]
	}
}

icx_interface :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_interface: {
		aggregate?: [...]
		description?:          string
		enabled?:              bool
		name?:                 string
		rx_rate?:              string
		state?:                string
		check_running_config?: bool
		delay?:                int
		neighbors?: [...]
		power?: {...}
		speed?:   string
		stp?:     bool
		tx_rate?: string
	}
}

icx_static_route :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_static_route: {
		purge?:          bool
		state?:          string
		admin_distance?: int
		aggregate?: [...]
		check_running_config?: bool
		mask?:                 string
		next_hop?:             string
		prefix?:               string
	}
}

icx_system :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_system: {
		aaa_servers?: [...]
		check_running_config?: bool
		domain_name?: [...]
		domain_search?: [...]
		hostname?: string
		name_servers?: [...]
		state?: string
	}
}

icx_user :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_user: {
		state?: string
		aggregate?: [...]
		check_running_config?: bool
		configured_password?:  string
		privilege?:            string
		update_password?:      string
		access_time?:          string
		name:                  string
		nopassword?:           bool
		purge?:                bool
	}
}

icx_vlan :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_vlan: {
		stp?: {...}
		delay?: int
		interfaces?: {...}
		name?: string
		aggregate?: [...]
		ip_arp_inspection?: bool
		purge?:             bool
		state?:             string
		tagged?: {...}
		check_running_config?: bool
		ip_dhcp_snooping?:     bool
		vlan_id:               int
		associated_interfaces?: [...]
		associated_tagged?: [...]
	}
}

icx_config :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_config: {
		backup?:  bool
		replace?: string
		before?: [...]
		intended_config?: string
		save_when?:       string
		after?: [...]
		defaults?:     bool
		diff_against?: string
		lines?: [...]
		match?: string
		parents?: [...]
		running_config?: string
		diff_ignore_lines?: [...]
		multiline_delimiter?: string
		src?:                 string
	}
}

icx_lldp :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_lldp: {
		interfaces?: [...]
		state?:                string
		check_running_config?: bool
	}
}

icx_logging :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_logging: {
		name?:     string
		state?:    string
		udp_port?: string
		aggregate?: [...]
		check_running_config?: bool
		dest?:                 string
		facility?:             string
		level?: [...]
	}
}

icx_copy :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_copy: {
		public_key?:     string
		remote_server:   string
		remote_user?:    string
		upload?:         string
		download?:       string
		protocol:        string
		remote_filename: string
		remote_pass?:    string
		remote_port?:    string
	}
}

icx_command :: {
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	become?: bool
	icx_command: {
		interval?: int
		match?:    string
		retries?:  int
		wait_for?: [...]
		commands: [...]
	}
}
