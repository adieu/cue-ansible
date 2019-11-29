package f5

bigip_device_group_member :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_group_member: {
		device_group: string
		name:         string
		state?:       string
	}
}

bigip_gtm_monitor_bigip :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_monitor_bigip: {
		ignore_down_response?:     bool
		ip?:                       string
		state?:                    string
		timeout?:                  int
		aggregate_dynamic_ratios?: string
		interval?:                 int
		name:                      string
		parent?:                   string
		partition?:                string
		port?:                     string
	}
}

bigip_ike_peer :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_ike_peer: {
		presented_id_value?: string
		update_password?:    string
		verified_id_type?:   string
		verified_id_value?:  string
		version?: [...]
		phase1_cert?:                    string
		phase1_perfect_forward_secrecy?: string
		phase1_key?:                     string
		presented_id_type?:              string
		preshared_key?:                  string
		partition?:                      string
		phase1_auth_method?:             string
		state?:                          string
		name:                            string
		phase1_encryption_algorithm?:    string
		phase1_verify_peer_cert?:        bool
		remote_address?:                 string
		description?:                    string
		phase1_hash_algorithm?:          string
	}
}

bigip_monitor_tcp_half_open :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_monitor_tcp_half_open: {
		time_until_up?: int
		timeout?:       int
		description?:   string
		interval?:      int
		ip?:            string
		name:           string
		port?:          string
		state?:         string
		parent?:        string
		partition?:     string
	}
}

bigip_profile_http_compression :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_profile_http_compression: {
		gzip_memory_level?: int
		name:               string
		partition?:         string
		buffer_size?:       int
		description?:       string
		gzip_level?:        int
		gzip_window_size?:  int
		parent?:            string
		state?:             string
	}
}

bigip_snmp :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_snmp: {
		contact?:                    string
		device_warning_traps?:       string
		location?:                   string
		agent_authentication_traps?: string
		agent_status_traps?:         string
		allowed_addresses?:          _
	}
}

bigip_software_image :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_software_image: {
		force?: bool
		image?: string
		state?: string
	}
}

bigip_asm_dos_application :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_asm_dos_application: {
		scrubbing_enable?:        bool
		single_page_application?: bool
		state?:                   string
		trigger_irule?:           bool
		geolocations?: {...}
		profile:             string
		rtbh_duration?:      int
		rtbh_enable?:        bool
		scrubbing_duration?: int
		heavy_urls?: {...}
		mobile_detection?: {...}
		partition?: string
	}
}

bigip_device_traffic_group :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_traffic_group: {
		ha_group?:           string
		state?:              string
		auto_failback?:      bool
		auto_failback_time?: int
		ha_load_factor?:     int
		ha_order?: [...]
		mac_address?: string
		name:         string
		partition?:   string
	}
}

bigip_asm_policy_signature_set :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_asm_policy_signature_set: {
		state?:      string
		alarm?:      bool
		block?:      bool
		learn?:      bool
		name:        string
		partition?:  string
		policy_name: string
	}
}

bigip_gtm_pool_member :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_pool_member: {
		state?:            string
		type:              string
		virtual_server:    string
		description?:      string
		monitor?:          string
		pool:              string
		ratio?:            int
		replace_all_with?: bool
		aggregate?: [...]
		limits?: {...}
		member_order?: int
		partition?:    string
		server_name:   string
	}
}

bigip_imish_config :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_imish_config: {
		backup_options?: {...}
		running_config?: string
		diff_against?:   string
		diff_ignore_lines?: [...]
		intended_config?: string
		match?:           string
		route_domain?:    string
		lines?: [...]
		src?:       string
		save_when?: string
		after?: [...]
		backup?: bool
		before?: [...]
		parents?: [...]
		replace?: string
	}
}

bigip_profile_fastl4 :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_profile_fastl4: {
		ip_tos_to_client?:        string
		ip_ttl_v4?:               int
		ip_ttl_v6?:               int
		partition?:               string
		tcp_strip_sack?:          bool
		tcp_time_wait_timeout?:   int
		client_timeout?:          string
		idle_timeout?:            string
		loose_initialization?:    bool
		parent?:                  string
		rtt_from_client?:         bool
		state?:                   string
		tcp_handshake_timeout?:   string
		ip_ttl_mode?:             string
		link_qos_to_client?:      string
		server_sack?:             bool
		server_timestamp?:        bool
		link_qos_to_server?:      string
		rtt_from_server?:         bool
		name:                     string
		reassemble_fragments?:    bool
		tcp_close_timeout?:       string
		explicit_flow_migration?: bool
		keep_alive_interval?:     int
		tcp_timestamp_mode?:      string
		tcp_wscale_mode?:         string
		description?:             string
		loose_close?:             bool
		tcp_generate_isn?:        bool
		mss_override?:            int
		syn_cookie_mss?:          int
		reset_on_timeout?:        bool
		late_binding?:            bool
		receive_window_size?:     int
		timeout_recovery?:        string
		ip_df_mode?:              string
		ip_tos_to_server?:        string
	}
}

bigip_provision :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_provision: {
		state?:  string
		level?:  string
		memory?: string
		module:  string
	}
}

bigip_remote_syslog :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_remote_syslog: {
		name?:        string
		remote_host:  string
		remote_port?: string
		state?:       string
		local_ip?:    string
	}
}

bigip_snmp_community :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_snmp_community: {
		port?:                  int
		snmp_auth_password?:    string
		source?:                string
		state?:                 string
		ip_version?:            string
		name?:                  string
		partition?:             string
		oid?:                   string
		snmp_privacy_protocol?: string
		snmp_username?:         string
		update_password?:       string
		version?:               string
		access?:                string
		community?:             string
		snmp_auth_protocol?:    string
		snmp_privacy_password?: string
	}
}

bigip_static_route :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_static_route: {
		mtu?:             string
		name:             string
		pool?:            string
		reject?:          bool
		route_domain?:    int
		state?:           string
		vlan?:            string
		description?:     string
		destination?:     string
		gateway_address?: string
		netmask?:         string
		partition?:       string
	}
}

bigip_apm_acl :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_apm_acl: {
		path_match_case?: bool
		state?:           string
		type?:            string
		acl_order?:       int
		description?:     string
		entries?: [...]
		name:       string
		partition?: string
	}
}

