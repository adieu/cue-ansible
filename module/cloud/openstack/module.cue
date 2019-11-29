package openstack

os_coe_cluster :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_coe_cluster: {
		availability_zone?:  string
		discovery_url?:      string
		docker_volume_size?: string
		keypair?:            string
		master_count?:       string
		master_flavor_id?:   string
		name:                string
		state?:              string
		timeout?:            string
		cluster_template_id: string
		flavor_id?:          string
		labels?:             string
		node_count?:         string
	}
}

os_ironic_node :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_ironic_node: {
		ironic_url?:         string
		power?:              string
		timeout?:            string
		uuid?:               string
		wait?:               bool
		availability_zone?:  string
		deploy?:             bool
		instance_info?:      string
		state?:              string
		config_drive?:       string
		maintenance?:        bool
		maintenance_reason?: string
	}
}

os_project_info :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_project_info: {
		availability_zone?: string
		domain?:            string
		filters?:           string
		name:               string
	}
}

os_port_info :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_port_info: {
		availability_zone?: string
		filters?:           string
		port?:              string
	}
}

os_server_metadata :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_server_metadata: {
		availability_zone?: string
		meta:               string
		server:             string
		state?:             string
	}
}

os_client_config :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_client_config: {
		clouds?: string
	}
}

os_networks_info :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_networks_info: {
		availability_zone?: string
		filters?:           string
		name?:              string
	}
}

os_security_group_rule :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_security_group_rule: {
		project?:           string
		security_group:     string
		availability_zone?: string
		direction?:         string
		ethertype?:         string
		remote_group?:      string
		remote_ip_prefix?:  string
		state?:             string
		port_range_max?:    string
		port_range_min?:    string
		protocol?:          string
	}
}

os_pool :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_pool: {
		availability_zone?: string
		listener?:          string
		wait?:              bool
		state?:             string
		timeout?:           string
		lb_algorithm?:      string
		loadbalancer?:      string
		name:               string
		protocol?:          string
	}
}

os_project_access :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_project_access: {
		resource_type?:     string
		state?:             string
		target_project_id:  string
		availability_zone?: string
		resource_name?:     string
	}
}

os_user_role :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_user_role: {
		availability_zone?: string
		domain?:            string
		group?:             string
		project?:           string
		role:               string
		state?:             string
		user?:              string
	}
}

os_zone :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_zone: {
		zone_type?:         string
		availability_zone?: string
		description?:       string
		email?:             string
		masters?:           string
		name:               string
		state?:             string
		ttl?:               string
	}
}

os_server_action :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_server_action: {
		wait?:              bool
		action?:            string
		availability_zone?: string
		image?:             string
		server:             string
		timeout?:           string
	}
}

os_nova_host_aggregate :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_nova_host_aggregate: {
		availability_zone?: string
		hosts?:             string
		metadata?:          string
		name:               string
		state?:             string
	}
}

os_user_info :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_user_info: {
		availability_zone?: string
		domain?:            string
		filters?:           string
		name:               string
	}
}

os_group :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_group: {
		domain_id?:         string
		name:               string
		state?:             string
		availability_zone?: string
		description?:       string
	}
}

os_stack :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_stack: {
		tag?:               string
		template?:          string
		name:               string
		rollback?:          bool
		state?:             string
		timeout?:           string
		availability_zone?: string
		environment?:       string
		parameters?:        string
	}
}

os_floating_ip :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_floating_ip: {
		wait?:                bool
		floating_ip_address?: string
		network?:             string
		server:               string
		state?:               string
		timeout?:             string
		availability_zone?:   string
		fixed_address?:       string
		nat_destination?:     string
		purge?:               bool
		reuse?:               bool
	}
}

os_object :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_object: {
		availability_zone?: string
		container:          string
		container_access?:  string
		filename?:          string
		name?:              string
		state?:             string
	}
}

os_recordset :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_recordset: {
		records:            string
		recordset_type:     string
		state?:             string
		ttl?:               string
		zone:               string
		availability_zone?: string
		description?:       string
		name:               string
	}
}

os_image :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_image: {
		disk_format?:       string
		id?:                string
		properties?:        string
		ramdisk?:           string
		availability_zone?: string
		container_format?:  string
		min_ram?:           string
		min_disk?:          string
		name:               string
		protected?:         bool
		kernel?:            string
		owner?:             string
		state?:             string
		volume?:            string
		checksum?:          string
		filename?:          string
		is_public?:         bool
	}
}

