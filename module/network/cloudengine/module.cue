package cloudengine

ce_bgp_neighbor_af :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_bgp_neighbor_af: {
		import_rt_policy_name?:          string
		preferred_value?:                string
		add_path_mode?:                  string
		allow_as_loop_enable?:           string
		default_rt_match_mode?:          string
		export_pref_filt_name?:          string
		export_rt_policy_name?:          string
		import_as_path_filter?:          string
		public_as_only_replace?:         string
		redirect_ip?:                    string
		substitute_as_enable?:           string
		export_acl_name_or_num?:         string
		import_pref_filt_name?:          string
		nexthop_configure?:              string
		public_as_only_force?:           string
		update_pkt_standard_compatible?: string
		vpls_enable?:                    string
		adv_add_path_num?:               string
		advertise_arp?:                  string
		export_as_path_name_or_num?:     string
		orftype?:                        string
		reflect_client?:                 string
		rt_updt_interval?:               string
		allow_as_loop_limit?:            string
		route_limit_idle_timeout?:       string
		vpls_ad_disable?:                string
		af_type:                         string
		import_acl_name_or_num?:         string
		origin_as_valid?:                string
		remote_address:                  string
		route_limit?:                    string
		route_limit_type?:               string
		advertise_community?:            string
		advertise_irb?:                  string
		advertise_remote_nexthop?:       string
		default_rt_adv_enable?:          string
		soostring?:                      string
		vrf_name:                        string
		default_rt_adv_policy?:          string
		ipprefix_orf_enable?:            string
		is_nonstd_ipprefix_mod?:         string
		orf_mode?:                       string
		public_as_only_skip_peer_as?:    string
		redirect_ip_validation?:         string
		public_as_only_limited?:         string
		route_limit_percent?:            string
		advertise_ext_community?:        string
		discard_ext_community?:          string
		export_as_path_filter?:          string
		import_as_path_name_or_num?:     string
		keep_all_routes?:                string
		public_as_only?:                 string
	}
}

ce_info_center_log :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_info_center_log: {
		channel_id?:      string
		log_buff_enable?: string
		log_buff_size?:   string
		log_enable?:      string
		log_level?:       string
		log_time_stamp?:  string
		module_name?:     string
		state?:           string
	}
}

ce_vrrp :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_vrrp: {
		fast_resume?:             string
		gratuitous_arp_interval?: string
		interface?:               string
		is_plain?:                bool
		admin_interface?:         string
		auth_key?:                string
		recover_delay?:           string
		version?:                 string
		virtual_ip?:              string
		admin_vrid?:              string
		preempt_timer_delay?:     string
		state?:                   string
		admin_ignore_if_down?:    bool
		auth_mode?:               string
		holding_multiplier?:      string
		priority?:                string
		vrid?:                    string
		vrrp_type?:               string
		admin_flowdown?:          bool
		advertise_interval?:      string
	}
}

ce_mlag_interface :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_mlag_interface: {
		interface?:        string
		mlag_error_down?:  string
		mlag_id?:          string
		mlag_priority_id?: string
		mlag_system_id?:   string
		state?:            string
		dfs_group_id?:     string
		eth_trunk_id?:     string
	}
}

ce_snmp_user :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_snmp_user: {
		aaa_local_user?:   string
		auth_key?:         string
		auth_protocol?:    string
		priv_protocol?:    string
		remote_engine_id?: string
		usm_user_name?:    string
		acl_number?:       string
		priv_key?:         string
		user_group?:       string
	}
}

ce_vxlan_global :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_vxlan_global: {
		bridge_domain_id?:    string
		nvo3_eth_trunk_hash?: string
		nvo3_prevent_loops?:  string
		nvo3_service_extend?: string
		tunnel_mode_vxlan?:   string
		nvo3_acl_extend?:     string
		nvo3_ecmp_hash?:      string
		nvo3_gw_enhanced?:    string
		state?:               string
	}
}

ce_acl :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_acl: {
		acl_step?:         string
		frag_type?:        string
		rule_action?:      string
		vrf_name?:         string
		log_flag?:         bool
		src_mask?:         string
		state?:            string
		acl_description?:  string
		acl_name:          string
		acl_num?:          string
		rule_description?: string
		rule_id?:          string
		rule_name?:        string
		source_ip?:        string
		time_range?:       string
	}
}