bigip_vlan :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_vlan: {
		partition?:           string
		sflow_poll_interval?: int
		state?:               string
		untagged_interfaces?: [...]
		fail_safe?:    bool
		source_check?: bool
		tagged_interfaces?: [...]
		sflow_sampling_rate?: int
		tag?:                 int
		dag_round_robin?:     bool
		dag_tunnel?:          string
		description?:         string
		fail_safe_timeout?:   int
		interfaces?: [...]
		cmp_hash?:         string
		fail_safe_action?: string
		mtu?:              int
		name:              string
	}
}

bigip_gtm_global :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_global: {
		synchronization?:            bool
		synchronization_group_name?: string
		synchronize_zone_files?:     bool
	}
}

bigip_asm_policy_server_technology :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_asm_policy_server_technology: {
		name:        string
		partition?:  string
		policy_name: string
		state?:      string
	}
}

bigip_firewall_log_profile_network :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_firewall_log_profile_network: {
		log_matches_drop_rule?: {...}
		log_matches_reject_rule?: {...}
		log_message_fields?: [...]
		log_format_delimiter?: string
		log_storage_format?:   string
		state?:                string
		log_matches_accept_rule?: {...}
		log_publisher?: string
		log_tcp_events?: {...}
		log_translation_fields?: bool
		partition?:              string
		profile_name:            string
		log_ip_errors?: {...}
		log_tcp_errors?: {...}
		rate_limit?: string
	}
}

bigip_gtm_facts :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_facts: {
		include: string
		filter?: string
	}
}

bigip_gtm_wide_ip :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_wide_ip: {
		pool_lb_method: string
		state?:         string
		type?:          string
		aliases?: [...]
		irules?: [...]
		last_resort_pool?: string
		name:              string
		partition?:        string
		pools?: [...]
	}
}

bigip_message_routing_router :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_message_routing_router: {
		routes?: [...]
		mirrored_msg_sweeper_interval?: int
		name:                           string
		max_pending_bytes?:             int
		max_pending_messages?:          int
		state?:                         string
		traffic_group?:                 string
		type?:                          string
		use_local_connection?:          bool
		description?:                   string
		ignore_client_port?:            bool
		mirror?:                        bool
		inherited_traffic_group?:       bool
		max_retries?:                   int
		parent?:                        string
		partition?:                     string
	}
}

bigip_monitor_snmp_dca :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_monitor_snmp_dca: {
		disk_coefficient?:   string
		version?:            string
		memory_coefficient?: string
		memory_threshold?:   int
		state?:              string
		agent_type?:         string
		description?:        string
		interval?:           int
		parent?:             string
		partition?:          string
		time_until_up?:      int
		cpu_coefficient?:    string
		disk_threshold?:     int
		name:                string
		timeout?:            int
		community?:          string
		cpu_threshold?:      int
	}
}

bigip_appsvcs_extension :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_appsvcs_extension: {
		content:  _
		force?:   bool
		state?:   string
		tenants?: _
	}
}

bigip_firewall_rule :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_firewall_rule: {
		state?: string
		source?: [...]
		action?: string
		destination?: [...]
		parent_rule_list?: string
		partition?:        string
		protocol?:         string
		parent_policy?:    string
		schedule?:         string
		status?:           string
		rule_list?:        string
		description?:      string
		icmp_message?: [...]
		irule?:   string
		logging?: bool
		name:     string
	}
}

bigip_pool :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_pool: {
		name:       string
		partition?: string
		quorum?:    int
		state?:     string
		lb_method?: string
		monitors?: [...]
		priority_group_activation?: int
		slow_ramp_time?:            int
		service_down_action?:       string
		description?:               string
		monitor_type?:              string
		replace_all_with?:          bool
		reselect_tries?:            int
		aggregate?: [...]
		metadata?: _
	}
}

bigip_profile_persistence_cookie :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_profile_persistence_cookie: {
		encryption_passphrase?: string
		cookie_name?:           string
		description?:           string
		expiration?: {...}
		name:                       string
		partition?:                 string
		update_password?:           string
		cookie_method?:             string
		cookie_encryption?:         string
		match_across_virtuals?:     bool
		override_connection_limit?: bool
		secure?:                    bool
		always_send?:               bool
		http_only?:                 bool
		match_across_pools?:        bool
		match_across_services?:     bool
		parent?:                    string
		state?:                     string
		encrypt_cookie_pool_name?:  bool
	}
}

bigip_tunnel :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_tunnel: {
		auto_last_hop?:     string
		key?:               int
		partition?:         string
		secondary_address?: string
		state?:             string
		mode?:              string
		name:               string
		tos?:               string
		use_pmtu?:          bool
		profile?:           string
		traffic_group?:     string
		description?:       string
		local_address?:     string
		mtu?:               int
		remote_address?:    string
		transparent?:       bool
	}
}

bigip_ucs :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_ucs: {
		reset_trust?:                  bool
		state?:                        string
		ucs?:                          string
		force?:                        bool
		include_chassis_level_config?: bool
		no_license?:                   bool
		no_platform_check?:            bool
		passphrase?:                   string
	}
}

bigip_vcmp_guest :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_vcmp_guest: {
		initial_image?:       string
		min_number_of_slots?: int
		number_of_slots?:     int
		partition?:           string
		cores_per_slot?:      int
		name:                 string
		state?:               string
		vlans?: [...]
		initial_hotfix?: string
		mgmt_address?:   string
		mgmt_network?:   string
		mgmt_route?:     string
		allowed_slots?: [...]
		delete_virtual_disk?: bool
	}
}

bigip_device_trust :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_trust: {
		peer_hostname?: string
		peer_password?: string
		peer_server:    string
		peer_user?:     string
		state?:         string
		type?:          string
	}
}

bigip_monitor_dns :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_monitor_dns: {
		description?:              string
		name:                      string
		port?:                     string
		receive?:                  string
		timeout?:                  int
		accept_rcode?:             string
		allowed_divergence_type?:  string
		partition?:                string
		query_type?:               string
		state?:                    string
		up_interval?:              int
		ip?:                       string
		parent?:                   string
		answer_section_contains?:  string
		interval?:                 int
		query_name?:               string
		transparent?:              bool
		adaptive?:                 bool
		adaptive_limit?:           int
		reverse?:                  bool
		sampling_timespan?:        int
		time_until_up?:            int
		allowed_divergence_value?: int
		manual_resume?:            bool
	}
}

