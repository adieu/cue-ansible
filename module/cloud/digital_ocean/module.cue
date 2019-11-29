package digital_ocean

digital_ocean_floating_ip_info :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_floating_ip_info: {
	}
}

digital_ocean_region_info :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_region_info: {
	}
}

digital_ocean_size_info :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_size_info: {
	}
}

digital_ocean :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean: {
		region_id?:          string
		size_id?:            string
		ssh_pub_key?:        string
		wait_timeout?:       string
		command?:            string
		private_networking?: bool
		ssh_key_ids?:        string
		virtio?:             bool
		api_token?:          string
		state?:              string
		unique_name?:        bool
		wait?:               bool
		ipv6?:               bool
		id?:                 string
		image_id?:           string
		name?:               string
		user_data?:          string
		backups_enabled?:    bool
	}
}

digital_ocean_block_storage :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_block_storage: {
		region:       string
		snapshot_id?: string
		state:        string
		volume_name:  string
		block_size?:  string
		command:      string
		description?: string
		droplet_id?:  string
	}
}

digital_ocean_droplet :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_droplet: {
		wait?:               bool
		wait_timeout?:       string
		monitoring?:         bool
		size?:               string
		ssh_keys?:           string
		state?:              string
		volumes?:            string
		id?:                 string
		name?:               string
		oauth_token:         string
		image?:              string
		ipv6?:               bool
		private_networking?: bool
		region?:             string
		tags?:               string
		backups?:            bool
		unique_name?:        bool
		user_data?:          string
	}
}

digital_ocean_floating_ip :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_floating_ip: {
		state?:      string
		droplet_id?: string
		ip?:         string
		oauth_token: string
		region?:     string
	}
}

digital_ocean_sshkey :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_sshkey: {
		fingerprint?: string
		name?:        string
		oauth_token:  string
		ssh_pub_key?: string
		state?:       string
	}
}

digital_ocean_sshkey_facts :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_sshkey_facts: {
	}
}

digital_ocean_tag :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_tag: {
		name:           string
		resource_id?:   string
		resource_type?: string
		state?:         string
	}
}

digital_ocean_account_info :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_account_info: {
	}
}

digital_ocean_certificate :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_certificate: {
		certificate_chain?: string
		leaf_certificate?:  string
		name:               string
		private_key?:       string
		state?:             string
	}
}

digital_ocean_certificate_info :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_certificate_info: {
		certificate_id?: string
	}
}

digital_ocean_domain :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_domain: {
		state?: string
		id?:    string
		ip?:    string
		name?:  string
	}
}

digital_ocean_image_info :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_image_info: {
		image_type?: string
	}
}

digital_ocean_tag_info :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_tag_info: {
		tag_name?: string
	}
}

digital_ocean_domain_info :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_domain_info: {
		domain_name?: string
	}
}

digital_ocean_firewall_info :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_firewall_info: {
		name?: string
	}
}

digital_ocean_load_balancer_info :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_load_balancer_info: {
		load_balancer_id?: string
	}
}

digital_ocean_snapshot_info :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_snapshot_info: {
		snapshot_type?: string
		snapshot_id?:   string
	}
}

digital_ocean_sshkey_info :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_sshkey_info: {
	}
}

digital_ocean_volume_info :: {
	tags?: [...string]
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	digital_ocean_volume_info: {
		region_name?: string
	}
}