os_quota :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_quota: {
		rbac_policy?:          string
		volumes?:              string
		injected_file_size?:   string
		per_volume_gigabytes?: string
		security_group_rule?:  string
		snapshots?:            string
		snapshots_lvm?:        string
		floatingip?:           string
		injected_files?:       string
		pool?:                 string
		properties?:           string
		loadbalancer?:         string
		name:                  string
		subnet?:               string
		fixed_ips?:            string
		floating_ips?:         string
		injected_path_size?:   string
		key_pairs?:            string
		port?:                 string
		ram?:                  string
		subnetpool?:           string
		backup_gigabytes?:     string
		backups?:              string
		gigabytes?:            string
		network?:              string
		gigabytes_lvm?:        string
		instances?:            string
		router?:               string
		state?:                string
		security_group?:       string
		server_group_members?: string
		server_groups?:        string
		availability_zone?:    string
		cores?:                string
		volumes_lvm?:          string
	}
}

os_router :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_router: {
		enable_snat?:        bool
		external_fixed_ips?: string
		interfaces?:         string
		project?:            string
		admin_state_up?:     bool
		availability_zone?:  string
		state?:              string
		name:                string
		network?:            string
	}
}

os_loadbalancer :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_loadbalancer: {
		auto_public_ip?:    bool
		timeout?:           string
		vip_network?:       string
		vip_subnet?:        string
		delete_public_ip?:  bool
		vip_port?:          string
		availability_zone?: string
		listeners?:         string
		public_network?:    string
		vip_address?:       string
		name:               string
		public_ip_address?: string
		state?:             string
		wait?:              bool
	}
}

os_server_info :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_server_info: {
		all_projects?:      bool
		availability_zone?: string
		detailed?:          bool
		filters?:           string
		server?:            string
	}
}

os_listener :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_listener: {
		state?:             string
		timeout?:           string
		wait?:              bool
		availability_zone?: string
		loadbalancer:       string
		name:               string
		protocol?:          string
		protocol_port?:     string
	}
}

os_server_group :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_server_group: {
		availability_zone?: string
		name:               string
		policies?:          string
		state?:             string
	}
}

os_auth :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_auth: {
		availability_zone?: string
	}
}

os_coe_cluster_template :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_coe_cluster_template: {
		external_network_id?:   string
		fixed_network?:         string
		image_id?:              string
		labels?:                string
		master_flavor_id?:      string
		master_lb_enabled?:     bool
		dns_nameserver?:        string
		docker_storage_driver?: string
		server_type?:           string
		flavor_id?:             string
		name:                   string
		no_proxy?:              string
		coe?:                   string
		docker_volume_size?:    string
		http_proxy?:            string
		keypair_id?:            string
		network_driver?:        string
		state?:                 string
		availability_zone?:     string
		fixed_subnet?:          string
		public?:                bool
		registry_enabled?:      bool
		tls_disabled?:          bool
		volume_driver?:         string
		floating_ip_enabled?:   bool
		https_proxy?:           string
	}
}

os_group_info :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_group_info: {
		availability_zone?: string
		domain?:            string
		filters?: {...}
		name: string
	}
}

os_security_group :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_security_group: {
		availability_zone?: string
		description?:       string
		name:               string
		project?:           string
		state?:             string
	}
}

os_volume_snapshot :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_volume_snapshot: {
		force?:               bool
		state?:               string
		volume:               string
		availability_zone?:   string
		display_description?: string
		display_name:         string
	}
}

os_server :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_server: {
		userdata?:          string
		boot_volume?:       string
		flavor?:            string
		flavor_include?:    string
		floating_ip_pools?: string
		scheduler_hints?:   string
		flavor_ram?:        string
		timeout?:           string
		volume_size?:       string
		volumes?:           string
		boot_from_volume?:  bool
		delete_fip?:        bool
		meta?:              string
		name:               string
		image:              string
		nics?:              string
		wait?:              bool
		network?:           string
		reuse_ips?:         bool
		security_groups?:   string
		terminate_volume?:  bool
		availability_zone?: string
		config_drive?:      bool
		floating_ips?:      string
		state?:             string
		auto_ip?:           bool
		image_exclude?:     string
		key_name?:          string
	}
}

os_subnet :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_subnet: {
		allocation_pool_end?:    string
		allocation_pool_start?:  string
		availability_zone?:      string
		ipv6_address_mode?:      string
		network_name?:           string
		project?:                string
		dns_nameservers?:        string
		ip_version?:             string
		no_gateway_ip?:          bool
		cidr?:                   string
		host_routes?:            string
		ipv6_ra_mode?:           string
		enable_dhcp?:            bool
		extra_specs?:            string
		gateway_ip?:             string
		name:                    string
		state?:                  string
		use_default_subnetpool?: bool
	}
}