bigip_profile_tcp :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_profile_tcp: {
		proxy_options?:                  bool
		state?:                          string
		early_retransmit?:               bool
		idle_timeout?:                   string
		initial_congestion_window_size?: int
		initial_receive_window_size?:    int
		nagle?:                          string
		name:                            string
		time_wait_recycle?:              bool
		parent?:                         string
		partition?:                      string
		syn_rto_base?:                   int
	}
}

bigip_gtm_server :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_server: {
		availability_requirements?: {...}
		partition?: string
		state?:     string
		iquery_options?: {...}
		name:               string
		prober_preference?: string
		limits?: {...}
		monitors?: [...]
		prober_pool?: string
		server_type?: string
		datacenter?:  string
		devices?: [...]
		link_discovery?:           string
		prober_fallback?:          string
		virtual_server_discovery?: string
	}
}

bigip_firewall_address_list :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_firewall_address_list: {
		address_lists?: [...]
		addresses?: [...]
		geo_locations?: [...]
		name:   string
		state?: string
		address_ranges?: [...]
		description?: string
		fqdns?: [...]
		partition?: string
	}
}

bigip_virtual_server :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_virtual_server: {
		rate_limit?:                  int
		address_translation?:         bool
		default_persistence_profile?: string
		ip_protocol?:                 string
		rate_limit_dst_mask?:         int
		source?:                      string
		type?:                        string
		clone_pools?: [...]
		firewall_staged_policy?: string
		pool?:                   string
		rate_limit_mode?:        string
		security_nat_policy?: {...}
		source_port?: string
		snat?:        string
		state?:       string
		irules?: [...]
		metadata?: _
		profiles?: [...]
		partition?:           string
		rate_limit_src_mask?: int
		security_log_profiles?: [...]
		description?:                  string
		fallback_persistence_profile?: string
		name:                          string
		disabled_vlans?: [...]
		enabled_vlans?: [...]
		mirror?:                   bool
		firewall_enforced_policy?: string
		insert_metadata?:          bool
		port_translation?:         bool
		policies?: [...]
		port?:                   string
		destination?:            string
		ip_intelligence_policy?: string
		mask?:                   string
	}
}

bigiq_application_http :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigiq_application_http: {
		add_analytics?: bool
		description?:   string
		inbound_virtual?: {...}
		name: string
		servers?: [...]
		service_environment?: string
		state?:               string
		wait?:                bool
	}
}

bigiq_regkey_license_assignment :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigiq_regkey_license_assignment: {
		managed?:         bool
		pool:             string
		state?:           string
		device?:          string
		device_password?: string
		device_port?:     int
		device_username?: string
		key:              string
	}
}

bigip_asm_policy_fetch :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_asm_policy_fetch: {
		binary?:    bool
		compact?:   bool
		dest?:      string
		file?:      string
		base64?:    bool
		force?:     bool
		inline?:    bool
		name:       string
		partition?: string
	}
}

bigip_device_auth :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_auth: {
		use_for_auth?:   bool
		service_name?:   string
		state?:          string
		secret?:         string
		servers?:        _
		type?:           string
		update_secret?:  string
		authentication?: string
		protocol_name?:  string
	}
}

bigip_gtm_monitor_https :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_monitor_https: {
		ignore_down_response?: bool
		ip?:                   string
		port?:                 string
		receive?:              string
		transparent?:          bool
		update_password?:      string
		cipher_list?:          string
		parent?:               string
		probe_timeout?:        int
		state?:                string
		client_key?:           string
		compatibility?:        bool
		reverse?:              bool
		timeout?:              int
		client_cert?:          string
		name:                  string
		partition?:            string
		send?:                 string
		target_password?:      string
		target_username?:      string
		interval?:             int
	}
}

bigip_irule :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_irule: {
		partition?: string
		src:        string
		state?:     string
		content?:   string
		module:     string
		name:       string
	}
}

bigip_lx_package :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_lx_package: {
		package?: string
		state?:   string
	}
}

bigip_smtp :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_smtp: {
		local_host_name?:      string
		name:                  string
		smtp_server?:          string
		encryption?:           string
		from_address?:         string
		partition?:            string
		smtp_server_password?: string
		smtp_server_port?:     int
		smtp_server_username?: string
		state?:                string
		update_password?:      string
		authentication?:       bool
	}
}

bigip_asm_policy_manage :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_asm_policy_manage: {
		active?:    bool
		name:       string
		partition?: string
		state?:     string
		template?:  string
	}
}

bigip_gtm_topology_region :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_topology_region: {
		state?:     string
		name:       string
		partition?: string
		region_members?: [...]
	}
}

bigip_message_routing_peer :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_message_routing_peer: {
		description?:           string
		number_of_connections?: int
		partition?:             string
		transport_config?:      string
		connection_mode?:       string
		auto_init_interval?:    int
		name:                   string
		pool?:                  string
		ratio?:                 int
		state?:                 string
		type?:                  string
		auto_init?:             bool
	}
}

bigip_message_routing_transport_config :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_message_routing_transport_config: {
		partition?:   string
		src_port?:    int
		type?:        string
		description?: string
		name:         string
		src_addr_translation?: {...}
		state?: string
		profiles?: [...]
		rules?: [...]
	}
}

bigip_monitor_tcp_echo :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_monitor_tcp_echo: {
		ip?:            string
		name:           string
		partition?:     string
		time_until_up?: int
		description?:   string
		interval?:      int
		parent?:        string
		state?:         string
		timeout?:       int
	}
}

bigip_config :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_config: {
		verify?:        bool
		merge_content?: string
		reset?:         bool
		save?:          bool
	}
}

bigip_monitor_ldap :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_monitor_ldap: {
		interval?:             int
		manual_resume?:        bool
		name:                  string
		partition?:            string
		port?:                 string
		security?:             string
		base?:                 string
		debug?:                bool
		update_password?:      string
		target_password?:      string
		time_until_up?:        int
		target_username?:      string
		timeout?:              int
		ip?:                   string
		parent?:               string
		up_interval?:          int
		chase_referrals?:      bool
		mandatory_attributes?: bool
		state?:                string
		description?:          string
		filter?:               string
	}
}

bigip_profile_persistence_src_addr :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_profile_persistence_src_addr: {
		state?:                     string
		entry_timeout?:             string
		match_across_pools?:        bool
		match_across_services?:     bool
		match_across_virtuals?:     bool
		override_connection_limit?: bool
		parent?:                    string
		hash_algorithm?:            string
		name:                       string
		partition?:                 string
	}
}

