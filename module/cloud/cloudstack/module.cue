package cloudstack

cs_volume :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_volume: {
		format?:         string
		name:            string
		poll_async?:     bool
		state?:          string
		device_id?:      int
		domain?:         string
		snapshot?:       string
		custom_id?:      string
		min_iops?:       int
		display_volume?: bool
		max_iops?:       int
		project?:        string
		zone?:           string
		account?:        string
		disk_offering?:  string
		shrink_ok?:      bool
		size?:           int
		tags?: [...]
		url?:   string
		vm?:    string
		force?: bool
		mode?:  string
	}
}

cs_host :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_host: {
		cluster?: string
		host_tags?: [...]
		hypervisor?:       string
		pod?:              string
		username?:         string
		zone?:             string
		allocation_state?: string
		name:              string
		password?:         string
		state?:            string
		url?:              string
	}
}

cs_instancegroup :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_instancegroup: {
		project?: string
		state?:   string
		account?: string
		domain?:  string
		name:     string
	}
}

cs_pod :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_pod: {
		gateway?:  string
		id?:       string
		name:      string
		netmask?:  string
		start_ip?: string
		state?:    string
		zone?:     string
		end_ip?:   string
	}
}

cs_instance_facts :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_instance_facts: {
		account?: string
		domain?:  string
		name:     string
		project?: string
	}
}

cs_loadbalancer_rule :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_loadbalancer_rule: {
		open_firewall?: bool
		poll_async?:    bool
		state?:         string
		zone?:          string
		algorithm?:     string
		protocol?:      string
		vpc?:           string
		network?:       string
		private_port?:  int
		public_port:    int
		tags?: [...]
		account?:     string
		description?: string
		name:         string
		project?:     string
		cidr?:        string
		domain?:      string
		ip_address:   string
	}
}

cs_network_offering :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_network_offering: {
		conserve_mode?:         bool
		egress_default_policy?: string
		for_vpc?:               bool
		guest_ip_type?:         string
		traffic_type?:          string
		availability?:          string
		persistent?:            bool
		state?:                 string
		display_text?:          string
		max_connections?:       int
		service_capabilities?: [...]
		service_offering?: string
		details?: [...]
		keepalive_enabled?: bool
		name:               string
		network_rate?:      int
		service_providers?: [...]
		specify_ip_ranges?: bool
		specify_vlan?:      bool
		supported_services?: [...]
	}
}

cs_securitygroup :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_securitygroup: {
		state?:       string
		account?:     string
		description?: string
		domain?:      string
		name:         string
		project?:     string
	}
}

cs_ip_address :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_ip_address: {
		tags?: [...]
		zone?:       string
		account?:    string
		domain?:     string
		project?:    string
		state?:      string
		ip_address?: string
		network?:    string
		poll_async?: bool
		vpc?:        string
	}
}

cs_iso :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_iso: {
		checksum?:    string
		state?:       string
		is_featured?: bool
		is_ready?:    bool
		iso_filter?:  string
		name:         string
		poll_async?:  bool
		tags?: [...]
		account?:                 string
		bootable?:                bool
		zone?:                    string
		project?:                 string
		url?:                     string
		cross_zones?:             bool
		is_public?:               bool
		is_dynamically_scalable?: bool
		os_type?:                 string
		display_text?:            string
		domain?:                  string
	}
}

cs_physical_network :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_physical_network: {
		vlan?:          string
		domain?:        string
		network_speed?: string
		nsps_disabled?: [...]
		nsps_enabled?: [...]
		poll_async?:             bool
		tags?:                   string
		broadcast_domain_range?: string
		isolation_method?:       string
		name:                    string
		state?:                  string
		zone?:                   string
	}
}

cs_project :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_project: {
		account?:      string
		display_text?: string
		domain?:       string
		name:          string
		poll_async?:   bool
		state?:        string
		tags?: [...]
	}
}

cs_zone :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_zone: {
		dns1?:                   string
		dns2_ipv6?:              string
		guest_cidr_address?:     string
		local_storage_enabled?:  bool
		name:                    string
		dhcp_provider?:          string
		domain?:                 string
		dns2?:                   string
		internal_dns1?:          string
		network_type?:           string
		state?:                  string
		id?:                     string
		internal_dns2?:          string
		network_domain?:         string
		securitygroups_enabled?: bool
		dns1_ipv6?:              string
	}
}

