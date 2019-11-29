package nxos

nxos_banner :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_banner: {
		banner: string
		state?: string
		text?:  string
	}
}

nxos_gir_profile_management :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_gir_profile_management: {
		state?:    string
		commands?: string
		mode:      string
	}
}

nxos_l3_interfaces :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_l3_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

nxos_vtp_domain :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_vtp_domain: {
		domain: string
	}
}

nxos_vxlan_vtep_vni :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_vxlan_vtep_vni: {
		vni:                   string
		ingress_replication?:  string
		multicast_group?:      string
		peer_list?:            string
		suppress_arp?:         bool
		suppress_arp_disable?: bool
		assoc_vrf?:            bool
		interface:             string
		state?:                string
	}
}

nxos_evpn_global :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_evpn_global: {
		nv_overlay_evpn: bool
	}
}

nxos_snmp_traps :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_snmp_traps: {
		group:  string
		state?: string
	}
}

nxos_igmp :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_igmp: {
		state?:             string
		enforce_rtr_alert?: bool
		flush_routes?:      bool
		restart?:           bool
	}
}

nxos_ntp_auth :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_ntp_auth: {
		auth_type?:      string
		authentication?: string
		key_id?:         string
		md5string?:      string
		state?:          string
		trusted_key?:    string
	}
}

nxos_overlay_global :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_overlay_global: {
		anycast_gateway_mac: string
	}
}

nxos_snmp_community :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_snmp_community: {
		state?:    string
		access?:   string
		acl?:      string
		community: string
		group?:    string
	}
}

nxos_feature :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_feature: {
		feature: string
		state?:  string
	}
}

nxos_smu :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_smu: {
		file_system?: string
		pkg:          string
	}
}

nxos_snmp_location :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_snmp_location: {
		state?:   string
		location: string
	}
}

nxos_vrf :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_vrf: {
		aggregate?:             string
		description?:           string
		interfaces?:            string
		rd?:                    string
		state?:                 string
		vni?:                   string
		admin_state?:           string
		associated_interfaces?: string
		delay?:                 string
		name:                   string
		purge?:                 bool
	}
}

nxos_vxlan_vtep :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_vxlan_vtep: {
		interface:                        string
		shutdown?:                        bool
		source_interface?:                string
		description?:                     string
		global_ingress_replication_bgp?:  bool
		global_mcast_group_L2?:           string
		global_mcast_group_L3?:           string
		global_suppress_arp?:             bool
		source_interface_hold_down_time?: string
		host_reachability?:               bool
		state?:                           string
	}
}

nxos_command :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_command: {
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
		wait_for?: string
	}
}

nxos_interface :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_interface: {
		delay?:                             string
		fabric_forwarding_anycast_gateway?: bool
		interface_type?:                    string
		name:                               string
		speed?:                             string
		description?:                       string
		ip_forward?:                        string
		mtu?:                               string
		state?:                             string
		tx_rate?:                           string
		duplex?:                            string
		mode?:                              string
		admin_state?:                       string
		aggregate?:                         string
		neighbors?:                         string
		rx_rate?:                           string
	}
}

nxos_lacp_interfaces :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_lacp_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

nxos_pim :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_pim: {
		bfd?:      string
		ssm_range: string
	}
}

nxos_snapshot :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_snapshot: {
		row_id?:                  string
		snapshot1?:               string
		action:                   string
		element_key2?:            string
		section?:                 string
		snapshot_name?:           string
		description?:             string
		element_key1?:            string
		path?:                    string
		show_command?:            string
		compare_option?:          string
		comparison_results_file?: string
		save_snapshot_locally?:   bool
		snapshot2?:               string
	}
}

nxos_acl_interface :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_acl_interface: {
		direction: string
		interface: string
		name:      string
		state?:    string
	}
}