bigip_sys_daemon_log_tmm :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_sys_daemon_log_tmm: {
		state?:                      string
		http_compression_log_level?: string
		ip_log_level?:               string
		irule_log_level?:            string
		layer4_log_level?:           string
		os_log_level?:               string
		pva_log_level?:              string
		arp_log_level?:              string
		http_log_level?:             string
		net_log_level?:              string
		ssl_log_level?:              string
	}
}

bigip_monitor_https :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_monitor_https: {
		description?:     string
		interval?:        int
		ip?:              string
		name:             string
		parent?:          string
		receive_disable?: string
		state?:           string
		target_password?: string
		target_username?: string
		timeout?:         int
		partition?:       string
		send?:            string
		ssl_profile?:     string
		time_until_up?:   int
		port?:            string
		receive?:         string
		up_interval?:     int
	}
}

bigip_iapp_template :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_iapp_template: {
		content?:   string
		force?:     bool
		name?:      string
		partition?: string
		state?:     string
	}
}

bigiq_application_fasthttp :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigiq_application_fasthttp: {
		state?:         string
		wait?:          bool
		add_analytics?: bool
		description?:   string
		inbound_virtual?: {...}
		name: string
		servers?: [...]
		service_environment?: string
	}
}

bigip_firewall_policy :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_firewall_policy: {
		name:       string
		partition?: string
		rules?: [...]
		state?:       string
		description?: string
	}
}

bigip_timer_policy :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_timer_policy: {
		description?: string
		name:         string
		partition?:   string
		rules?: [...]
		state?: string
	}
}

bigip_dns_nameserver :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_dns_nameserver: {
		state?:        string
		tsig_key?:     string
		address?:      string
		name:          string
		partition?:    string
		route_domain?: string
		service_port?: string
	}
}

bigip_device_syslog :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_syslog: {
		auth_priv_from?: string
		auth_priv_to?:   string
		console_log?:    bool
		cron_to?:        string
		iso_date?:       bool
		kern_to?:        string
		local6_to?:      string
		messages_to?:    string
		user_log_from?:  string
		kern_from?:      string
		user_log_to?:    string
		daemon_from?:    string
		include?:        string
		cron_from?:      string
		daemon_to?:      string
		local6_from?:    string
		mail_from?:      string
		mail_to?:        string
		messages_from?:  string
	}
}

bigip_hostname :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_hostname: {
		hostname: string
	}
}

bigip_monitor_tcp :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_monitor_tcp: {
		description?:   string
		partition?:     string
		port?:          string
		state?:         string
		time_until_up?: int
		timeout?:       int
		interval?:      int
		ip?:            string
		name:           string
		parent?:        string
		receive?:       string
		send?:          string
	}
}

bigip_profile_http :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_profile_http: {
		header_erase?:          string
		insert_xforwarded_for?: bool
		maximum_age?:           string
		name:                   string
		server_agent_name?:     string
		enforcement?: {...}
		parent?:            string
		partition?:         string
		response_chunking?: string
		state?:             string
		encrypt_cookies?: [...]
		accept_xff?:                 bool
		encrypt_cookie_secret?:      string
		header_insert?:              string
		oneconnect_transformations?: bool
		xff_alternative_names?: [...]
		fallback_host?: string
		fallback_status_codes?: [...]
		sflow?: {...}
		description?:        string
		dns_resolver?:       string
		include_subdomains?: bool
		update_password?:    string
		hsts_mode?:          bool
		proxy_type?:         string
		redirect_rewrite?:   string
		request_chunking?:   string
	}
}

bigiq_application_https_offload :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigiq_application_https_offload: {
		redirect_virtual?: {...}
		service_environment?: string
		state?:               string
		wait?:                bool
		add_analytics?:       bool
		inbound_virtual?: {...}
		name: string
		client_ssl_profile?: {...}
		description?: string
		servers?: [...]
	}
}

bigip_device_httpd :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_httpd: {
		fast_cgi_timeout?: int
		log_level?:        string
		ssl_cipher_suite?: _
		ssl_protocols?:    _
		allow?: [...]
		auth_pam_dashboard_timeout?: bool
		auth_pam_validate_ip?:       bool
		max_clients?:                int
		redirect_http_to_https?:     bool
		ssl_port?:                   int
		auth_name?:                  string
		auth_pam_idle_timeout?:      int
		hostname_lookup?:            bool
	}
}

bigip_gtm_monitor_external :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_monitor_external: {
		interval?:  int
		parent?:    string
		partition?: string
		port?:      string
		timeout?:   int
		arguments?: string
		ip?:        string
		name:       string
		state?:     string
		variables?: {...}
		external_program?: string
	}
}

bigip_password_policy :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_password_policy: {
		expiration_warning?: int
		max_duration?:       int
		max_login_failures?: int
		min_length?:         int
		policy_enforcement?: bool
		required_lowercase?: int
		min_duration?:       int
		password_memory?:    int
		required_numeric?:   int
		required_special?:   int
		required_uppercase?: int
	}
}

bigip_snat_pool :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_snat_pool: {
		members?: [...]
		name:         string
		partition?:   string
		state?:       string
		description?: string
	}
}

bigip_wait :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_wait: {
		delay?:   int
		msg?:     string
		sleep?:   int
		timeout?: int
	}
}

bigiq_regkey_pool :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigiq_regkey_pool: {
		description?: string
		name:         string
		state?:       string
	}
}

bigip_device_dns :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_dns: {
		search?: [...]
		state?:      string
		cache?:      string
		ip_version?: int
		name_servers?: [...]
	}
}

bigip_facts :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_facts: {
		filter?:  string
		include:  string
		session?: bool
	}
}

bigip_firewall_global_rules :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_firewall_global_rules: {
		staged_policy?:   string
		description?:     string
		enforced_policy?: string
		service_policy?:  string
	}
}

bigip_node :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_node: {
		availability_requirements?: {...}
		fqdn_auto_populate?: bool
		fqdn_down_interval?: int
		ratio?:              int
		fqdn?:               string
		name:                string
		partition?:          string
		rate_limit?:         int
		connection_limit?:   int
		description?:        string
		fqdn_address_type?:  string
		monitor_type?:       string
		monitors?: [...]
		quorum?:           int
		state?:            string
		address?:          string
		dynamic_ratio?:    int
		fqdn_up_interval?: string
	}
}