ce_bfd_session :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_bfd_session: {
		use_default_ip?: bool
		dest_addr?:      string
		src_addr?:       string
		local_discr?:    string
		out_if_name?:    string
		remote_discr?:   string
		session_name:    string
		state?:          string
		vrf_name?:       string
		addr_type?:      string
		create_type?:    string
	}
}

ce_bgp :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_bgp: {
		hold_time?:          string
		keep_all_routes?:    string
		as_number?:          string
		as_path_limit?:      string
		check_first_as?:     string
		default_af_type?:    string
		ebgp_if_sensitive?:  string
		graceful_restart?:   string
		router_id?:          string
		bgp_rid_auto_sel?:   string
		confed_peer_as_num?: string
		state?:              string
		vrf_name?:           string
		suppress_interval?:  string
		vrf_rid_auto_sel?:   string
		clear_interval?:     string
		confed_id_number?:   string
		gr_peer_reset?:      string
		hold_interval?:      string
		memory_limit?:       string
		min_hold_time?:      string
		confed_nonstanded?:  string
		conn_retry_time?:    string
		is_shutdown?:        string
		keepalive_time?:     string
		time_wait_for_rib?:  string
	}
}

ce_netconf :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_netconf: {
		cfg_xml: string
		rpc:     string
	}
}

ce_ntp :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_ntp: {
		key_id?:       string
		peer?:         string
		server?:       string
		source_int?:   string
		state?:        string
		vpn_name?:     string
		is_preferred?: string
	}
}

ce_aaa_server :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_aaa_server: {
		first_author_mode?:   string
		radius_server_group?: string
		accounting_mode?:     string
		acct_scheme_name?:    string
		domain_name?:         string
		first_authen_mode?:   string
		hwtacas_template?:    string
		local_user_group?:    string
		state?:               string
		authen_scheme_name?:  string
		author_scheme_name?:  string
	}
}

ce_bgp_neighbor :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_bgp_neighbor: {
		prepend_fake_as?:          string
		state?:                    string
		is_single_hop?:            string
		route_refresh?:            string
		is_ignore?:                string
		keep_alive_time?:          string
		multiplier?:               string
		ebgp_max_hop?:             string
		fake_as?:                  string
		mpls_local_ifnet_disable?: string
		dual_as?:                  string
		is_bfd_block?:             string
		is_bfd_enable?:            string
		peer_addr:                 string
		prepend_global_as?:        string
		tcp_MSS?:                  string
		conn_retry_time?:          string
		description?:              string
		min_hold_time?:            string
		rx_interval?:              string
		is_log_change?:            string
		local_if_name?:            string
		key_chain_name?:           string
		pswd_cipher_text?:         string
		pswd_type?:                string
		vrf_name:                  string
		connect_mode?:             string
		hold_time?:                string
		tx_interval?:              string
		valid_ttl_hops?:           string
		conventional?:             string
		remote_as:                 string
	}
}

ce_info_center_trap :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_info_center_trap: {
		state?:            string
		trap_buff_enable?: string
		trap_buff_size?:   string
		trap_enable?:      string
		trap_level?:       string
		trap_time_stamp?:  string
		channel_id?:       string
		module_name?:      string
	}
}

ce_evpn_bd_vni :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_evpn_bd_vni: {
		bridge_domain_id:     string
		evpn?:                string
		route_distinguisher?: string
		state?:               string
		vpn_target_both?:     string
		vpn_target_export?:   string
		vpn_target_import:    string
	}
}

ce_vxlan_tunnel :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_vxlan_tunnel: {
		vni_id?:           string
		bridge_domain_id?: string
		nve_mode?:         string
		nve_name?:         string
		peer_list_ip?:     string
		protocol_type?:    string
		source_ip?:        string
		state?:            string
	}
}

ce_mlag_config :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_mlag_config: {
		dfs_group_id?:      string
		eth_trunk_id?:      string
		nickname?:          string
		priority_id?:       string
		pseudo_priority?:   string
		vpn_instance_name?: string
		ip_address?:        string
		peer_link_id?:      string
		pseudo_nickname?:   string
		state?:             string
	}
}

ce_netstream_global :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_netstream_global: {
		interface:             string
		sampler_direction?:    string
		sampler_interval?:     string
		state?:                string
		statistics_direction?: string
		statistics_record?:    string
		type?:                 string
		index_switch?:         string
	}
}