nxos_bgp_neighbor_af :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_bgp_neighbor_af: {
		afi:                          string
		disable_peer_as_check?:       bool
		filter_list_out?:             string
		vrf?:                         string
		weight?:                      string
		advertise_map_non_exist?:     string
		max_prefix_limit?:            string
		suppress_inactive?:           bool
		max_prefix_interval?:         string
		filter_list_in?:              string
		max_prefix_threshold?:        string
		next_hop_third_party?:        bool
		prefix_list_in?:              string
		route_map_in?:                string
		unsuppress_map?:              string
		advertise_map_exist?:         string
		max_prefix_warning?:          bool
		safi:                         string
		send_community?:              string
		asn:                          string
		default_originate_route_map?: string
		next_hop_self?:               bool
		prefix_list_out?:             string
		soft_reconfiguration_in?:     string
		additional_paths_receive?:    string
		allowas_in_max?:              string
		as_override?:                 bool
		route_map_out?:               string
		soo?:                         string
		allowas_in?:                  bool
		default_originate?:           bool
		neighbor:                     string
		route_reflector_client?:      bool
		additional_paths_send?:       string
		state?:                       string
	}
}

nxos_pim_rp_address :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_pim_rp_address: {
		state:        string
		bidir?:       bool
		group_list?:  string
		prefix_list?: string
		route_map?:   string
		rp_address:   string
	}
}

nxos_telemetry :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_telemetry: {
		config?: {...}
		state?: string
	}
}

nxos_vtp_password :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_vtp_password: {
		vtp_password?: string
		state?:        string
	}
}

nxos_facts :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_facts: {
		gather_network_resources?: string
		gather_subset?:            string
	}
}

nxos_interfaces :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

nxos_l3_interface :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_l3_interface: {
		name?:      string
		state?:     string
		aggregate?: string
		ipv4?:      string
		ipv6?:      string
	}
}

nxos_lldp :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_lldp: {
		state?: string
	}
}

nxos_ospf_vrf :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_ospf_vrf: {
		default_metric?:           string
		ospf:                      string
		passive_interface?:        bool
		auto_cost?:                string
		state?:                    string
		timer_throttle_lsa_hold?:  string
		timer_throttle_spf_hold?:  string
		timer_throttle_spf_max?:   string
		vrf?:                      string
		bfd?:                      string
		timer_throttle_lsa_max?:   string
		timer_throttle_lsa_start?: string
		timer_throttle_spf_start?: string
		router_id?:                string
		log_adjacency?:            string
	}
}

nxos_rpm :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_rpm: {
		pkg:          string
		state?:       string
		aggregate?:   string
		file_system?: string
	}
}

nxos_vrf_af :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_vrf_af: {
		vrf:                          string
		afi:                          string
		route_target_both_auto_evpn?: bool
		state?:                       string
	}
}

nxos_bgp :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_bgp: {
		asn:                                       string
		bestpath_med_missing_as_worst?:            bool
		bestpath_med_non_deterministic?:           bool
		disable_policy_batching_ipv4_prefix_list?: string
		maxas_limit?:                              string
		router_id?:                                string
		timer_bestpath_limit?:                     string
		bestpath_compare_neighborid?:              bool
		local_as?:                                 string
		timer_bgp_hold?:                           string
		cluster_id?:                               string
		disable_policy_batching_ipv6_prefix_list?: string
		event_history_events?:                     string
		shutdown?:                                 bool
		event_history_periodic?:                   string
		bestpath_aspath_multipath_relax?:          bool
		bestpath_compare_routerid?:                bool
		bestpath_cost_community_ignore?:           bool
		bestpath_med_confed?:                      bool
		confederation_peers?:                      string
		disable_policy_batching?:                  bool
		event_history_detail?:                     string
		graceful_restart_timers_stalepath_time?:   string
		confederation_id?:                         string
		graceful_restart_helper?:                  bool
		timer_bgp_keepalive?:                      string
		vrf?:                                      string
		fast_external_fallover?:                   bool
		flush_routes?:                             bool
		graceful_restart?:                         bool
		neighbor_down_fib_accelerate?:             bool
		event_history_cli?:                        string
		isolate?:                                  bool
		reconnect_interval?:                       string
		suppress_fib_pending?:                     bool
		bestpath_always_compare_med?:              bool
		enforce_first_as?:                         bool
		graceful_restart_timers_restart?:          string
		log_neighbor_changes?:                     bool
		state?:                                    string
	}
}

nxos_reboot :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_reboot: {
		confirm?: bool
	}
}