bigip_policy_rule :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_policy_rule: {
		actions?: [...]
		conditions?: [...]
		description?: string
		name:         string
		partition?:   string
		policy:       string
		state?:       string
	}
}

bigip_snat_translation :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_snat_translation: {
		connection_limit?: int
		ip_idle_timeout?:  string
		name:              string
		tcp_idle_timeout?: string
		traffic_group?:    string
		udp_idle_timeout?: string
		address?:          string
		description?:      string
		partition?:        string
		state?:            string
		arp?:              bool
	}
}

bigip_sys_global :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_sys_global: {
		quiet_boot?:      bool
		gui_setup?:       bool
		net_reboot?:      bool
		lcd_display?:     bool
		mgmt_dhcp?:       bool
		security_banner?: bool
		state?:           string
		banner_text?:     string
		console_timeout?: int
	}
}

bigiq_device_discovery :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigiq_device_discovery: {
		access_conflict_policy?:    string
		access_group_first_device?: bool
		access_group_name?:         string
		statistics?: {...}
		use_bigiq_sync?:            bool
		versioned_conflict_policy?: string
		conflict_policy?:           string
		device_conflict_policy?:    string
		modules?: [...]
		state?:           string
		device_address:   string
		device_password?: string
		device_username?: string
		force?:           bool
		device_port?:     int
		ha_name?:         string
	}
}

bigip_data_group :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_data_group: {
		type?:                   string
		delete_data_group_file?: bool
		external_file_name?:     string
		partition?:              string
		records?: [...]
		separator?:   string
		state?:       string
		description?: string
		internal?:    bool
		name:         string
		records_src?: string
	}
}

bigip_cli_script :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_cli_script: {
		content?:     string
		description?: string
		name:         string
		partition?:   string
		state?:       string
	}
}

bigip_device_info :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_info: {
		gather_subset: [...]
	}
}

bigip_trunk :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_trunk: {
		link_selection_policy?:   string
		description?:             string
		frame_distribution_hash?: string
		lacp_enabled?:            bool
		lacp_mode?:               string
		lacp_timeout?:            string
		interfaces?: [...]
		name:            string
		qinq_ethertype?: _
		state?:          string
	}
}

bigip_apm_policy_import :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_apm_policy_import: {
		partition?: string
		source?:    string
		type?:      string
		force?:     bool
		name:       string
	}
}

bigip_qkview :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_qkview: {
		force?:                bool
		max_file_size?:        int
		asm_request_log?:      bool
		complete_information?: bool
		dest:                  string
		exclude?: [...]
		exclude_core?: bool
		filename?:     string
	}
}

bigip_ssl_key :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_ssl_key: {
		content?:    string
		name:        string
		partition?:  string
		passphrase?: string
		state?:      string
	}
}

bigiq_regkey_license :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigiq_regkey_license: {
		description?: string
		license_key:  string
		regkey_pool:  string
		state?:       string
		accept_eula?: bool
	}
}

bigip_device_connectivity :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_connectivity: {
		multicast_port?:           int
		cluster_mirroring?:        string
		multicast_address?:        string
		mirror_primary_address?:   string
		mirror_secondary_address?: string
		multicast_interface?:      string
		unicast_failover?: [...]
		config_sync_ip?:     string
		failover_multicast?: bool
	}
}

bigip_device_group :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_group: {
		type?:                      string
		full_sync?:                 bool
		max_incremental_sync_size?: int
		network_failover?:          bool
		state?:                     string
		auto_sync?:                 bool
		description?:               string
		name:                       string
		save_on_auto_sync?:         bool
	}
}

bigip_device_sshd :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_sshd: {
		port?: int
		allow?: [...]
		banner?:             string
		banner_text?:        string
		inactivity_timeout?: int
		log_level?:          string
		login?:              string
	}
}

bigip_monitor_gateway_icmp :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_monitor_gateway_icmp: {
		up_interval?:              int
		adaptive_limit?:           int
		interval?:                 int
		port?:                     string
		sampling_timespan?:        int
		time_until_up?:            int
		timeout?:                  int
		allowed_divergence_type?:  string
		allowed_divergence_value?: int
		parent?:                   string
		name:                      string
		transparent?:              bool
		manual_resume?:            bool
		partition?:                string
		state?:                    string
		adaptive?:                 bool
		description?:              string
		ip?:                       string
	}
}

bigip_monitor_http :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_monitor_http: {
		partition?:       string
		receive?:         string
		receive_disable?: string
		time_until_up?:   int
		ip?:              string
		parent?:          string
		port?:            string
		state?:           string
		timeout?:         int
		name:             string
		interval?:        int
		send?:            string
		description?:     string
		target_password?: string
		target_username?: string
		reverse?:         bool
	}
}

bigip_profile_http2 :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_profile_http2: {
		parent?:  string
		streams?: int
		activation_modes?: [...]
		enforce_tls_requirements?: bool
		idle_timeout?:             int
		insert_header?:            bool
		header_table_size?:        int
		partition?:                string
		receive_window?:           int
		write_size?:               int
		description?:              string
		frame_size?:               int
		insert_header_name?:       string
		name:                      string
		state?:                    string
	}
}

bigip_profile_server_ssl :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_profile_server_ssl: {
		ocsp_profile?:         string
		parent?:               string
		partition?:            string
		server_certificate?:   string
		ciphers?:              string
		name:                  string
		chain?:                string
		sni_require?:          bool
		update_password?:      string
		passphrase?:           string
		server_name?:          string
		secure_renegotiation?: string
		sni_default?:          bool
		state?:                string
		certificate?:          string
		key?:                  string
	}
}

bigip_virtual_address :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_virtual_address: {
		arp?:                      bool
		arp_state?:                string
		availability_calculation?: string
		connection_limit?:         int
		route_advertisement?:      string
		route_domain?:             string
		traffic_group?:            string
		address?:                  string
		icmp_echo?:                string
		name?:                     string
		netmask?:                  string
		state?:                    string
		auto_delete?:              string
		partition?:                string
		spanning?:                 bool
	}
}

bigip_asm_policy :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_asm_policy: {
		active?:    bool
		file?:      string
		name:       string
		partition?: string
		state?:     string
		template?:  string
	}
}

bigiq_device_info :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigiq_device_info: {
		gather_subset: [...]
	}
}