ce_vxlan_vap :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_vxlan_vap: {
		l2_sub_interface?: string
		pe_vid?:           string
		state?:            string
		bind_vlan_id?:     string
		bridge_domain_id?: string
		ce_vid?:           string
		encapsulation?:    string
	}
}

ce_acl_interface :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_acl_interface: {
		acl_name:  string
		direction: string
		interface: string
		state?:    string
	}
}

ce_info_center_global :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_info_center_global: {
		logfile_max_num?:     string
		logfile_max_size?:    string
		channel_id?:          string
		facility?:            string
		filter_log_name?:     string
		packet_priority?:     string
		server_domain?:       string
		source_ip?:           string
		ssl_policy_name?:     string
		suppress_enable?:     string
		channel_out_direct?:  string
		vrf_name?:            string
		transport_mode?:      string
		filter_feature_name?: string
		level?:               string
		server_ip?:           string
		server_port?:         string
		timestamp?:           string
		channel_cfg_name?:    string
		info_center_enable?:  string
		ip_type?:             string
		is_default_vpn?:      bool
		state?:               string
		channel_name?:        string
	}
}

ce_lldp_interface :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_lldp_interface: {
		ifname?:                       string
		linkaggretxenable?:            bool
		portvlantxenable?:             bool
		syscaptxenable?:               bool
		sysnametxenable?:              bool
		type_tlv_enable?:              string
		vlannametxenable?:             bool
		state?:                        string
		txinterval?:                   int
		txprotocolvlanid?:             int
		function_lldp_interface_flag?: string
		lldpadminstatus?:              string
		macphytxenable?:               bool
		portdesctxenable?:             bool
		sysdesctxenable?:              bool
		dcbx?:                         bool
		eee?:                          bool
		lldpenable?:                   string
		manaddrtxenable?:              bool
		maxframetxenable?:             bool
		protoidtxenable?:              bool
		protovlantxenable?:            bool
		txvlannameid?:                 int
		type_tlv_disable?:             string
	}
}

ce_info_center_debug :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_info_center_debug: {
		debug_enable?:     string
		debug_level?:      string
		debug_time_stamp?: string
		module_name?:      string
		state?:            string
		channel_id?:       string
	}
}

ce_config :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_config: {
		backup?:  bool
		before?:  string
		match?:   string
		replace?: string
		lines?:   string
		parents?: string
		save?:    bool
		src?:     string
		after?:   string
		backup_options?: {...}
		config?:   string
		defaults?: bool
	}
}

ce_file_copy :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_file_copy: {
		file_system?: string
		local_file:   string
		remote_file?: string
	}
}

ce_vxlan_arp :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_vxlan_arp: {
		vbdif_name?:            string
		evn_bgp?:               string
		evn_server?:            string
		evn_source_ip?:         string
		evn_peer_ip?:           string
		evn_reflect_client?:    string
		host_collect_protocol?: string
		state?:                 string
		arp_collect_host?:      string
		arp_suppress?:          string
		bridge_domain_id?:      string
	}
}

ce_aaa_server_host :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_aaa_server_host: {
		hwtacacs_server_ipv6?:         string
		hwtacacs_vpn_name?:            string
		local_user_level?:             string
		radius_server_port?:           string
		radius_server_type?:           string
		hwtacacs_is_secondary_server?: bool
		hwtacacs_server_type?:         string
		hwtacacs_template?:            string
		local_user_group?:             string
		local_user_name?:              string
		radius_server_mode?:           string
		radius_vpn_name?:              string
		state?:                        string
		hwtacacs_is_public_net?:       bool
		local_ftp_dir?:                string
		local_password?:               string
		radius_group_name?:            string
		radius_server_ip?:             string
		radius_server_ipv6?:           string
		hwtacacs_server_host_name?:    string
		hwtacacs_server_ip?:           string
		local_service_type?:           string
		radius_server_name?:           string
	}
}

ce_bfd_global :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_bfd_global: {
		damp_max_wait_time?:    string
		tos_exp_static?:        string
		bfd_enable?:            string
		damp_second_wait_time?: string
		default_ip?:            string
		delay_up_time?:         string
		state?:                 string
		tos_exp_dynamic?:       string
		damp_init_wait_time?:   string
	}
}

ce_command :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_command: {
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
	}
}

ce_interface :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_interface: {
		interface_type?: string
		l2sub?:          bool
		mode?:           string
		state?:          string
		admin_state?:    string
		description?:    string
		interface?:      string
	}
}

