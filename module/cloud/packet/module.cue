package packet

packet_ip_subnet :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	name?:       string
	with_items?: [...string]
	become?:   bool
	register?: string
	packet_ip_subnet: {
		device_id?:    string
		hostname?:     string
		project_id:    string
		state?:        string
		auth_token?:   string
		cidr?:         string
		device_count?: int
	}
}

packet_project :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	name?:       string
	with_items?: [...string]
	become?:   bool
	register?: string
	packet_project: {
		auth_token?:     string
		custom_data?:    string
		id?:             string
		name?:           string
		org_id?:         string
		payment_method?: string
		state?:          string
	}
}

packet_sshkey :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	name?:       string
	with_items?: [...string]
	become?:   bool
	register?: string
	packet_sshkey: {
		id?:          string
		key?:         string
		key_file?:    string
		label?:       string
		state?:       string
		auth_token?:  string
		fingerprint?: string
	}
}

packet_volume :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	name?:       string
	with_items?: [...string]
	become?:   bool
	register?: string
	packet_volume: {
		facility?:  string
		id?:        string
		name?:      string
		project_id: string
		size?:      int
		snapshot_policy?: {...}
		auth_token?:    string
		description?:   string
		plan?:          string
		state?:         string
		billing_cycle?: string
		locked?:        bool
	}
}

packet_volume_attachment :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	name?:       string
	with_items?: [...string]
	become?:   bool
	register?: string
	packet_volume_attachment: {
		auth_token?: string
		device?:     string
		project_id?: string
		state?:      string
		volume?:     string
	}
}

packet_device :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	name?:       string
	with_items?: [...string]
	become?:   bool
	register?: string
	packet_device: {
		device_ids?:          string
		ipxe_script_url?:     string
		always_pxe?:          bool
		features?:            string
		plan?:                string
		project_id:           string
		wait_for_public_IPv?: string
		wait_timeout?:        string
		count?:               string
		count_offset?:        string
		facility?:            string
		hostnames?:           string
		locked?:              bool
		operating_system?:    string
		state?:               string
		user_data?:           string
		auth_token?:          string
	}
}