bigip_firewall_rule_list :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_firewall_rule_list: {
		partition?: string
		rules?: [...]
		state?:       string
		description?: string
		name:         string
	}
}

bigip_ipsec_policy :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_ipsec_policy: {
		auth_algorithm?:          string
		ipcomp?:                  string
		perfect_forward_secrecy?: string
		tunnel_local_address?:    string
		ipv4_interface?:          bool
		kb_lifetime?:             int
		mode?:                    string
		route_domain?:            int
		state?:                   string
		description?:             string
		name:                     string
		tunnel_remote_address?:   string
		encrypt_algorithm?:       string
		lifetime?:                int
		partition?:               string
		protocol?:                string
	}
}

bigip_snmp_trap :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_snmp_trap: {
		name:          string
		network?:      string
		partition?:    string
		port?:         string
		snmp_version?: string
		state?:        string
		community?:    string
		destination?:  string
	}
}

bigip_software_update :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_software_update: {
		auto_check?:      bool
		auto_phone_home?: bool
		frequency?:       string
	}
}

bigip_ssl_ocsp :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_ssl_ocsp: {
		dns_resolver?:              string
		proxy_server_pool?:         string
		responder_url?:             string
		trusted_responders?:        string
		connections_limit?:         int
		key?:                       string
		state?:                     string
		strict_responder_checking?: bool
		cache_timeout?:             string
		partition?:                 string
		route_domain?:              string
		cache_error_timeout?:       int
		clock_skew?:                int
		connection_timeout?:        int
		hash_algorithm?:            string
		name:                       string
		passphrase?:                string
		status_age?:                int
		update_password?:           string
		certificate?:               string
	}
}

bigip_sys_db :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_sys_db: {
		key:    string
		state?: string
		value?: string
	}
}

bigip_ucs_fetch :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_ucs_fetch: {
		force?:               bool
		src?:                 string
		backup?:              bool
		create_on_missing?:   bool
		dest:                 string
		encryption_password?: string
		fail_on_missing?:     bool
	}
}

bigip_apm_policy_fetch :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_apm_policy_fetch: {
		partition?: string
		type?:      string
		dest?:      string
		file?:      string
		force?:     bool
		name:       string
	}
}

bigiq_utility_license_assignment :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigiq_utility_license_assignment: {
		unit_of_measure?: string
		device_password?: string
		device_port?:     int
		device_username?: string
		managed?:         bool
		device?:          string
		key:              string
		offering?:        string
		state?:           string
	}
}

bigip_firewall_dos_vector :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_firewall_dos_vector: {
		auto_blacklist?:                     bool
		detection_threshold_eps?:            string
		per_source_ip_mitigation_threshold?: string
		simulate_auto_threshold?:            bool
		state:                               string
		attack_ceiling?:                     string
		bad_actor_detection?:                bool
		partition?:                          string
		per_source_ip_detection_threshold?:  string
		allow_advertisement?:                bool
		attack_floor?:                       string
		blacklist_detection_seconds?:        int
		blacklist_duration?:                 int
		detection_threshold_percent?:        string
		mitigation_threshold_eps?:           string
		name?:                               string
		threshold_mode?:                     string
		profile:                             string
	}
}

bigip_firewall_log_profile :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_firewall_log_profile: {
		state?:       string
		description?: string
		dos_protection?: {...}
		ip_intelligence?: {...}
		name:       string
		partition?: string
		port_misuse?: {...}
	}
}

bigip_firewall_port_list :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_firewall_port_list: {
		ports?: [...]
		state?:       string
		description?: string
		name:         string
		partition?:   string
		port_lists?: [...]
		port_ranges?: [...]
	}
}

bigip_gtm_datacenter :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_datacenter: {
		name:         string
		partition?:   string
		state?:       string
		contact?:     string
		description?: string
		location?:    string
	}
}

bigip_gtm_topology_record :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_topology_record: {
		destination: {...}
		partition?: string
		source: {...}
		state?:  string
		weight?: int
	}
}

bigip_message_routing_route :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_message_routing_route: {
		partition?:           string
		src_address?:         string
		dst_address?:         string
		name:                 string
		peer_selection_mode?: string
		peers?: [...]
		state?:       string
		type?:        string
		description?: string
	}
}

bigip_monitor_external :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_monitor_external: {
		description?: string
		timeout?:     int
		variables?: {...}
		arguments?:        string
		interval?:         int
		ip?:               string
		name:              string
		parent?:           string
		partition?:        string
		port?:             string
		state?:            string
		external_program?: string
	}
}

bigip_file_copy :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_file_copy: {
		partition?: string
		source?:    string
		state?:     string
		datastore?: string
		force?:     bool
		name?:      string
	}
}

bigip_routedomain :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_routedomain: {
		strict?: bool
		vlans?: [...]
		bwc_policy?:           string
		connection_limit?:     int
		name?:                 string
		state?:                string
		flow_eviction_policy?: string
		id?:                   int
		partition?:            string
		service_policy?:       string
		routing_protocol?: [...]
		description?:        string
		fw_enforced_policy?: string
		parent?:             string
	}
}

bigip_traffic_selector :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_traffic_selector: {
		state?:               string
		description?:         string
		destination_address?: string
		ipsec_policy?:        string
		name:                 string
		order?:               int
		partition?:           string
		source_address?:      string
	}
}

bigip_profile_udp :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_profile_udp: {
		datagram_load_balancing?: bool
		idle_timeout?:            string
		name:                     string
		parent?:                  string
		partition?:               string
		state?:                   string
	}
}

bigip_gtm_monitor_tcp :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_monitor_tcp: {
		ignore_down_response?: bool
		probe_timeout?:        int
		transparent?:          bool
		interval?:             int
		parent?:               string
		partition?:            string
		state?:                string
		timeout?:              int
		name:                  string
		port?:                 string
		reverse?:              bool
		ip?:                   string
		receive?:              string
		send?:                 string
	}
}

bigip_gtm_pool :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_pool: {
		monitors?: [...]
		name:                 string
		alternate_lb_method?: string
		availability_requirements?: {...}
		fallback_ip?:          string
		fallback_lb_method?:   string
		max_answers_returned?: int
		members?: [...]
		state?:               string
		ttl?:                 int
		type?:                string
		partition?:           string
		preferred_lb_method?: string
	}
}