ce_ip_interface :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_ip_interface: {
		addr?:      string
		interface:  string
		ipv4_type?: string
		mask?:      string
		state?:     string
		version?:   string
	}
}

ce_link_status :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_link_status: {
		interface: string
	}
}

ce_ospf_vrf :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_ospf_vrf: {
		lsaamaxinterval?:   string
		lsaastartinterval?: string
		ospf:               string
		vrf?:               string
		lsaaholdinterval?:  string
		lsaalflag?:         bool
		lsaointerval?:      string
		spfintervaltype?:   string
		state?:             string
		bandwidth?:         string
		spfinterval?:       string
		spfintervalmi?:     string
		spfstartinterval?:  string
		description?:       string
		lsaainterval?:      string
		lsaoholdinterval?:  string
		lsaointervalflag?:  bool
		lsaomaxinterval?:   string
		lsaostartinterval?: string
		route_id?:          string
		spfholdinterval?:   string
		spfmaxinterval?:    string
	}
}

ce_snmp_contact :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_snmp_contact: {
		contact: string
		state?:  string
	}
}

ce_snmp_traps :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_snmp_traps: {
		feature_name?:     string
		interface_number?: string
		interface_type?:   string
		port_number?:      string
		trap_name?:        string
	}
}

ce_bgp_af :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_bgp_af: {
		default_med?:                   string
		ebgp_if_sensitive?:             string
		max_load_ibgp_num?:             string
		prefrence_policy_name?:         string
		reflector_cluster_id?:          string
		preference_local?:              string
		relay_delay_enable?:            string
		active_route_advertise?:        string
		as_path_neglect?:               string
		ingress_lsp_policy_name?:       string
		next_hop_sel_depend_type?:      string
		nhp_relay_route_policy_name?:   string
		originator_prior?:              string
		router_id_neglect?:             string
		vrf_name:                       string
		rib_only_policy_name?:          string
		add_path_sel_num?:              string
		default_local_pref?:            string
		ecmp_nexthop_changed?:          string
		import_process_id?:             string
		med_none_as_maximum?:           string
		policy_ext_comm_enable?:        string
		policy_vpn_target?:             string
		summary_automatic?:             string
		always_compare_med?:            string
		igp_metric_ignore?:             string
		import_protocol?:               string
		reflect_between_client?:        string
		preference_external?:           string
		router_id?:                     string
		default_rt_import_enable?:      string
		state?:                         string
		lowest_priority?:               string
		rib_only_enable?:               string
		rr_filter_number?:              string
		ebgp_ecmp_nexthop_changed?:     string
		network_address?:               string
		af_type:                        string
		max_load_ebgp_num?:             string
		maximum_load_balance?:          string
		reflector_cluster_ipv4?:        string
		route_sel_delay?:               string
		vrf_rid_auto_sel?:              string
		auto_frr_enable?:               string
		mask_len?:                      string
		supernet_uni_adv?:              string
		determin_med?:                  string
		load_balancing_as_path_ignore?: string
		nexthop_third_party?:           string
		reflect_chg_path?:              string
		allow_invalid_as?:              string
		ibgp_ecmp_nexthop_changed?:     string
		preference_internal?:           string
		supernet_label_adv?:            string
	}
}

ce_eth_trunk :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_eth_trunk: {
		force?:     bool
		hash_type?: string
		members?:   string
		min_links?: string
		mode?:      string
		state?:     string
		trunk_id:   string
	}
}

ce_facts :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_facts: {
		gather_subset?: string
	}
}

ce_netstream_template :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_netstream_template: {
		description?:       string
		match?:             string
		record_name?:       string
		state?:             string
		type:               string
		collect_counter?:   string
		collect_interface?: string
	}
}

ce_ntp_auth :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_ntp_auth: {
		auth_mode?:      string
		auth_pwd?:       string
		auth_type?:      string
		authentication?: string
		key_id:          string
		state?:          string
		trusted_key?:    string
	}
}

ce_rollback :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_rollback: {
		last?:      string
		oldest?:    string
		action:     string
		commit_id?: string
		filename?:  string
		label?:     string
	}
}

ce_static_route :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_static_route: {
		nhp_interface?: string
		state?:         string
		aftype:         string
		description?:   string
		destvrf?:       string
		mask:           string
		next_hop?:      string
		pref?:          string
		prefix:         string
		tag?:           string
		vrf?:           string
	}
}

ce_vrf :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_vrf: {
		description?: string
		state?:       string
		vrf:          string
	}
}