nxos_vpc :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_vpc: {
		delay_restore?:                string
		delay_restore_orphan_port?:    string
		pkl_vrf?:                      string
		auto_recovery?:                bool
		auto_recovery_reload_delay?:   string
		delay_restore_interface_vlan?: string
		domain:                        string
		peer_gw?:                      bool
		pkl_dest?:                     string
		pkl_src?:                      string
		role_priority?:                string
		state:                         string
		system_priority?:              string
	}
}

nxos_acl :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_acl: {
		seq?:          string
		state?:        string
		action?:       string
		dest_port_op?: string
		precedence?:   string
		proto?:        string
		remark?:       string
		src?:          string
		src_port_op?:  string
		time_range?:   string
		dest_port2?:   string
		dscp?:         string
		established?:  string
		psh?:          string
		rst?:          string
		src_port2?:    string
		syn?:          string
		ack?:          string
		dest_port1?:   string
		fragments?:    string
		name:          string
		urg?:          string
		dest?:         string
		fin?:          string
		log?:          string
		src_port1?:    string
	}
}

nxos_bfd_interfaces :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_bfd_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

nxos_igmp_interface :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_igmp_interface: {
		group_timeout?:           string
		last_member_query_count?: string
		oif_ps?:                  string
		oif_source?:              string
		query_mrt?:               string
		report_llg?:              bool
		immediate_leave?:         bool
		interface:                string
		last_member_qrt?:         string
		query_interval?:          string
		robustness?:              string
		startup_query_interval?:  string
		state?:                   string
		version?:                 string
		oif_prefix?:              string
		oif_routemap?:            string
		querier_timeout?:         string
		restart?:                 bool
		startup_query_count?:     string
	}
}

nxos_interface_ospf :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_interface_ospf: {
		passive_interface?:              bool
		hello_interval?:                 string
		message_digest_encryption_type?: string
		message_digest_key_id?:          string
		state?:                          string
		bfd?:                            string
		message_digest?:                 bool
		network?:                        string
		ospf:                            string
		area:                            string
		dead_interval?:                  string
		message_digest_password?:        string
		cost?:                           string
		interface:                       string
		message_digest_algorithm_type?:  string
	}
}

nxos_l2_interface :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_l2_interface: {
		name:                 string
		native_vlan?:         string
		state?:               string
		trunk_allowed_vlans?: string
		trunk_vlans?:         string
		access_vlan?:         string
		aggregate?:           string
		mode?:                string
	}
}

nxos_pim_interface :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_pim_interface: {
		bfd?:             string
		dr_prio?:         string
		hello_auth_key?:  string
		jp_type_out?:     string
		neighbor_type?:   string
		border?:          bool
		hello_interval?:  int
		interface:        string
		jp_policy_in?:    string
		neighbor_policy?: string
		jp_policy_out?:   string
		jp_type_in?:      string
		sparse?:          bool
		state?:           string
	}
}

nxos_user :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_user: {
		role?:                string
		sshkey?:              string
		state?:               string
		update_password?:     string
		aggregate?:           string
		configured_password?: string
		name?:                string
		purge?:               bool
	}
}

nxos_evpn_vni :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_evpn_vni: {
		route_distinguisher:  string
		route_target_both?:   string
		route_target_export?: string
		route_target_import?: string
		state?:               string
		vni:                  string
	}
}

nxos_lag_interfaces :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_lag_interfaces: {
		config?: [...]
		state?: string
	}
}

nxos_system :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_system: {
		system_mtu?:    string
		domain_lookup?: bool
		domain_name?:   string
		domain_search?: string
		hostname?:      string
		name_servers?:  string
		state?:         string
	}
}

nxos_vtp_version :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_vtp_version: {
		version: string
	}
}

nxos_aaa_server :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_aaa_server: {
		global_key?:       string
		server_timeout?:   string
		server_type:       string
		state?:            string
		deadtime?:         string
		directed_request?: string
		encrypt_type?:     string
	}
}

nxos_hsrp :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_hsrp: {
		auth_string?: string
		auth_type?:   string
		group:        string
		interface:    string
		preempt?:     string
		priority?:    string
		state?:       string
		version?:     string
		vip?:         string
	}
}

