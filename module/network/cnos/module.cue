package cnos

cnos_config :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_config: {
		before?:  string
		config?:  string
		lines?:   string
		replace?: string
		backup?:  bool
		after?:   string
		backup_options?: {...}
		comment?: string
		match?:   string
		parents?: string
		src?:     string
		admin?:   bool
	}
}

cnos_logging :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_logging: {
		aggregate?: string
		dest?:      string
		facility?:  string
		level?:     string
		name?:      string
		size?:      string
		state?:     string
	}
}

cnos_save :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_save: {
	}
}

cnos_static_route :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_static_route: {
		tag?:            string
		aggregate?:      string
		description?:    string
		interface?:      string
		mask?:           string
		prefix?:         string
		state?:          string
		admin_distance?: string
		next_hop?:       string
	}
}

cnos_template :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_template: {
		commandfile: string
	}
}

cnos_banner :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_banner: {
		banner:    string
		provider?: string
		state?:    string
		text?:     string
	}
}

cnos_linkagg :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_linkagg: {
		group?:     string
		members?:   string
		mode?:      string
		provider?:  string
		purge?:     bool
		state?:     string
		aggregate?: string
	}
}

cnos_lldp :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_lldp: {
		state?: string
	}
}

cnos_user :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_user: {
		configured_password?: string
		name?:                string
		purge?:               bool
		role?:                string
		sshkey?:              string
		state?:               string
		update_password?:     string
		aggregate?:           string
	}
}

cnos_conditional_template :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_conditional_template: {
		commandfile: string
		condition:   string
		flag:        string
	}
}

cnos_showrun :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_showrun: {
	}
}

cnos_system :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_system: {
		lookup_source?:  string
		name_servers?:   string
		state?:          string
		domain_name?:    string
		domain_search?:  string
		hostname?:       string
		lookup_enabled?: bool
	}
}

cnos_bgp :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_bgp: {
		bgpArg4?: string
		bgpArg5?: string
		bgpArg6?: string
		bgpArg7?: string
		asNum:    string
		bgpArg1:  string
		bgpArg2?: string
		bgpArg3?: string
		bgpArg8?: string
	}
}

cnos_interface :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_interface: {
		mtu?:         string
		name:         string
		neighbors?:   string
		speed?:       string
		state?:       string
		tx_rate?:     string
		rx_rate?:     string
		aggregate?:   string
		delay?:       string
		description?: string
		duplex?:      string
		enabled?:     bool
		provider?:    string
	}
}

cnos_facts :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_facts: {
		auth_pass?:     string
		authorize?:     bool
		gather_subset?: string
	}
}

cnos_reload :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_reload: {
	}
}

cnos_rollback :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_rollback: {
		configType:     string
		protocol:       string
		rcpath:         string
		rcserverip:     string
		serverpassword: string
		serverusername: string
	}
}

cnos_vlan :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_vlan: {
		purge?:                 bool
		state?:                 string
		delay?:                 string
		name?:                  string
		provider?:              string
		vlan_id:                string
		aggregate?:             string
		associated_interfaces?: string
		interfaces:             string
	}
}

cnos_factory :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_factory: {
	}
}

cnos_image :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_image: {
		serverip:        string
		serverpassword?: string
		serverusername:  string
		imgpath:         string
		imgtype:         string
		protocol:        string
	}
}

cnos_l2_interface :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_l2_interface: {
		name:                 string
		native_vlan?:         string
		provider?:            string
		trunk_allowed_vlans?: string
		access_vlan?:         string
		aggregate?:           string
		mode?:                string
		state?:               string
		trunk_vlans?:         string
	}
}

cnos_vlag :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_vlag: {
		vlagArg1:  string
		vlagArg2?: string
		vlagArg3?: string
		vlagArg4?: string
	}
}

cnos_backup :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_backup: {
		configType:     string
		protocol:       string
		rcpath:         string
		rcserverip:     string
		serverpassword: string
		serverusername: string
	}
}

cnos_command :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_command: {
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
	}
}

cnos_conditional_command :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_conditional_command: {
		clicommand: string
		condition:  string
		flag:       string
	}
}

cnos_l3_interface :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_l3_interface: {
		name?:      string
		provider?:  string
		state?:     string
		aggregate?: string
		ipv4?:      string
		ipv6?:      string
	}
}

cnos_vrf :: {
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	cnos_vrf: {
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
