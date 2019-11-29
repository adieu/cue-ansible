package scaleway

scaleway_snapshot_info :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_snapshot_info: {
		region: string
	}
}

scaleway_sshkey :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_sshkey: {
		api_url?:    string
		ssh_pub_key: string
		state?:      string
	}
}

scaleway_image_info :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_image_info: {
		region: string
	}
}

scaleway_ip_facts :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_ip_facts: {
		region: string
	}
}

scaleway_ip_info :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_ip_info: {
		region: string
	}
}

scaleway_organization_info :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_organization_info: {
		api_url?: string
	}
}

scaleway_security_group :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_security_group: {
		outbound_default_policy?: string
		region:                   string
		description?:             string
		name:                     string
		organization:             string
		organization_default?:    bool
		state?:                   string
		stateful:                 bool
		inbound_default_policy?:  string
	}
}

scaleway_ip :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_ip: {
		id?:          string
		organization: string
		region:       string
		reverse?:     string
		server?:      string
		state?:       string
	}
}

scaleway_security_group_info :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_security_group_info: {
		region: string
	}
}

scaleway_security_group_rule :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_security_group_rule: {
		direction:      string
		ip_range?:      string
		port:           int
		protocol:       string
		region:         string
		security_group: string
		state?:         string
		action:         string
	}
}

scaleway_server_info :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_server_info: {
		region: string
	}
}

scaleway_image_facts :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_image_facts: {
		region: string
	}
}

scaleway_lb :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_lb: {
		region:           string
		wait?:            bool
		wait_sleep_time?: string
		organization_id:  string
		name:             string
		state?:           string
		tags?:            string
		wait_timeout?:    string
		description:      string
	}
}

scaleway_organization_facts :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_organization_facts: {
		api_url?: string
	}
}

scaleway_snapshot_facts :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_snapshot_facts: {
		region: string
	}
}

scaleway_user_data :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_user_data: {
		region:     string
		server_id:  string
		user_data?: string
	}
}

scaleway_volume_info :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_volume_info: {
		region: string
	}
}

scaleway_compute :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_compute: {
		organization:     string
		public_ip?:       string
		region:           string
		state?:           string
		commercial_type:  string
		enable_ipv6?:     bool
		image:            string
		name?:            string
		wait?:            bool
		wait_timeout?:    string
		security_group?:  string
		tags?:            string
		wait_sleep_time?: string
	}
}

scaleway_security_group_facts :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_security_group_facts: {
		region: string
	}
}

scaleway_server_facts :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_server_facts: {
		region: string
	}
}

scaleway_volume :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_volume: {
		name:          string
		organization?: string
		region:        string
		size?:         string
		state?:        string
		volume_type?:  string
	}
}

scaleway_volume_facts :: {
	vars?: {...}
	when?:     string
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	scaleway_volume_facts: {
		region: string
	}
}
