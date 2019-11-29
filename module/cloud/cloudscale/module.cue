package cloudscale

cloudscale_server_group :: {
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?:     bool
	name?:       string
	register?:   string
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	cloudscale_server_group: {
		name?:  string
		state?: string
		tags?: {...}
		type?: string
		uuid?: string
	}
}

cloudscale_volume :: {
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?:     bool
	name?:       string
	register?:   string
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	cloudscale_volume: {
		server_uuids?: [...]
		size_gb?: int
		state?:   string
		tags?: {...}
		type?: string
		uuid?: string
		name?: string
	}
}

cloudscale_floating_ip :: {
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?:     bool
	name?:       string
	register?:   string
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	cloudscale_floating_ip: {
		reverse_ptr?:   string
		server?:        string
		state?:         string
		ip?:            string
		ip_version?:    int
		prefix_length?: int
	}
}

cloudscale_server :: {
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?:     bool
	name?:       string
	register?:   string
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	cloudscale_server: {
		name?: string
		server_groups?: [...]
		user_data?:          string
		anti_affinity_with?: string
		force?:              bool
		image?:              string
		password?:           string
		tags?: {...}
		api_timeout?:         string
		state?:               string
		use_ipv6?:            bool
		uuid?:                string
		volume_size_gb?:      int
		bulk_volume_size_gb?: int
		flavor?:              string
		ssh_keys?: [...]
		use_private_network?: bool
		use_public_network?:  bool
	}
}