bigip_message_routing_protocol :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_message_routing_protocol: {
		description?:       string
		name:               string
		no_response?:       bool
		partition?:         string
		parent?:            string
		state?:             string
		disable_parser?:    bool
		max_egress_buffer?: int
		max_msg_size?:      int
		msg_terminator?:    string
	}
}

bigip_partition :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_partition: {
		route_domain?: int
		state?:        string
		description?:  string
		name:          string
	}
}

bigip_dns_resolver :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_dns_resolver: {
		answer_default_zones?: bool
		state?:                string
		use_ipv4?:             bool
		use_ipv6?:             bool
		use_udp?:              bool
		cache_size?:           int
		name:                  string
		partition?:            string
		randomize_query_case?: bool
		route_domain?:         int
		use_tcp?:              bool
	}
}

bigip_device_ha_group :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_ha_group: {
		pools?: [...]
		state?: string
		trunks?: [...]
		active_bonus?: int
		description?:  string
		enable?:       bool
		name:          string
	}
}

bigip_device_license :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_license: {
		license_server?: string
		state?:          string
		accept_eula?:    bool
		license_key?:    string
	}
}

bigip_firewall_dos_profile :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_firewall_dos_profile: {
		default_whitelist?:     string
		description?:           string
		name:                   string
		partition?:             string
		state?:                 string
		threshold_sensitivity?: string
	}
}

bigip_log_destination :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_log_destination: {
		pool_settings?: {...}
		state?:                        string
		syslog_format?:                string
		description?:                  string
		forward_to?:                   string
		partition?:                    string
		template_retransmit_interval?: int
		type:                          string
		distribution?:                 string
		protocol?:                     string
		template_delete_delay?:        int
		address?:                      string
		name:                          string
		syslog_settings?: {...}
		transport_profile?:  string
		pool?:               string
		port?:               int
		server_ssl_profile?: string
	}
}

bigip_profile_dns :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_profile_dns: {
		cache_name?:                string
		enable_zone_transfer?:      bool
		enable_cache?:              bool
		name:                       string
		parent?:                    string
		state?:                     string
		use_local_bind?:            bool
		enable_dnssec?:             bool
		enable_gtm?:                bool
		partition?:                 string
		process_recursion_desired?: bool
		unhandled_query_action?:    string
		enable_dns_express?:        bool
		enable_dns_firewall?:       bool
	}
}

bigiq_application_fastl4_tcp :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigiq_application_fastl4_tcp: {
		state?:         string
		wait?:          bool
		add_analytics?: bool
		description?:   string
		inbound_virtual?: {...}
		name: string
		servers?: [...]
		service_environment?: string
	}
}

bigip_configsync_action :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_configsync_action: {
		device_group:                string
		overwrite_config?:           bool
		sync_device_to_group?:       bool
		sync_most_recent_to_device?: bool
	}
}

bigip_profile_client_ssl :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_profile_client_ssl: {
		client_certificate?: string
		renegotiation?:      bool
		retain_certificate?: bool
		server_name?:        string
		allow_non_ssl?:      bool
		cert_key_chain?: [...]
		ciphers?:                   string
		client_auth_frequency?:     string
		sni_require?:               bool
		trusted_cert_authority?:    string
		advertised_cert_authority?: string
		allow_expired_crl?:         bool
		partition?:                 string
		sni_default?:               bool
		cert_auth_depth?:           int
		parent?:                    string
		secure_renegotiation?:      string
		strict_resume?:             bool
		client_auth_crl?:           string
		name:                       string
		options?: [...]
		state?: string
	}
}

bigip_gtm_monitor_firepass :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_monitor_firepass: {
		parent?:               string
		cipher_list?:          string
		concurrency_limit?:    int
		interval?:             int
		target_password?:      string
		target_username?:      string
		ip?:                   string
		name:                  string
		partition?:            string
		timeout?:              int
		update_password?:      string
		max_load_average?:     int
		port?:                 string
		probe_timeout?:        int
		ignore_down_response?: bool
		state?:                string
	}
}

bigiq_application_https_waf :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigiq_application_https_waf: {
		add_analytics?: bool
		redirect_virtual?: {...}
		service_environment?: string
		servers?: [...]
		state?: string
		wait?:  bool
		client_ssl_profile?: {...}
		description?: string
		domain_names?: [...]
		inbound_virtual?: {...}
		name: string
	}
}

bigip_device_certificate :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_certificate: {
		force?:          bool
		key_name?:       string
		key_size?:       int
		new_cert?:       bool
		transport:       string
		cert_name?:      string
		days_valid:      int
		add_to_trusted?: bool
		issuer?: {...}
	}
}

bigip_log_publisher :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_log_publisher: {
		description?: string
		destinations?: [...]
		name:       string
		partition?: string
		state?:     string
	}
}

bigip_management_route :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_management_route: {
		description?: string
		gateway?:     string
		name:         string
		network?:     string
		partition?:   string
		state?:       string
	}
}

bigip_profile_oneconnect :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_profile_oneconnect: {
		name:                   string
		partition?:             string
		share_pools?:           bool
		source_mask?:           string
		description?:           string
		limit_type?:            string
		maximum_reuse?:         int
		maximum_size?:          int
		idle_timeout_override?: string
		maximum_age?:           int
		parent?:                string
		state?:                 string
	}
}

bigip_remote_user :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_remote_user: {
		console_access?:    bool
		default_partition?: string
		default_role?:      string
		description?:       string
	}
}

bigip_selfip :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_selfip: {
		netmask?:       string
		partition?:     string
		description?:   string
		name:           string
		route_domain?:  int
		state?:         string
		traffic_group?: string
		vlan?:          string
		address?:       string
		allow_service?: [...]
	}
}

bigip_firewall_schedule :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_firewall_schedule: {
		state?:            string
		date_valid_end?:   string
		date_valid_start?: string
		partition?:        string
		description?:      string
		name:              string
		daily_hour_end?:   string
		daily_hour_start?: string
		days_of_week?: [...]
	}
}

bigip_iapp_service :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_iapp_service: {
		force?:          bool
		name:            string
		partition?:      string
		state?:          string
		strict_updates?: bool
		template?:       string
		traffic_group?:  string
		description?:    string
		device_group?:   string
		metadata?: [...]
		parameters?: {...}
	}
}

bigip_monitor_udp :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_monitor_udp: {
		timeout?:         int
		interval?:        int
		partition?:       string
		port?:            string
		state?:           string
		time_until_up?:   int
		receive_disable?: string
		send?:            string
		description?:     string
		ip?:              string
		name:             string
		parent?:          string
		receive?:         string
	}
}

