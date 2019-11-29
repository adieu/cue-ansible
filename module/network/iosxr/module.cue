package iosxr

iosxr_banner :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_banner: {
		banner: string
		state?: string
		text?:  string
	}
}

iosxr_interfaces :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

iosxr_lldp_global :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_lldp_global: {
		config?: {...}
		state?: string
	}
}

iosxr_netconf :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_netconf: {
		netconf_port?: string
		netconf_vrf?:  string
		state?:        string
	}
}

iosxr_user :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_user: {
		aggregate?:           string
		configured_password?: string
		groups?:              string
		public_key?:          string
		public_key_contents?: string
		state?:               string
		admin?:               bool
		group?:               string
		name?:                string
		purge?:               bool
		update_password?:     string
	}
}

iosxr_command :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_command: {
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
	}
}

iosxr_system :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_system: {
		domain_search?:  string
		hostname?:       string
		lookup_enabled?: bool
		lookup_source?:  string
		name_servers?:   string
		state?:          string
		vrf?:            string
		domain_name?:    string
	}
}

iosxr_logging :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_logging: {
		dest?:           string
		level?:          string
		size?:           string
		state?:          string
		vrf?:            string
		aggregate?:      string
		facility?:       string
		hostnameprefix?: string
		name?:           string
	}
}

iosxr_facts :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_facts: {
		gather_network_resources?: string
		gather_subset?:            string
	}
}

iosxr_interface :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_interface: {
		aggregate?:   string
		rx_rate?:     string
		speed?:       string
		tx_rate?:     string
		active?:      string
		delay?:       string
		description?: string
		duplex?:      string
		enabled?:     bool
		mtu?:         string
		name:         string
		state?:       string
	}
}

iosxr_lacp_interfaces :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_lacp_interfaces: {
		config?: [...]
		state?: string
	}
}

iosxr_lag_interfaces :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_lag_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

iosxr_lldp_interfaces :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_lldp_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

iosxr_bgp :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_bgp: {
		config?:    string
		operation?: string
	}
}

iosxr_config :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_config: {
		match?:     string
		src?:       string
		backup?:    bool
		exclusive?: bool
		force?:     bool
		label?:     string
		after?:     string
		lines?:     string
		replace?:   string
		config?:    string
		parents?:   string
		admin?:     bool
		backup_options?: {...}
		before?:  string
		comment?: string
	}
}

iosxr_l2_interfaces :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_l2_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

iosxr_l3_interfaces :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_l3_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

iosxr_lacp :: {
	become?:     bool
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	iosxr_lacp: {
		state?: string
		config?: {...}
	}
}