cs_firewall :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_firewall: {
		network?:    string
		start_port?: int
		poll_async?: bool
		type?:       string
		domain?:     string
		icmp_code?:  int
		icmp_type?:  int
		protocol?:   string
		state?:      string
		tags?: [...]
		zone?:    string
		account?: string
		cidrs?: [...]
		end_port?:   int
		ip_address?: string
		project?:    string
	}
}

cs_resourcelimit :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_resourcelimit: {
		account?:      string
		domain?:       string
		limit?:        int
		project?:      string
		resource_type: string
	}
}

cs_snapshot_policy :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_snapshot_policy: {
		vm?:            string
		vpc?:           string
		account?:       string
		domain?:        string
		interval_type?: string
		state?:         string
		time_zone?:     string
		volume_type?:   string
		device_id?:     int
		max_snaps?:     int
		project?:       string
		schedule?:      string
		volume?:        string
	}
}

cs_vmsnapshot :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_vmsnapshot: {
		domain?:     string
		name:        string
		poll_async?: bool
		project?:    string
		state?:      string
		tags?: [...]
		account?:         string
		description?:     string
		zone?:            string
		snapshot_memory?: bool
		vm:               string
	}
}

cs_cluster :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_cluster: {
		ovm3_pool?:           string
		ovm3_vip?:            string
		username?:            string
		zone?:                string
		cluster_type?:        string
		password?:            string
		pod?:                 string
		public_vswitch_name?: string
		public_vswitch_type?: string
		guest_vswitch_type?:  string
		ovm3_cluster?:        string
		state?:               string
		vms_ip_address?:      string
		vms_password?:        string
		hypervisor?:          string
		name:                 string
		url?:                 string
		vms_username?:        string
		guest_vswitch_name?:  string
	}
}

cs_image_store :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_image_store: {
		url?:            string
		zone:            string
		force_recreate?: bool
		name:            string
		provider?:       string
		state?:          string
	}
}

cs_network :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_network: {
		display_text?:   string
		end_ipv6?:       string
		gateway_ipv6?:   string
		netmask?:        string
		poll_async?:     bool
		account?:        string
		acl_type?:       string
		domain?:         string
		network_domain?: string
		project?:        string
		start_ipv6?:     string
		tags?: [...]
		cidr_ipv6?:        string
		end_ip?:           string
		isolated_pvlan?:   string
		name:              string
		subdomain_access?: bool
		vpc?:              string
		acl?:              string
		clean_up?:         bool
		gateway?:          string
		network_offering?: string
		start_ip?:         string
		state?:            string
		vlan?:             string
		zone?:             string
	}
}

cs_user :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_user: {
		username:         string
		domain?:          string
		email?:           string
		password?:        string
		last_name?:       string
		poll_async?:      bool
		state?:           string
		timezone?:        string
		account?:         string
		first_name?:      string
		keys_registered?: bool
	}
}

cs_account :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_account: {
		domain?:         string
		ldap_domain?:    string
		name:            string
		username?:       string
		account_type?:   string
		first_name?:     string
		last_name?:      string
		network_domain?: string
		password?:       string
		role?:           string
		email?:          string
		ldap_type?:      string
		state?:          string
		timezone?:       string
		poll_async?:     bool
	}
}

cs_instance_nic_secondaryip :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_instance_nic_secondaryip: {
		poll_async?:  bool
		project?:     string
		vm:           string
		vm_guest_ip?: string
		zone?:        string
		domain?:      string
		network?:     string
		state?:       string
		vpc?:         string
		account?:     string
	}
}

cs_portforward :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_portforward: {
		zone?:     string
		network?:  string
		protocol?: string
		state?:    string
		tags?: [...]
		vm_guest_ip?:      string
		ip_address:        string
		poll_async?:       bool
		project?:          string
		public_port:       int
		account?:          string
		open_firewall?:    bool
		private_end_port?: int
		vm?:               string
		vpc?:              string
		domain?:           string
		private_port:      int
		public_end_port?:  int
	}
}

cs_sshkeypair :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_sshkeypair: {
		name:        string
		project?:    string
		public_key?: string
		state?:      string
		account?:    string
		domain?:     string
	}
}

cs_affinitygroup :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_affinitygroup: {
		affinity_type?: string
		description?:   string
		domain?:        string
		name:           string
		poll_async?:    bool
		project?:       string
		state?:         string
		account?:       string
	}
}

cs_configuration :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_configuration: {
		account?: string
		cluster?: string
		domain?:  string
		name:     string
		storage?: string
		value:    string
		zone?:    string
	}
}

