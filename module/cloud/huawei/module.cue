package huawei

hwc_vpc_security_group :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	hwc_vpc_security_group: {
		enterprise_project_id?: string
		name:                   string
		state?:                 string
		vpc_id?:                string
	}
}

hwc_vpc_security_group_rule :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	hwc_vpc_security_group_rule: {
		ethertype?:        string
		port_range_max?:   int
		port_range_min?:   int
		protocol?:         string
		remote_group_id?:  string
		state?:            string
		description?:      string
		direction:         string
		remote_ip_prefix?: string
		security_group_id: string
	}
}

hwc_vpc_subnet :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	hwc_vpc_subnet: {
		availability_zone?: string
		state?:             string
		vpc_id:             string
		name:               string
		timeouts?: {...}
		cidr:         string
		dhcp_enable?: bool
		dns_address?: [...]
		gateway_ip: string
	}
}

hwc_smn_topic :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	hwc_smn_topic: {
		display_name?: string
		name:          string
		state?:        string
	}
}

hwc_vpc_port :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	hwc_vpc_port: {
		name?:     string
		subnet_id: string
		extra_dhcp_opts?: [...]
		ip_address?: string
		security_groups?: [...]
		state?: string
		timeouts?: {...}
		admin_state_up?: bool
		allowed_address_pairs?: [...]
	}
}

hwc_vpc_private_ip :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	hwc_vpc_private_ip: {
		ip_address?: string
		state?:      string
		subnet_id:   string
	}
}

hwc_vpc_route :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	hwc_vpc_route: {
		destination: string
		next_hop:    string
		state?:      string
		type?:       string
		vpc_id:      string
	}
}

hwc_vpc_peering_connect :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	hwc_vpc_peering_connect: {
		description?: string
		local_vpc_id: string
		name:         string
		peering_vpc: {...}
		state?: string
		timeouts?: {...}
	}
}

hwc_ecs_instance :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	hwc_ecs_instance: {
		name: string
		server_metadata?: {...}
		availability_zone: string
		data_volumes?: [...]
		flavor_name: string
		image_id:    string
		server_tags?: {...}
		vpc_id:       string
		admin_pass?:  string
		description?: string
		timeouts?: {...}
		user_data?:            string
		enable_auto_recovery?: bool
		root_volume: {...}
		nics: [...]
		security_groups?: [...]
		ssh_key_name?:          string
		state?:                 string
		eip_id?:                string
		enterprise_project_id?: string
	}
}

hwc_evs_disk :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	hwc_evs_disk: {
		enable_share?:          bool
		enterprise_project_id?: string
		backup_id?:             string
		enable_scsi?:           bool
		size?:                  int
		timeouts?: {...}
		description?:       string
		enable_full_clone?: bool
		name:               string
		availability_zone:  string
		image_id?:          string
		state?:             string
		volume_type:        string
		encryption_id?:     string
		snapshot_id?:       string
	}
}

hwc_network_vpc :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	hwc_network_vpc: {
		cidr:   string
		name:   string
		state?: string
		timeouts?: {...}
	}
}

hwc_vpc_eip :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	hwc_vpc_eip: {
		dedicated_bandwidth?: {...}
		enterprise_project_id?: string
		ip_version?:            int
		ipv4_address?:          string
		port_id?:               string
		state?:                 string
		timeouts?: {...}
		type:                 string
		shared_bandwidth_id?: string
	}
}