nxos_hsrp_interfaces :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_hsrp_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

nxos_ospf :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_ospf: {
		ospf:   string
		state?: string
	}
}

nxos_snmp_host :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_snmp_host: {
		src_intf?:   string
		v3?:         string
		vrf_filter?: string
		community?:  string
		snmp_host:   string
		snmp_type?:  string
		state?:      string
		udp?:        string
		version?:    string
		vrf?:        string
	}
}

nxos_udld_interface :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_udld_interface: {
		interface: string
		mode:      string
		state?:    string
	}
}

nxos_vpc_interface :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_vpc_interface: {
		peer_link?:  bool
		portchannel: string
		state:       string
		vpc?:        string
	}
}

nxos_static_route :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_static_route: {
		state?:      string
		tag?:        string
		track?:      string
		aggregate?:  string
		next_hop:    string
		prefix:      string
		route_name?: string
		pref?:       string
		vrf?:        string
	}
}

nxos_bgp_neighbor :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_bgp_neighbor: {
		ebgp_multihop?:          string
		local_as?:               string
		neighbor:                string
		timers_holdtime?:        string
		description?:            string
		capability_negotiation?: bool
		connected_check?:        bool
		pwd?:                    string
		remote_as?:              string
		state?:                  string
		asn:                     string
		dynamic_capability?:     bool
		log_neighbor_changes?:   string
		maximum_peers?:          string
		remove_private_as?:      string
		timers_keepalive?:       string
		transport_passive_only?: bool
		update_source?:          string
		bfd?:                    string
		vrf?:                    string
		pwd_type?:               string
		shutdown?:               bool
		suppress_4_byte_as?:     bool
		low_memory_exempt?:      bool
	}
}

nxos_file_copy :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_file_copy: {
		file_pull_compact?:          bool
		file_pull_timeout?:          string
		file_system?:                string
		local_file_directory?:       string
		remote_scp_server?:          string
		vrf?:                        string
		connect_ssh_port?:           string
		file_pull?:                  bool
		file_pull_kstack?:           bool
		local_file?:                 string
		remote_file?:                string
		remote_scp_server_password?: string
		remote_scp_server_user?:     string
	}
}

nxos_lacp :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_lacp: {
		config?: {...}
		state?: string
	}
}

nxos_linkagg :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_linkagg: {
		mode?:  string
		purge?: bool
		state?: string
		aggregate?: [...]
		force?: bool
		group:  string
		members?: [...]
		min_links?: int
	}
}

nxos_lldp_global :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_lldp_global: {
		config?: {...}
		state?: string
	}
}

nxos_ntp_options :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_ntp_options: {
		logging?: bool
		master?:  bool
		state?:   string
		stratum?: string
	}
}

nxos_snmp_user :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_snmp_user: {
		encrypt?:        bool
		group?:          string
		privacy?:        string
		pwd?:            string
		state?:          string
		user:            string
		authentication?: string
	}
}

nxos_bgp_af :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_bgp_af: {
		client_to_client?:              bool
		dampen_igp_metric?:             string
		distance_ibgp?:                 string
		inject_map?:                    string
		safi:                           string
		advertise_l2vpn_evpn?:          bool
		afi:                            string
		suppress_inactive?:             bool
		table_map_filter?:              bool
		asn:                            string
		maximum_paths?:                 string
		distance_ebgp?:                 string
		redistribute?:                  string
		additional_paths_selection?:    string
		additional_paths_send?:         bool
		vrf:                            string
		networks?:                      string
		state?:                         string
		additional_paths_install?:      bool
		dampening_suppress_time?:       string
		dampening_state?:               bool
		distance_local?:                string
		additional_paths_receive?:      bool
		dampening_max_suppress_time?:   string
		maximum_paths_ibgp?:            string
		dampening_half_time?:           string
		dampening_reuse_time?:          string
		default_metric?:                string
		next_hop_route_map?:            string
		table_map?:                     string
		dampening_routemap?:            string
		default_information_originate?: bool
	}
}

nxos_igmp_snooping :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_igmp_snooping: {
		snooping?:            bool
		state?:               string
		v3_report_supp?:      bool
		group_timeout?:       string
		link_local_grp_supp?: bool
		report_supp?:         bool
	}
}