cs_disk_offering :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_disk_offering: {
		hypervisor_snapshot_reserve?: int
		storage_tags?: [...]
		customized?:        bool
		display_text?:      string
		name:               string
		state?:             string
		iops_max?:          int
		iops_min?:          int
		disk_size?:         int
		display_offering?:  bool
		domain?:            string
		iops_read_rate?:    int
		iops_write_rate?:   int
		provisioning_type?: string
		storage_type?:      string
		bytes_read_rate?:   int
		bytes_write_rate?:  int
	}
}

cs_domain :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_domain: {
		poll_async?:     bool
		state?:          string
		clean_up?:       bool
		network_domain?: string
		path:            string
	}
}

cs_staticnat :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_staticnat: {
		zone?:        string
		ip_address:   string
		state?:       string
		vpc?:         string
		poll_async?:  bool
		project?:     string
		vm?:          string
		vm_guest_ip?: string
		account?:     string
		domain?:      string
		network?:     string
	}
}

cs_service_offering :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_service_offering: {
		host_tags?: [...]
		hypervisor_snapshot_reserve?: int
		is_iops_customized?:          bool
		system_vm_type?:              string
		cpu_speed?:                   int
		disk_bytes_read_rate?:        int
		display_text?:                string
		storage_type?:                string
		memory?:                      int
		disk_iops_write_rate?:        int
		is_system?:                   bool
		is_volatile?:                 bool
		disk_bytes_write_rate?:       int
		network_rate?:                int
		provisioning_type?:           string
		name:                         string
		state?:                       string
		storage_tags?: [...]
		deployment_planner?:  string
		domain?:              string
		is_customized?:       bool
		disk_iops_min?:       int
		disk_iops_read_rate?: int
		offer_ha?:            bool
		service_offering_details?: [...]
		cpu_number?:      int
		disk_iops_max?:   int
		limit_cpu_usage?: bool
	}
}

cs_vpc_offering :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_vpc_offering: {
		supported_services?: [...]
		display_text?: string
		name:          string
		poll_async?:   bool
		service_capabilities?: [...]
		service_offering?: string
		service_providers?: [...]
		state?: string
	}
}

cs_vpn_customer_gateway :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_vpn_customer_gateway: {
		domain?:    string
		ipsec_psk?: string
		account?:   string
		cidrs?: [...]
		dpd?:          bool
		ike_policy?:   string
		state?:        string
		esp_lifetime?: int
		poll_async?:   bool
		esp_policy?:   string
		force_encap?:  bool
		gateway?:      string
		ike_lifetime?: int
		name:          string
		project?:      string
	}
}

cs_vpc :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_vpc: {
		account?: string
		cidr?:    string
		name:     string
		zone?:    string
		project?: string
		state?:   string
		tags?: [...]
		clean_up?:       bool
		display_text?:   string
		domain?:         string
		network_domain?: string
		poll_async?:     bool
		vpc_offering?:   string
	}
}

cs_loadbalancer_rule_member :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_loadbalancer_rule_member: {
		account?:    string
		domain?:     string
		name:        string
		poll_async?: bool
		project?:    string
		state?:      string
		vms: [...]
		zone?:       string
		ip_address?: string
	}
}

cs_role :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_role: {
		description?: string
		name:         string
		role_type?:   string
		state?:       string
		uuid?:        string
	}
}

cs_instance_nic :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_instance_nic: {
		poll_async?: bool
		state?:      string
		vm:          string
		vpc?:        string
		zone?:       string
		account?:    string
		domain?:     string
		ip_address?: string
		network:     string
		project?:    string
	}
}

cs_securitygroup_rule :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_securitygroup_rule: {
		start_port?:          int
		state?:               string
		user_security_group?: string
		cidr?:                string
		icmp_type?:           int
		project?:             string
		protocol?:            string
		security_group:       string
		type?:                string
		end_port?:            int
		icmp_code?:           int
		poll_async?:          bool
	}
}

cs_storage_pool :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_storage_pool: {
		name:              string
		scope?:            string
		allocation_state?: string
		capacity_bytes?:   int
		managed?:          bool
		state?:            string
		capacity_iops?:    int
		pod?:              string
		provider?:         string
		cluster?:          string
		storage_url?:      string
		zone?:             string
		hypervisor?:       string
		storage_tags?: [...]
	}
}

