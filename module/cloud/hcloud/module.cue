package hcloud

hcloud_location_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_location_info: {
		id?:   int
		name?: string
	}
}

hcloud_network_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_network_info: {
		id?:             int
		label_selector?: string
		name?:           string
	}
}

hcloud_route :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_route: {
		network:     string
		state?:      string
		destination: string
		gateway:     string
	}
}

hcloud_server_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_server_info: {
		id?:             int
		label_selector?: string
		name?:           string
	}
}

hcloud_ssh_key_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_ssh_key_info: {
		fingerprint?:    string
		id?:             int
		label_selector?: string
		name?:           string
	}
}

hcloud_datacenter_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_datacenter_info: {
		id?:   int
		name?: string
	}
}

hcloud_floating_ip_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_floating_ip_info: {
		id?:             int
		label_selector?: string
	}
}

hcloud_image_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_image_info: {
		id?:             int
		label_selector?: string
		name?:           string
		type?:           string
	}
}

hcloud_network :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_network: {
		id?:       int
		ip_range?: string
		labels?: {...}
		name?:              string
		state?:             string
		delete_protection?: bool
	}
}

hcloud_ssh_key :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_ssh_key: {
		fingerprint?: string
		id?:          int
		labels?: {...}
		name?:       string
		public_key?: string
		state?:      string
	}
}

hcloud_floating_ip :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_floating_ip: {
		name?:              string
		type?:              string
		delete_protection?: bool
		force?:             bool
		labels?: {...}
		server?:        string
		state?:         string
		description?:   string
		home_location?: string
		id?:            int
	}
}

hcloud_rdns :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_rdns: {
		dns_ptr?:   string
		ip_address: string
		server:     string
		state?:     string
	}
}

hcloud_subnetwork :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_subnetwork: {
		ip_range:     string
		network:      string
		network_zone: string
		state?:       string
		type:         string
	}
}

hcloud_volume_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_volume_info: {
		id?:             int
		label_selector?: string
		name?:           string
	}
}

hcloud_server :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_server: {
		id?:                 int
		state?:              string
		rebuild_protection?: bool
		server_type?:        string
		upgrade_disk?:       bool
		volumes?: [...]
		datacenter?:    string
		force_upgrade?: bool
		image?:         string
		labels?: {...}
		location?:    string
		rescue_mode?: string
		ssh_keys?: [...]
		user_data?:         string
		backups?:           bool
		delete_protection?: bool
		name?:              string
	}
}

hcloud_server_network :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_server_network: {
		state?: string
		alias_ips?: [...]
		ip?:     string
		network: string
		server:  string
	}
}

hcloud_server_type_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_server_type_info: {
		id?:   int
		name?: string
	}
}

hcloud_volume :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	become?:     bool
	name?:       string
	hcloud_volume: {
		server?:    string
		size?:      int
		automount?: bool
		format?:    string
		labels?: {...}
		location?:          string
		name?:              string
		delete_protection?: bool
		id?:                int
		state?:             string
	}
}