bigip_profile_analytics :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_profile_analytics: {
		notification_email_addresses?: [...]
		collect_geo?:                      bool
		collect_max_tps_and_throughput?:   bool
		collect_page_load_time?:           bool
		collect_url?:                      bool
		collect_user_agent?:               bool
		collect_user_sessions?:            bool
		name:                              string
		external_logging_publisher?:       string
		notification_by_syslog?:           bool
		collect_ip?:                       bool
		collected_stats_external_logging?: bool
		collected_stats_internal_logging?: bool
		description?:                      string
		notification_by_email?:            bool
		partition?:                        string
		parent?:                           string
		state?:                            string
	}
}

bigiq_application_fastl4_udp :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigiq_application_fastl4_udp: {
		description?: string
		inbound_virtual?: {...}
		name: string
		servers?: [...]
		service_environment?: string
		state?:               string
		wait?:                bool
		add_analytics?:       bool
	}
}

bigip_dns_zone :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_dns_zone: {
		dns_express?: {...}
		name: string
		nameservers?: [...]
		partition?:       string
		state?:           string
		tsig_server_key?: string
	}
}

bigip_pool_member :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_pool_member: {
		connection_limit?: int
		description?:      string
		fqdn?:             string
		preserve_node?:    bool
		rate_limit?:       int
		replace_all_with?: bool
		reuse_nodes?:      bool
		state:             string
		monitors?: [...]
		partition?:          string
		pool:                string
		address?:            string
		fqdn_auto_populate?: bool
		ip_encapsulation?:   string
		port:                int
		aggregate?: [...]
		availability_requirements?: {...}
		name?:           string
		priority_group?: int
		ratio?:          int
	}
}

bigip_software_install :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_software_install: {
		image?:  string
		state?:  string
		volume?: string
	}
}

bigiq_utility_license :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigiq_utility_license: {
		accept_eula?: bool
		license_key:  string
		state?:       string
	}
}

bigip_policy :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_policy: {
		description?: string
		name:         string
		partition?:   string
		rules?: [...]
		state?:    string
		strategy?: string
	}
}

bigip_command :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_command: {
		interval?: int
		match?:    string
		retries?:  int
		transport: string
		wait_for?: [...]
		warn?:    bool
		chdir?:   string
		commands: _
	}
}

bigip_dns_cache_resolver :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_dns_cache_resolver: {
		answer_default_zones?: bool
		forward_zones?:        _
		name:                  string
		partition?:            string
		route_domain?:         string
		state?:                string
	}
}

bigip_gtm_virtual_server :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_virtual_server: {
		address?: string
		limits?: {...}
		port?:             int
		server_name?:      string
		state?:            string
		translation_port?: string
		availability_requirements?: {...}
		link?: string
		monitors?: [...]
		name?:                string
		partition?:           string
		translation_address?: string
		virtual_server_dependencies?: [...]
	}
}

bigip_ssl_certificate :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_ssl_certificate: {
		content?:     string
		issuer_cert?: string
		name:         string
		partition?:   string
		state?:       string
	}
}

bigip_cli_alias :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_cli_alias: {
		name:         string
		partition?:   string
		scope?:       string
		state?:       string
		command?:     string
		description?: string
	}
}

bigip_gtm_monitor_http :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_monitor_http: {
		ip?:                   string
		name:                  string
		partition?:            string
		send?:                 string
		target_password?:      string
		transparent?:          bool
		ignore_down_response?: bool
		parent?:               string
		port?:                 string
		receive?:              string
		reverse?:              bool
		interval?:             int
		state?:                string
		timeout?:              int
		probe_timeout?:        int
		target_username?:      string
		update_password?:      string
	}
}

bigip_service_policy :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_service_policy: {
		timer_policy?:       string
		description?:        string
		name:                string
		partition?:          string
		port_misuse_policy?: string
		state?:              string
	}
}

bigip_user :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_user: {
		update_password?:    string
		username_credential: string
		full_name?:          string
		partition?:          string
		partition_access?: [...]
		password_credential?: string
		shell?:               string
		state?:               string
	}
}

bigip_apm_network_access :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_apm_network_access: {
		name:          string
		snat_pool?:    string
		split_tunnel?: bool
		dtls?:         bool
		excluded_ipv4_adresses?: [...]
		excluded_ipv6_adresses?: [...]
		ipv4_lease_pool?: string
		state?:           string
		dtls_port?:       int
		ip_version?:      string
		ipv4_address_space?: [...]
		excluded_dns_addresses?: [...]
		allow_local_subnet?: bool
		description?:        string
		dns_address_space?: [...]
		ipv6_address_space?: [...]
		ipv6_lease_pool?: string
		partition?:       string
		allow_local_dns?: bool
	}
}

bigip_device_auth_ldap :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_auth_ldap: {
		bind_dn?:               string
		port?:                  int
		scope?:                 string
		update_password?:       string
		fallback_to_local?:     bool
		ssl?:                   string
		user_template?:         string
		validate_certs?:        bool
		remote_directory_tree?: string
		bind_password?:         string
		ca_cert?:               string
		check_member_attr?:     bool
		client_cert?:           string
		client_key?:            string
		login_ldap_attr?:       string
		servers?: [...]
		state?: string
	}
}

bigip_device_ntp :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_device_ntp: {
		state?:    string
		timezone?: string
		ntp_servers?: [...]
	}
}

bigip_gtm_monitor_tcp_half_open :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_gtm_monitor_tcp_half_open: {
		ip?:                   string
		partition?:            string
		probe_interval?:       int
		timeout?:              int
		ignore_down_response?: bool
		interval?:             int
		name:                  string
		parent?:               string
		port?:                 string
		probe_attempts?:       int
		probe_timeout?:        int
		state?:                string
		transparent?:          bool
	}
}

bigip_remote_role :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_remote_role: {
		line_order?:       int
		name:              string
		partition_access?: string
		remote_access?:    bool
		state?:            string
		terminal_access?:  string
		assigned_role?:    string
		attribute_string?: string
	}
}

bigip_asm_policy_import :: {
	tags?: [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	become?:     bool
	when?:       string
	notify?:     string | [...string]
	connection?: string
	bigip_asm_policy_import: {
		force?:     bool
		inline?:    string
		name:       string
		partition?: string
		source?:    string
	}
}