ce_acl_advance :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_acl_advance: {
		dest_port_op?:        string
		rule_name?:           string
		dscp?:                string
		src_port_begin?:      string
		tcp_flag_mask?:       string
		dest_ip?:             string
		dest_port_end?:       string
		log_flag?:            bool
		src_mask?:            string
		src_port_op?:         string
		src_port_pool_name?:  string
		dest_port_pool_name?: string
		icmp_name?:           string
		dest_port_begin?:     string
		established?:         bool
		src_port_end?:        string
		acl_step?:            string
		dest_pool_name?:      string
		dest_mask?:           string
		frag_type?:           string
		source_ip?:           string
		src_pool_name?:       string
		time_range?:          string
		acl_description?:     string
		acl_name:             string
		icmp_type?:           string
		igmp_type?:           string
		protocol?:            string
		rule_description?:    string
		rule_id?:             string
		syn_flag?:            string
		acl_num?:             string
		icmp_code?:           string
		vrf_name?:            string
		state?:               string
		tos?:                 string
		ttl_expired?:         bool
		precedence?:          string
		rule_action?:         string
	}
}

ce_bfd_view :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_bfd_view: {
		local_discr?:     string
		min_rx_interval?: string
		min_tx_interval?: string
		session_name:     string
		tos_exp?:         string
		wtr_interval?:    string
		admin_down?:      bool
		detect_multi?:    string
		state?:           string
		description?:     string
		remote_discr?:    string
	}
}

ce_evpn_bgp :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_evpn_bgp: {
		peer_group_name?:       string
		state?:                 string
		as_number?:             string
		bgp_instance:           string
		peer_address?:          string
		peer_enable?:           string
		vpn_name?:              string
		advertise_l2vpn_evpn?:  string
		advertise_router_type?: string
	}
}

ce_vxlan_gateway :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_vxlan_gateway: {
		dfs_source_vpn?:         string
		vbdif_mac?:              string
		vpn_instance?:           string
		dfs_peer_ip?:            string
		dfs_peer_vpn?:           string
		dfs_source_ip?:          string
		dfs_udp_port?:           string
		state?:                  string
		arp_direct_route?:       string
		dfs_all_active?:         string
		vbdif_name?:             string
		arp_distribute_gateway?: string
		dfs_id?:                 string
		vbdif_bind_vpn?:         string
		vpn_vni?:                string
	}
}

ce_reboot :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_reboot: {
		save_config?: bool
		confirm:      bool
	}
}

ce_vrf_af :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_vrf_af: {
		state?:               string
		vpn_target_state?:    string
		vpn_target_type?:     string
		vpn_target_value?:    string
		vrf:                  string
		vrf_aftype?:          string
		evpn?:                bool
		route_distinguisher?: string
	}
}

ce_evpn_global :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_evpn_global: {
		evpn_overlay_enable: string
	}
}

ce_netstream_aging :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_netstream_aging: {
		manual_slot?:      string
		state?:            string
		timeout_interval?: string
		timeout_type?:     string
		type?:             string
	}
}

ce_netstream_export :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_netstream_export: {
		bgp_nexthop?: string
		host_port?:   string
		source_ip?:   string
		type:         string
		version?:     string
		as_option?:   string
		host_ip?:     string
		host_vpn?:    string
		state?:       string
	}
}

ce_snmp_community :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_snmp_community: {
		notify_view?:        string
		read_view?:          string
		state?:              string
		write_view?:         string
		access_right?:       string
		community_mib_view?: string
		group_name?:         string
		security_level?:     string
		acl_number?:         string
		community_name?:     string
	}
}

ce_startup :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_startup: {
		slot?:          string
		software_file?: string
		action?:        string
		cfg_file?:      string
		patch_file?:    string
	}
}

ce_dldp_interface :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_dldp_interface: {
		mode_enable?: string
		reset?:       string
		state?:       string
		enable?:      string
		interface:    string
		local_mac?:   string
	}
}

ce_lldp :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_lldp: {
		restart_delay?:             int
		state?:                     string
		bind_name?:                 string
		interval?:                  int
		management_address?:        string
		mdnstatus?:                 string
		notification_interval?:     int
		transmit_delay?:            int
		fast_count?:                int
		hold_multiplier?:           int
		lldpenable?:                string
		mdn_notification_interval?: int
	}
}

ce_mtu :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_mtu: {
		interface?: string
		jumbo_max?: string
		jumbo_min?: string
		mtu?:       string
		state?:     string
	}
}