cs_template :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_template: {
		checksum?:                string
		mode?:                    string
		poll_async?:              bool
		requires_hvm?:            bool
		vm?:                      string
		bits?:                    int
		sshkey_enabled?:          bool
		template_tag?:            string
		is_dynamically_scalable?: bool
		is_featured?:             bool
		cross_zones?:             bool
		is_public?:               bool
		is_ready?:                bool
		is_routing?:              bool
		name:                     string
		display_text?:            string
		snapshot?:                string
		template_filter?:         string
		details?:                 string
		os_type?:                 string
		url?:                     string
		domain?:                  string
		format?:                  string
		hypervisor?:              string
		password_enabled?:        bool
		project?:                 string
		state?:                   string
		tags?: [...]
		zone?:           string
		account?:        string
		is_extractable?: bool
		template_find_options?: [...]
	}
}

cs_vpn_gateway :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_vpn_gateway: {
		vpc:         string
		zone?:       string
		account?:    string
		domain?:     string
		poll_async?: bool
		project?:    string
		state?:      string
	}
}

cs_zone_facts :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_zone_facts: {
		zone: string
	}
}

cs_zone_info :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_zone_info: {
		zone?: string
	}
}

cs_facts :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_facts: {
		filter?:         string
		meta_data_host?: string
	}
}

cs_instance_password_reset :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_instance_password_reset: {
		account?:    string
		domain?:     string
		poll_async?: bool
		project?:    string
		vm:          string
		zone?:       string
	}
}

cs_network_acl :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_network_acl: {
		account?:     string
		project?:     string
		vpc:          string
		poll_async?:  bool
		state?:       string
		zone?:        string
		description?: string
		domain?:      string
		name:         string
	}
}

cs_router :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_router: {
		project?:          string
		service_offering?: string
		state?:            string
		zone?:             string
		account?:          string
		domain?:           string
		name:              string
		poll_async?:       bool
	}
}

cs_traffic_type :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_traffic_type: {
		kvm_networklabel?:    string
		ovm3_networklabel?:   string
		vlan?:                string
		zone?:                string
		hyperv_networklabel?: string
		isolation_method?:    string
		state?:               string
		traffic_type:         string
		vmware_networklabel?: string
		xen_networklabel?:    string
		physical_network:     string
		poll_async?:          bool
	}
}

cs_vlan_ip_range :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_vlan_ip_range: {
		end_ipv6?:            string
		gateway?:             string
		start_ipv6?:          string
		netmask?:             string
		end_ip?:              string
		for_virtual_network?: bool
		network?:             string
		project?:             string
		start_ip:             string
		zone?:                string
		account?:             string
		cidr_ipv6?:           string
		domain?:              string
		gateway_ipv6?:        string
		physical_network?:    string
		state?:               string
		vlan?:                string
	}
}

cs_instance_info :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_instance_info: {
		domain?:  string
		name?:    string
		project?: string
		account?: string
	}
}

cs_network_acl_rule :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_network_acl_rule: {
		poll_async?:   bool
		project?:      string
		rule_position: int
		tags?: [...]
		traffic_type?: string
		account?:      string
		domain?:       string
		end_port?:     int
		icmp_type?:    int
		protocol?:     string
		start_port?:   int
		state?:        string
		zone?:         string
		cidrs?: [...]
		network_acl:      string
		vpc:              string
		action_policy?:   string
		icmp_code?:       int
		protocol_number?: int
	}
}

cs_region :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_region: {
		endpoint?: string
		id:        int
		name?:     string
		state?:    string
	}
}

cs_vpn_connection :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_vpn_connection: {
		vpn_customer_gateway: string
		account?:             string
		domain?:              string
		vpc:                  string
		project?:             string
		state?:               string
		zone?:                string
		force?:               bool
		passive?:             bool
		poll_async?:          bool
	}
}

cs_role_permission :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_role_permission: {
		description?: string
		name:         string
		parent?:      string
		permission?:  string
		role:         string
		state?:       string
	}
}

cs_instance :: {
	name?: string
	vars?: {...}
	tags?: [...string]
	become?:   bool
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	cs_instance: {
		affinity_groups?: [...]
		name?:                   string
		project?:                string
		state?:                  string
		cpu_speed?:              int
		ip6_address?:            string
		root_disk_size?:         int
		template_filter?:        string
		account?:                string
		allow_root_disk_shrink?: bool
		group?:                  string
		iso?:                    string
		networks?: [...]
		service_offering?: string
		ssh_key?:          string
		disk_offering?:    string
		force?:            bool
		host?:             string
		ip_to_networks?: [...]
		poll_async?: bool
		details?: {...}
		tags?: [...]
		user_data?:    string
		cpu?:          int
		display_name?: string
		domain?:       string
		ip_address?:   string
		memory?:       int
		zone?:         string
		disk_size?:    int
		hypervisor?:   string
		keyboard?:     string
		security_groups?: [...]
		template?: string
	}
}
