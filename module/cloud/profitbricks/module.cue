package profitbricks

profitbricks :: {
	name?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	profitbricks: {
		datacenter?:            string
		remove_boot_volume?:    bool
		state?:                 string
		volume_size?:           string
		assign_public_ip?:      bool
		auto_increment?:        bool
		ssh_keys?:              string
		subscription_user?:     string
		instance_ids?:          string
		location?:              string
		name:                   string
		ram?:                   string
		bus?:                   string
		cpu_family?:            string
		image:                  string
		image_password?:        string
		subscription_password?: string
		wait_timeout?:          string
		cores?:                 string
		count?:                 string
		lan?:                   string
		wait?:                  bool
	}
}

profitbricks_datacenter :: {
	name?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	profitbricks_datacenter: {
		subscription_user?:     string
		wait?:                  bool
		wait_timeout?:          string
		description?:           string
		location?:              string
		name:                   string
		state?:                 string
		subscription_password?: string
	}
}

profitbricks_nic :: {
	name?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	profitbricks_nic: {
		state?:                 string
		subscription_password?: string
		subscription_user?:     string
		wait_timeout?:          string
		datacenter:             string
		name:                   string
		server:                 string
		wait?:                  bool
		lan:                    string
	}
}

profitbricks_volume :: {
	name?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	profitbricks_volume: {
		wait_timeout?:          string
		disk_type?:             string
		image:                  string
		licence_type?:          string
		ssh_keys?:              string
		state?:                 string
		wait?:                  bool
		auto_increment?:        bool
		datacenter:             string
		image_password?:        string
		name:                   string
		subscription_user?:     string
		bus?:                   string
		count?:                 string
		subscription_password?: string
		instance_ids?:          string
		size?:                  string
	}
}

profitbricks_volume_attachments :: {
	name?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	profitbricks_volume_attachments: {
		wait?:                  bool
		wait_timeout?:          string
		datacenter:             string
		server:                 string
		state?:                 string
		subscription_password?: string
		subscription_user?:     string
		volume:                 string
	}
}