ce_vrf_interface :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_vrf_interface: {
		state?:        string
		vpn_interface: string
		vrf:           string
	}
}

ce_dldp :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_dldp: {
		enable?:        string
		reset?:         string
		time_internal?: string
		work_mode?:     string
		auth_mode?:     string
		auth_pwd?:      string
	}
}

ce_interface_ospf :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_interface_ospf: {
		cost?:             string
		dead_interval?:    string
		hello_interval?:   string
		interface:         string
		process_id:        string
		area:              string
		auth_key_id?:      string
		auth_mode?:        string
		auth_text_md5?:    string
		auth_text_simple?: string
		silent_interface?: bool
		state?:            string
	}
}

ce_stp :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_stp: {
		bpdu_filter?:             string
		cost?:                    string
		interface?:               string
		state?:                   string
		stp_converge?:            string
		edged_port?:              string
		tc_protection_threshold?: string
		bpdu_protection?:         string
		loop_protection?:         string
		stp_enable?:              string
		stp_mode?:                string
		root_protection?:         string
		tc_protection?:           string
		tc_protection_interval?:  string
	}
}

ce_vlan :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_vlan: {
		description?: string
		name?:        string
		state?:       string
		vlan_id?:     string
		vlan_range?:  string
	}
}

ce_evpn_bgp_rr :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_evpn_bgp_rr: {
		as_number:          string
		bgp_evpn_enable?:   string
		bgp_instance?:      string
		peer?:              string
		peer_type?:         string
		policy_vpn_target?: string
		reflect_client?:    string
	}
}

ce_sflow :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_sflow: {
		collector_udp_port?:      string
		sample_length?:           string
		collector_datagram_size?: string
		export_route?:            string
		sample_collector?:        string
		sample_rate?:             string
		state?:                   string
		collector_ip?:            string
		collector_ip_vpn?:        string
		sample_direction?:        string
		collector_id?:            string
		collector_description?:   string
		collector_meth?:          string
		counter_collector?:       string
		counter_interval?:        string
		forward_enp_slot?:        string
		rate_limit?:              string
		rate_limit_slot?:         string
		agent_ip?:                string
		source_ip?:               string
		sflow_interface?:         string
	}
}

ce_snmp_location :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_snmp_location: {
		location: string
		state?:   string
	}
}

ce_static_route_bfd :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_static_route_bfd: {
		commands?: [...]
		mask?:              string
		min_tx_interval?:   int
		aftype:             string
		destvrf?:           string
		detect_multiplier?: int
		min_rx_interval?:   int
		vrf?:               string
		bfd_session_name?:  string
		next_hop?:          string
		nhp_interface?:     string
		pref?:              int
		state?:             string
		description?:       string
		function_flag:      string
		prefix:             string
		tag?:               int
	}
}

ce_switchport :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_switchport: {
		tagged_vlans?:   string
		trunk_vlans?:    string
		untagged_vlans?: string
		default_vlan?:   string
		interface:       string
		mode?:           string
		pvid_vlan?:      string
		state?:          string
	}
}

ce_lacp :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_lacp: {
		fast_timeout?:             int
		global_priority?:          int
		mode?:                     string
		priority?:                 int
		timeout_type?:             string
		trunk_id?:                 int
		unexpected_mac_disable?:   bool
		mixed_rate_link_enable?:   bool
		port_id_extension_enable?: bool
		collector_delay?:          int
		max_active_linknumber?:    int
		preempt_delay?:            int
		preempt_enable?:           bool
		state?:                    string
		state_flapping?:           bool
		select?:                   string
		system_id?:                string
	}
}

ce_ospf :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_ospf: {
		auth_mode?:        string
		auth_text_md5?:    string
		state?:            string
		mask?:             string
		max_load_balance?: string
		nexthop_addr?:     string
		nexthop_weight?:   string
		addr?:             string
		area?:             string
		auth_key_id?:      string
		auth_text_simple?: string
		process_id:        string
	}
}

ce_snmp_target_host :: {
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	ce_snmp_target_host: {
		address?:          string
		host_name?:        string
		recv_port?:        string
		security_name?:    string
		security_name_v3?: string
		version?:          string
		vpn_name?:         string
		connect_port?:     string
		interface_name?:   string
		is_public_net?:    string
		notify_type?:      string
		security_level?:   string
		security_model?:   string
	}
}
