package lxd

lxd_container :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?:     bool
	name?:       string
	notify?:     string | [...string]
	connection?: string
	register?:   string
	lxd_container: {
		architecture?:            string
		client_cert?:             string
		client_key?:              string
		timeout?:                 string
		url?:                     string
		wait_for_ipv4_addresses?: bool
		config?:                  string
		ephemeral?:               bool
		force_stop?:              bool
		source?:                  string
		state?:                   string
		trust_password?:          string
		devices?:                 string
		snap_url?:                string
		name:                     string
	}
}

lxd_profile :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?:     bool
	name?:       string
	notify?:     string | [...string]
	connection?: string
	register?:   string
	lxd_profile: {
		client_key?:     string
		description?:    string
		name:            string
		new_name?:       string
		state?:          string
		url?:            string
		client_cert?:    string
		devices?:        string
		snap_url?:       string
		trust_password?: string
		config?:         string
	}
}
