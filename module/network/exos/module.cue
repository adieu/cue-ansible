package exos

exos_lldp_interfaces :: {
	when?: string
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	exos_lldp_interfaces: {
		state?: string
		config?: [...{...}]
	}
}

exos_vlans :: {
	when?: string
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	exos_vlans: {
		config?: [...{...}]
		state?: string
	}
}

exos_command :: {
	when?: string
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	exos_command: {
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
	}
}

exos_config :: {
	when?: string
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	exos_config: {
		match?:           string
		replace?:         string
		save_when?:       string
		backup?:          bool
		intended_config?: string
		src?:             string
		diff_against?:    string
		backup_options?: {...}
		before?:            string
		diff_ignore_lines?: string
		running_config?:    string
		after?:             string
		lines?:             string
		defaults?:          bool
	}
}

exos_facts :: {
	when?: string
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	exos_facts: {
		gather_network_resources?: [...]
		gather_subset?: [...]
	}
}

exos_l2_interfaces :: {
	when?: string
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	exos_l2_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

exos_lldp_global :: {
	when?: string
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	exos_lldp_global: {
		config?: {...}
		state?: string
	}
}