os_user :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_user: {
		default_project?:   string
		domain?:            string
		enabled?:           bool
		name:               string
		state?:             string
		availability_zone?: string
		email?:             string
		password?:          string
		update_password?:   string
		description?:       string
	}
}

os_flavor_info :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_flavor_info: {
		limit?:             string
		name?:              string
		ram?:               bool
		vcpus?:             bool
		availability_zone?: string
		ephemeral?:         bool
	}
}

os_image_info :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_image_info: {
		availability_zone?: string
		image?:             string
		properties?: {...}
	}
}

os_keystone_domain_info :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_keystone_domain_info: {
		availability_zone?: string
		filters?:           string
		name?:              string
	}
}

os_keystone_endpoint :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_keystone_endpoint: {
		enabled?:           bool
		endpoint_interface: string
		region?:            string
		service:            string
		state?:             string
		url:                string
	}
}

os_keystone_role :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_keystone_role: {
		availability_zone?: string
		name:               string
		state?:             string
	}
}

os_volume :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_volume: {
		scheduler_hints?:     string
		size?:                string
		snapshot_id?:         string
		state?:               string
		availability_zone?:   string
		display_name:         string
		image?:               string
		metadata?:            string
		volume?:              string
		volume_type?:         string
		display_description?: string
	}
}

os_subnets_info :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_subnets_info: {
		availability_zone?: string
		filters?:           string
		name?:              string
	}
}

os_ironic_inspect :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_ironic_inspect: {
		name?:              string
		timeout?:           string
		uuid?:              string
		availability_zone?: string
		ironic_url?:        string
		mac?:               string
	}
}

os_keypair :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_keypair: {
		public_key_file?:   string
		state?:             string
		availability_zone?: string
		name:               string
		public_key?:        string
	}
}

os_keystone_domain :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_keystone_domain: {
		state?:             string
		availability_zone?: string
		description?:       string
		enabled?:           bool
		name:               string
	}
}

os_project :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_project: {
		availability_zone?: string
		description?:       string
		domain_id?:         string
		enabled?:           bool
		name:               string
		state?:             string
	}
}

os_user_group :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_user_group: {
		availability_zone?: string
		group:              string
		state?:             string
		user:               string
	}
}

os_ironic :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_ironic: {
		ironic_url?:                     string
		name?:                           string
		availability_zone?:              string
		driver:                          string
		driver_info?:                    string
		skip_update_of_driver_password?: bool
		state?:                          string
		uuid?:                           string
		chassis_uuid?:                   string
		nics:                            string
		properties?:                     string
	}
}

os_keystone_service :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_keystone_service: {
		service_type:       string
		state?:             string
		availability_zone?: string
		description?:       string
		enabled?:           bool
		name:               string
	}
}

os_member :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_member: {
		address?:           string
		availability_zone?: string
		name:               string
		pool:               string
		protocol_port?:     string
		subnet_id?:         string
		timeout?:           string
		state?:             string
		wait?:              bool
	}
}

os_port :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_port: {
		vnic_type?:             string
		admin_state_up?:        bool
		allowed_address_pairs?: string
		fixed_ips?:             string
		mac_address?:           string
		port_security_enabled?: bool
		device_owner?:          string
		extra_dhcp_opts?:       string
		name?:                  string
		no_security_groups?:    bool
		device_id?:             string
		network:                string
		availability_zone?:     string
		security_groups?:       string
		state?:                 string
	}
}

os_nova_flavor :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_nova_flavor: {
		ephemeral?:         string
		extra_specs?:       string
		flavorid?:          string
		rxtx_factor?:       string
		availability_zone?: string
		disk?:              int
		ram?:               string
		state?:             string
		swap?:              string
		vcpus?:             string
		is_public?:         bool
		name:               string
	}
}

os_server_volume :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_server_volume: {
		availability_zone?: string
		device?:            string
		server:             string
		state?:             string
		volume:             string
	}
}

os_network :: {
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:     string
	notify?:   string | [...string]
	become?:   bool
	register?: string
	os_network: {
		external?:                  bool
		port_security_enabled?:     bool
		provider_physical_network?: string
		shared?:                    bool
		state?:                     string
		availability_zone?:         string
		dns_domain?:                string
		name:                       string
		project?:                   string
		provider_network_type?:     string
		provider_segmentation_id?:  string
		admin_state_up?:            bool
		mtu?:                       int
	}
}
