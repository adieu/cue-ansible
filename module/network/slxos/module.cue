package slxos

slxos_facts :: {
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	slxos_facts: {
		gather_subset?: string
	}
}

slxos_l2_interface :: {
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	slxos_l2_interface: {
		native_vlan?:         string
		state?:               string
		trunk_allowed_vlans?: string
		trunk_vlans?:         string
		access_vlan?:         string
		aggregate?:           string
		mode?:                string
		name:                 string
	}
}

slxos_l3_interface :: {
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	slxos_l3_interface: {
		aggregate?: string
		ipv4?:      string
		ipv6?:      string
		name?:      string
		state?:     string
	}
}

slxos_lldp :: {
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	slxos_lldp: {
		state?: string
	}
}

slxos_command :: {
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	slxos_command: {
		match?:    string
		retries?:  string
		wait_for?: string
		commands:  string
		interval?: string
	}
}

slxos_interface :: {
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	slxos_interface: {
		speed?:       string
		tx_rate?:     string
		delay?:       string
		description?: string
		mtu?:         string
		neighbors?:   string
		state?:       string
		aggregate?:   string
		enabled?:     bool
		name:         string
		rx_rate?:     string
	}
}

slxos_linkagg :: {
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	slxos_linkagg: {
		group?:     string
		members?:   string
		mode?:      string
		purge?:     bool
		state?:     string
		aggregate?: string
	}
}

slxos_vlan :: {
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	slxos_vlan: {
		delay?:     string
		interfaces: string
		name?:      string
		purge?:     bool
		state?:     string
		vlan_id:    string
		aggregate?: string
	}
}

slxos_config :: {
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	slxos_config: {
		after?:               string
		before?:              string
		diff_against?:        string
		intended_config?:     string
		diff_ignore_lines?:   string
		lines?:               string
		multiline_delimiter?: string
		replace?:             string
		src?:                 string
		backup?:              bool
		backup_options?: {...}
		defaults?:       bool
		match?:          string
		parents?:        string
		running_config?: string
		save_when?:      string
	}
}