nxos_install_os :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_install_os: {
		issu?:                 string
		kickstart_image_file?: string
		system_image_file:     string
	}
}

nxos_nxapi :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_nxapi: {
		tlsv1_1?:            bool
		http_port?:          string
		https_port?:         string
		ssl_strong_ciphers?: bool
		state?:              string
		tlsv1_0?:            bool
		http?:               bool
		https?:              bool
		sandbox?:            bool
		tlsv1_2?:            bool
	}
}

nxos_snmp_contact :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_snmp_contact: {
		contact: string
		state:   string
	}
}

nxos_vlans :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_vlans: {
		config?: [...]
		state?: string
	}
}

nxos_vrf_interface :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_vrf_interface: {
		vrf:       string
		interface: string
		state?:    string
	}
}

nxos_aaa_server_host :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_aaa_server_host: {
		key?:          string
		server_type:   string
		state?:        string
		tacacs_port?:  string
		address:       string
		encrypt_type?: string
		host_timeout?: string
		acct_port?:    string
		auth_port?:    string
	}
}

nxos_gir :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_gir: {
		system_mode_maintenance_dont_generate_profile?:  bool
		system_mode_maintenance_on_reload_reset_reason?: string
		system_mode_maintenance_shutdown?:               bool
		system_mode_maintenance_timeout?:                string
		state:                                           string
		system_mode_maintenance?:                        bool
	}
}

nxos_l2_interfaces :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_l2_interfaces: {
		config?: [...{...}]
		state?: string
	}
}

nxos_ntp :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_ntp: {
		vrf_name?:    string
		key_id?:      string
		peer?:        string
		prefer?:      string
		server?:      string
		source_addr?: string
		source_int?:  string
		state?:       string
	}
}

nxos_bfd_global :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_bfd_global: {
		fabricpath_slow_timer?: int
		ipv4_interval?: {...}
		ipv4_slow_timer?: int
		fabricpath_interval?: {...}
		fabricpath_vlan?:       int
		ipv4_echo_rx_interval?: int
		slow_timer?:            int
		startup_timer?:         int
		echo_interface?:        string
		interval?: {...}
		ipv6_echo_rx_interval?: int
		echo_rx_interval?:      int
		ipv6_interval?: {...}
		ipv6_slow_timer?: int
	}
}

nxos_config :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_config: {
		parents?:        string
		running_config?: string
		save_when?:      string
		backup_options?: {...}
		before?:            string
		defaults?:          bool
		lines?:             string
		match?:             string
		src?:               string
		diff_against?:      string
		intended_config?:   string
		after?:             string
		backup?:            bool
		diff_ignore_lines?: string
		replace?:           string
		replace_src?:       string
	}
}

nxos_logging :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_logging: {
		dest?:                 string
		event?:                string
		facility?:             string
		facility_level?:       string
		file_size?:            string
		interface?:            string
		interface_message?:    string
		purge?:                bool
		aggregate?:            string
		name?:                 string
		remote_server?:        string
		timestamp?:            string
		dest_level?:           string
		facility_link_status?: string
		state?:                string
		use_vrf?:              string
	}
}

nxos_ping :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_ping: {
		source?: string
		state?:  string
		vrf?:    string
		count?:  string
		dest:    string
	}
}

nxos_rollback :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_rollback: {
		checkpoint_file?: string
		rollback_to?:     string
	}
}

nxos_udld :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_udld: {
		state?:      string
		aggressive?: string
		msg_time?:   string
		reset?:      bool
	}
}

nxos_vlan :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_vlan: {
		state?:       string
		vlan_id?:     int
		admin_state?: string
		delay?:       int
		interfaces?: [...]
		mapped_vni?: string
		mode?:       string
		name?:       string
		purge?:      bool
		vlan_range?: string
		aggregate?: [...]
		associated_interfaces?: [...]
		vlan_state?: string
	}
}

nxos_vrrp :: {
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	nxos_vrrp: {
		vip?:            string
		admin_state?:    string
		group:           string
		state?:          string
		preempt?:        bool
		priority?:       string
		authentication?: string
		interface:       string
		interval?:       string
	}
}
