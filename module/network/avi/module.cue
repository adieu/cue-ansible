package avi

avi_pool :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_pool: {
		analytics_policy?:                      string
		avi_api_patch_op?:                      string
		graceful_disable_timeout?:              string
		max_conn_rate_per_server?:              string
		server_timeout?:                        string
		servers?:                               string
		ab_pool?:                               string
		east_west?:                             bool
		external_autoscale_groups?:             string
		inline_health_monitor?:                 bool
		server_reselect?:                       string
		conn_pool_properties?:                  string
		lb_algorithm?:                          string
		lb_algorithm_consistent_hash_hdr?:      string
		max_concurrent_connections_per_server?: string
		lb_algorithm_hash?:                     string
		server_auto_scale?:                     bool
		a_pool?:                                string
		capacity_estimation_ttfb_thresh?:       string
		default_server_port?:                   string
		domain_name?:                           string
		gslb_sp_enabled?:                       bool
		lb_algorithm_core_nonaffinity?:         string
		capacity_estimation?:                   bool
		connection_ramp_duration?:              string
		analytics_profile_ref?:                 string
		fewest_tasks_feedback_delay?:           string
		health_monitor_refs?:                   string
		request_queue_depth?:                   string
		uuid?:                                  string
		autoscale_policy_ref?:                  string
		cloud_ref?:                             string
		created_by?:                            string
		description?:                           string
		nsx_securitygroup?:                     string
		rewrite_host_header_to_server_name?:    bool
		server_count?:                          string
		host_check_enabled?:                    bool
		lookup_server_by_name?:                 bool
		avi_api_update_method?:                 string
		prst_hdr_name?:                         string
		server_name?:                           string
		ssl_key_and_certificate_ref?:           string
		min_servers_up?:                        string
		ab_priority?:                           string
		apic_epg_name?:                         string
		delete_server_on_dns_refresh?:          bool
		enabled?:                               bool
		ipaddrgroup_ref?:                       string
		min_health_monitors_up?:                string
		name:                                   string
		tenant_ref?:                            string
		use_service_port?:                      bool
		vrf_ref?:                               string
		cloud_config_cksum?:                    string
		request_queue_enabled?:                 bool
		ssl_profile_ref?:                       string
		application_persistence_profile_ref?:   string
		fail_action?:                           string
		placement_networks?:                    string
		service_metadata?:                      string
		state?:                                 string
		networks?:                              string
		sni_enabled?:                           bool
		url?:                                   string
		autoscale_launch_config_ref?:           string
		autoscale_networks?:                    string
		pki_profile_ref?:                       string
		rewrite_host_header_to_sni?:            bool
	}
}

avi_sslprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_sslprofile: {
		dhparam?:                       string
		state?:                         string
		tags?:                          string
		uuid?:                          string
		url?:                           string
		accepted_versions?:             string
		cipher_enums?:                  string
		name:                           string
		prefer_client_cipher_ordering?: bool
		ssl_session_timeout?:           string
		type?:                          string
		accepted_ciphers?:              string
		send_close_notify?:             bool
		ssl_rating?:                    string
		tenant_ref?:                    string
		avi_api_patch_op?:              string
		avi_api_update_method?:         string
		description?:                   string
		enable_ssl_session_reuse?:      bool
	}
}

avi_trafficcloneprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_trafficcloneprofile: {
		uuid?:                  string
		clone_servers?:         string
		cloud_ref?:             string
		name:                   string
		state?:                 string
		tenant_ref?:            string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		preserve_client_ip?:    bool
		url?:                   string
	}
}

avi_alertscriptconfig :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_alertscriptconfig: {
		uuid?:                  string
		action_script?:         string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		name:                   string
		state?:                 string
		tenant_ref?:            string
		url?:                   string
	}
}

avi_cloud :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_cloud: {
		east_west_ipam_provider_ref?:  string
		ipam_provider_ref?:            string
		license_tier?:                 string
		linuxserver_configuration?:    string
		mtu?:                          string
		aws_configuration?:            string
		enable_vip_static_routes?:     bool
		openstack_configuration?:      string
		url?:                          string
		nsx_configuration?:            string
		state?:                        string
		vca_configuration?:            string
		vtype:                         string
		apic_configuration?:           string
		cloudstack_configuration?:     string
		gcp_configuration?:            string
		vcenter_configuration?:        string
		autoscale_polling_interval?:   string
		dns_provider_ref?:             string
		mesos_configuration?:          string
		proxy_configuration?:          string
		state_based_dns_registration?: bool
		avi_api_update_method?:        string
		dhcp_enabled?:                 bool
		east_west_dns_provider_ref?:   string
		license_type?:                 string
		name:                          string
		azure_configuration?:          string
		ip6_autocfg_enabled?:          bool
		oshiftk8s_configuration?:      string
		rancher_configuration?:        string
		prefer_static_routes?:         bool
		tenant_ref?:                   string
		uuid?:                         string
		apic_mode?:                    bool
		avi_api_patch_op?:             string
		custom_tags?:                  string
		docker_configuration?:         string
		obj_name_prefix?:              string
	}
}

avi_controllerproperties :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_controllerproperties: {
		bm_use_ansible?:                             bool
		se_offline_del?:                             string
		ssl_certificate_expiry_warning_days?:        string
		allow_unauthenticated_apis?:                 bool
		max_seq_vnic_failures?:                      string
		upgrade_dns_ttl?:                            string
		upgrade_lease_time?:                         string
		vs_se_ping_fail?:                            string
		dead_se_detection_timer?:                    string
		portal_token?:                               string
		unresponsive_se_reboot?:                     string
		api_perf_logging_threshold?:                 string
		dummy?:                                      string
		max_seq_attach_ip_failures?:                 string
		seupgrade_segroup_min_dead_timeout?:         string
		warmstart_se_reconnect_wait_time?:           string
		query_host_fail?:                            string
		vs_se_vnic_fail?:                            string
		warmstart_vs_resync_wait_time?:              string
		uuid?:                                       string
		vnic_op_fail_time?:                          string
		avi_api_update_method?:                      string
		consistency_check_timeout_period?:           string
		dns_refresh_period?:                         string
		enable_api_sharding?:                        bool
		max_dead_se_in_grp?:                         string
		secure_channel_controller_token_timeout?:    string
		vs_apic_scaleout_timeout?:                   string
		vs_scaleout_ready_check_interval?:           string
		vs_se_create_fail?:                          string
		attach_ip_retry_interval?:                   string
		attach_ip_retry_limit?:                      string
		cluster_ip_gratuitous_arp_period?:           string
		se_failover_attempt_interval?:               string
		se_from_marketplace?:                        string
		secure_channel_se_token_timeout?:            string
		max_pcap_per_tenant?:                        string
		vs_se_vnic_ip_fail?:                         string
		fatal_error_lease_time?:                     string
		vs_key_rotate_period?:                       string
		appviewx_compat_mode?:                       bool
		avi_api_patch_op?:                           string
		process_locked_useraccounts_timeout_period?: string
		safenet_hsm_version?:                        string
		seupgrade_fabric_pool_size?:                 string
		vs_awaiting_se_timeout?:                     string
		allow_unauthenticated_nodes?:                bool
		cleanup_expired_authtoken_timeout_period?:   string
		state?:                                      string
		vs_se_attach_ip_fail?:                       string
		crashed_se_reboot?:                          string
		enable_memory_balancer?:                     bool
		secure_channel_cleanup_timeout?:             string
		cloud_reconcile?:                            bool
		se_create_timeout?:                          string
		url?:                                        string
		api_idle_timeout?:                           string
		allow_ip_forwarding?:                        bool
		vs_se_bootup_fail?:                          string
		cleanup_sessions_timeout_period?:            string
		persistence_key_rotate_period?:              string
		process_pki_profile_timeout_period?:         string
		se_vnic_cooldown?:                           string
	}
}

avi_customipamdnsprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_customipamdnsprofile: {
		avi_api_update_method?: string
		name:                   string
		script_uri:             string
		tenant_ref?:            string
		uuid?:                  string
		avi_api_patch_op?:      string
		script_params?:         string
		state?:                 string
		url?:                   string
	}
}

avi_errorpagebody :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_errorpagebody: {
		avi_api_patch_op?:      string
		error_page_body?:       string
		name:                   string
		uuid?:                  string
		avi_api_update_method?: string
		format?:                string
		state?:                 string
		tenant_ref?:            string
		url?:                   string
	}
}

avi_gslb :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_gslb: {
		view_id?:                                 string
		leader_cluster_uuid:                      string
		name:                                     string
		state?:                                   string
		url?:                                     string
		uuid?:                                    string
		avi_api_update_method?:                   string
		maintenance_mode?:                        bool
		send_interval?:                           string
		dns_configs?:                             string
		is_federated?:                            bool
		sites?:                                   string
		async_interval?:                          string
		client_ip_addr_group?:                    string
		description?:                             string
		tenant_ref?:                              string
		third_party_sites?:                       string
		avi_api_patch_op?:                        string
		clear_on_max_retries?:                    string
		send_interval_prior_to_maintenance_mode?: string
	}
}

avi_poolgroup :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_poolgroup: {
		implicit_priority_labels?: bool
		avi_api_update_method?:    string
		cloud_config_cksum?:       string
		created_by?:               string
		description?:              string
		uuid?:                     string
		deployment_policy_ref?:    string
		min_servers?:              string
		name:                      string
		tenant_ref?:               string
		avi_api_patch_op?:         string
		cloud_ref?:                string
		members?:                  string
		state?:                    string
		fail_action?:              string
		priority_labels_ref?:      string
		service_metadata?:         string
		url?:                      string
	}
}

avi_user :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_user: {
		access?: [...]
		avi_api_update_method?: string
		default_tenant_ref?:    string
		email?:                 string
		obj_password:           string
		obj_username:           string
		user_profile_ref?:      string
		avi_api_patch_op?:      string
		is_active?:             bool
		is_superuser?:          bool
		name:                   string
		state?:                 string
	}
}

avi_api_session :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_api_session: {
		timeout?:    string
		data?:       string
		http_method: string
		params?:     string
		path?:       string
	}
}

avi_backup :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_backup: {
		timestamp?:             string
		uuid?:                  string
		avi_api_update_method?: string
		backup_config_ref?:     string
		local_file_url?:        string
		remote_file_url?:       string
		state?:                 string
		tenant_ref?:            string
		avi_api_patch_op?:      string
		file_name:              string
		scheduler_ref?:         string
		url?:                   string
	}
}

avi_virtualservice :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_virtualservice: {
		services?:                           string
		allow_invalid_client_cert?:          bool
		apic_contract_graph?:                string
		dns_info?:                           string
		enable_rhi?:                         bool
		l4_policies?:                        string
		analytics_profile_ref?:              string
		cloud_type?:                         string
		service_pool_select?:                string
		vsvip_ref?:                          string
		vh_domain_name?:                     string
		discovered_subnet?:                  string
		enable_autogw?:                      bool
		enable_rhi_snat?:                    bool
		service_metadata?:                   string
		sideband_profile?:                   string
		http_policies?:                      string
		snat_ip?:                            string
		ssl_profile_ref?:                    string
		analytics_policy?:                   string
		cloud_config_cksum?:                 string
		content_rewrite?:                    string
		dns_policies?:                       string
		error_page_profile_ref?:             string
		vs_datascripts?:                     string
		auto_allocate_ip?:                   bool
		server_network_profile_ref?:         string
		topology_policies?:                  string
		use_bridge_ip_as_vip?:               bool
		ssl_profile_selectors?:              string
		client_auth?:                        string
		floating_ip?:                        string
		floating_subnet_uuid?:               string
		pool_ref?:                           string
		security_policy_ref?:                string
		sp_pool_refs?:                       string
		subnet?:                             string
		subnet_uuid?:                        string
		active_standby_se_tag?:              string
		avi_allocated_fip?:                  bool
		avi_api_patch_op?:                   string
		ipam_network_subnet?:                string
		scaleout_ecmp?:                      bool
		url?:                                string
		network_profile_ref?:                string
		sso_policy_ref?:                     string
		state?:                              string
		avi_allocated_vip?:                  bool
		azure_availability_set?:             string
		east_west_placement?:                bool
		enabled?:                            bool
		fqdn?:                               string
		traffic_clone_profile_ref?:          string
		traffic_enabled?:                    bool
		vrf_context_ref?:                    string
		vsvip_cloud_config_cksum?:           string
		application_profile_ref?:            string
		microservice_ref?:                   string
		name:                                string
		tenant_ref?:                         string
		vip?:                                string
		max_cps_per_client?:                 string
		min_pools_up?:                       string
		network_ref?:                        string
		bulk_sync_kvcache?:                  bool
		connections_rate_limit?:             string
		created_by?:                         string
		delay_fairness?:                     bool
		limit_doser?:                        bool
		se_group_ref?:                       string
		sso_policy?:                         string
		waf_policy_ref?:                     string
		ssl_sess_cache_avg_size?:            string
		type?:                               string
		discovered_network_ref?:             string
		ip_address?:                         string
		port_uuid?:                          string
		uuid?:                               string
		requests_rate_limit?:                string
		saml_sp_config?:                     string
		ssl_key_and_certificate_refs?:       string
		auto_allocate_floating_ip?:          bool
		description?:                        string
		flow_dist?:                          string
		ign_pool_net_reach?:                 bool
		pool_group_ref?:                     string
		avi_api_update_method?:              string
		performance_limits?:                 string
		vh_parent_vs_uuid?:                  string
		weight?:                             string
		cloud_ref?:                          string
		host_name_xlate?:                    string
		static_dns_records?:                 string
		use_vip_as_snat?:                    bool
		nsx_securitygroup?:                  string
		remove_listening_port_on_vs_down?:   bool
		availability_zone?:                  string
		close_client_conn_on_config_update?: bool
		discovered_networks?:                string
		flow_label_type?:                    string
		network_security_policy_ref?:        string
	}
}

avi_vsdatascriptset :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_vsdatascriptset: {
		datascript?:            string
		name:                   string
		description?:           string
		string_group_refs?:     string
		ipgroup_refs?:          string
		pool_group_refs?:       string
		pool_refs?:             string
		state?:                 string
		uuid?:                  string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		created_by?:            string
		protocol_parser_refs?:  string
		tenant_ref?:            string
		url?:                   string
	}
}

avi_applicationpersistenceprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_applicationpersistenceprofile: {
		hdr_persistence_profile?:         string
		state?:                           string
		tenant_ref?:                      string
		app_cookie_persistence_profile?:  string
		ip_persistence_profile?:          string
		server_hm_down_recovery?:         string
		name:                             string
		avi_api_patch_op?:                string
		description?:                     string
		http_cookie_persistence_profile?: string
		url?:                             string
		uuid?:                            string
		avi_api_update_method?:           string
		is_federated?:                    bool
		persistence_type:                 string
	}
}

avi_alertemailconfig :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_alertemailconfig: {
		state?:                 string
		tenant_ref?:            string
		to_emails:              string
		url?:                   string
		avi_api_update_method?: string
		name:                   string
		description?:           string
		uuid?:                  string
		avi_api_patch_op?:      string
		cc_emails?:             string
	}
}

avi_api_version :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_api_version: {
	}
}

avi_dnspolicy :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_dnspolicy: {
		avi_api_update_method?: string
		created_by?:            string
		description?:           string
		rule?:                  string
		state?:                 string
		avi_api_patch_op?:      string
		name:                   string
		tenant_ref?:            string
		url?:                   string
		uuid?:                  string
	}
}

avi_ipaddrgroup :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_ipaddrgroup: {
		apic_epg_name?:         string
		avi_api_patch_op?:      string
		description?:           string
		ip_ports?:              string
		marathon_service_port?: string
		tenant_ref?:            string
		url?:                   string
		avi_api_update_method?: string
		prefixes?:              string
		ranges?:                string
		state?:                 string
		addrs?:                 string
		country_codes?:         string
		marathon_app_name?:     string
		name:                   string
		uuid?:                  string
	}
}

avi_role :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_role: {
		state?:                 string
		tenant_ref?:            string
		url?:                   string
		uuid?:                  string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		name:                   string
		privileges?:            string
	}
}

avi_snmptrapprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_snmptrapprofile: {
		name:                   string
		state?:                 string
		tenant_ref?:            string
		trap_servers?:          string
		url?:                   string
		uuid?:                  string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
	}
}

avi_useraccountprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_useraccountprofile: {
		avi_api_patch_op?:              string
		avi_api_update_method?:         string
		max_login_failure_count?:       string
		url?:                           string
		uuid?:                          string
		account_lock_timeout?:          string
		credentials_timeout_threshold?: string
		max_concurrent_sessions?:       string
		max_password_history_count?:    string
		name:                           string
		state?:                         string
	}
}

avi_analyticsprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_analyticsprofile: {
		client_log_config?:                               string
		conn_lossy_total_rexmt_threshold?:                string
		disable_ondemand_metrics?:                        bool
		exclude_http_error_codes?:                        string
		exclude_no_valid_gs_member_as_error?:             bool
		hs_max_resources_penalty?:                        string
		hs_pscore_traffic_threshold_l4_client?:           string
		apdex_rum_threshold?:                             string
		resp_code_block?:                                 string
		hs_security_certscore_le30d?:                     string
		exclude_syn_retransmit_as_error?:                 bool
		exclude_unsupported_dns_query_as_error?:          bool
		sip_log_depth?:                                   string
		apdex_response_tolerated_factor?:                 string
		uuid?:                                            string
		apdex_server_response_threshold?:                 string
		apdex_server_rtt_tolerated_factor?:               string
		exclude_dns_policy_drop_as_significant?:          bool
		exclude_tcp_reset_as_error?:                      bool
		hs_security_cipherscore_ge128b?:                  string
		hs_security_hsts_penalty?:                        string
		apdex_server_response_tolerated_factor?:          string
		hs_security_encalgo_score_none?:                  string
		hs_security_tls10_score?:                         string
		avi_api_update_method?:                           string
		exclude_no_dns_record_as_error?:                  bool
		exclude_persistence_change_as_error?:             bool
		hs_security_nonpfs_penalty?:                      string
		state?:                                           string
		conn_lossy_zero_win_size_event_threshold?:        string
		conn_server_lossy_ooo_threshold?:                 string
		hs_max_anomaly_penalty?:                          string
		hs_security_cipherscore_eq000b?:                  string
		hs_security_cipherscore_lt128b?:                  string
		name:                                             string
		conn_lossy_timeo_rexmt_threshold?:                string
		exclude_server_tcp_reset_as_error?:               bool
		healthscore_max_server_limit?:                    string
		hs_security_certscore_le07d?:                     string
		hs_security_weak_signature_algo_penalty?:         string
		url?:                                             string
		apdex_rtt_threshold?:                             string
		hs_max_security_penalty?:                         string
		hs_security_certscore_expired?:                   string
		hs_security_chain_invalidity_penalty?:            string
		hs_security_encalgo_score_rc4?:                   string
		disable_vs_analytics?:                            bool
		hs_security_tls12_score?:                         string
		exclude_server_dns_error_as_error?:               bool
		conn_server_lossy_total_rexmt_threshold?:         string
		conn_server_lossy_zero_win_size_event_threshold?: string
		disable_se_analytics?:                            bool
		exclude_invalid_dns_query_as_error?:              bool
		hs_pscore_traffic_threshold_l4_server?:           string
		hs_security_selfsignedcert_penalty?:              string
		avi_api_patch_op?:                                string
		apdex_rum_tolerated_factor?:                      string
		exclude_client_close_before_request_as_error?:    bool
		hs_min_dos_rate?:                                 string
		apdex_rtt_tolerated_factor?:                      string
		hs_security_certscore_gt30d?:                     string
		exclude_gs_down_as_error?:                        bool
		hs_security_tls11_score?:                         string
		ondemand_metrics_idle_timeout?:                   string
		ranges?:                                          string
		sensitive_log_profile?:                           string
		disable_server_analytics?:                        bool
		conn_lossy_ooo_threshold?:                        string
		description?:                                     string
		exclude_sip_error_codes?:                         string
		hs_event_throttle_window?:                        string
		hs_performance_boost?:                            string
		hs_security_ssl30_score?:                         string
		apdex_server_rtt_threshold?:                      string
		client_log_streaming_config?:                     string
		conn_server_lossy_timeo_rexmt_threshold?:         string
		enable_advanced_analytics?:                       bool
		exclude_invalid_dns_domain_as_error?:             bool
		tenant_ref?:                                      string
		apdex_response_threshold?:                        string
	}
}

avi_applicationprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_applicationprofile: {
		tenant_ref?:            string
		type:                   string
		url?:                   string
		preserve_client_port?:  bool
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		cloud_config_cksum?:    string
		created_by?:            string
		dns_service_profile?:   string
		dos_rl_profile?:        string
		name:                   string
		description?:           string
		http_profile?:          string
		uuid?:                  string
		preserve_client_ip?:    bool
		sip_service_profile?:   string
		state?:                 string
		tcp_app_profile?:       string
	}
}

avi_microservicegroup :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_microservicegroup: {
		state?:                 string
		uuid?:                  string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		name:                   string
		service_refs?:          string
		tenant_ref?:            string
		url?:                   string
		created_by?:            string
		description?:           string
	}
}

avi_prioritylabels :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_prioritylabels: {
		url?:                   string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		equivalent_labels?:     string
		name:                   string
		state?:                 string
		tenant_ref?:            string
		cloud_ref?:             string
		description?:           string
		uuid?:                  string
	}
}

avi_backupconfiguration :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_backupconfiguration: {
		aws_secret_access?:      string
		remote_hostname?:        string
		upload_to_remote_host?:  bool
		url?:                    string
		aws_access_key?:         string
		aws_bucket_id?:          string
		name:                    string
		remote_directory?:       string
		uuid?:                   string
		avi_api_update_method?:  string
		backup_file_prefix?:     string
		maximum_backups_stored?: string
		save_local?:             bool
		ssh_user_ref?:           string
		avi_api_patch_op?:       string
		backup_passphrase?:      string
		state?:                  string
		tenant_ref?:             string
		upload_to_s3?:           bool
	}
}

avi_cloudconnectoruser :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_cloudconnectoruser: {
		avi_api_patch_op?:       string
		name:                    string
		tencent_credentials?:    string
		uuid?:                   string
		avi_api_update_method?:  string
		private_key?:            string
		state?:                  string
		azure_serviceprincipal?: string
		azure_userpass?:         string
		gcp_credentials?:        string
		oci_credentials?:        string
		tenant_ref?:             string
		url?:                    string
		public_key?:             string
	}
}

avi_scheduler :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_scheduler: {
		enabled?:               bool
		frequency_unit?:        string
		run_script_ref?:        string
		start_date_time?:       string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		frequency?:             string
		tenant_ref?:            string
		state?:                 string
		url?:                   string
		backup_config_ref?:     string
		name:                   string
		run_mode?:              string
		scheduler_action?:      string
		end_date_time?:         string
		uuid?:                  string
	}
}

avi_seproperties :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_seproperties: {
		url?:                   string
		uuid?:                  string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		se_agent_properties?:   string
		se_bootup_properties?:  string
		se_runtime_properties?: string
		state?:                 string
	}
}

avi_cloudproperties :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_cloudproperties: {
		avi_api_update_method?: string
		hyp_props?:             string
		state?:                 string
		avi_api_patch_op?:      string
		cc_props?:              string
		cc_vtypes?:             string
		info?:                  string
		url?:                   string
		uuid?:                  string
	}
}

avi_cluster :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_cluster: {
		avi_api_patch_op?:           string
		rejoin_nodes_automatically?: bool
		tenant_ref?:                 string
		uuid?:                       string
		avi_api_update_method?:      string
		name:                        string
		nodes?:                      string
		state?:                      string
		url?:                        string
		virtual_ip?:                 string
	}
}

avi_networksecuritypolicy :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_networksecuritypolicy: {
		avi_api_update_method?: string
		cloud_config_cksum?:    string
		created_by?:            string
		description?:           string
		tenant_ref?:            string
		avi_api_patch_op?:      string
		name?:                  string
		rules?:                 string
		state?:                 string
		url?:                   string
		uuid?:                  string
	}
}

avi_poolgroupdeploymentpolicy :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_poolgroupdeploymentpolicy: {
		evaluation_duration?:         string
		scheme?:                      string
		state?:                       string
		target_test_traffic_ratio?:   string
		test_traffic_ratio_rampup?:   string
		webhook_ref?:                 string
		avi_api_patch_op?:            string
		avi_api_update_method?:       string
		rules?:                       string
		auto_disable_old_prod_pools?: bool
		name:                         string
		url?:                         string
		uuid?:                        string
		description?:                 string
		tenant_ref?:                  string
	}
}

avi_tenant :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_tenant: {
		local?:                 bool
		name:                   string
		state?:                 string
		uuid?:                  string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		config_settings?:       string
		created_by?:            string
		description?:           string
		url?:                   string
	}
}

avi_useraccount :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_useraccount: {
		force_change?: string
		old_password?: string
	}
}

avi_clusterclouddetails :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_clusterclouddetails: {
		name:                   string
		state?:                 string
		tenant_ref?:            string
		url?:                   string
		uuid?:                  string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		azure_info?:            string
	}
}

avi_httppolicyset :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_httppolicyset: {
		description?:           string
		http_response_policy?:  string
		is_internal_policy?:    bool
		state?:                 string
		http_security_policy?:  string
		url?:                   string
		avi_api_patch_op?:      string
		cloud_config_cksum?:    string
		created_by?:            string
		http_request_policy?:   string
		name:                   string
		tenant_ref?:            string
		avi_api_update_method?: string
		uuid?:                  string
	}
}

avi_networkprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_networkprofile: {
		name:                   string
		state?:                 string
		tenant_ref?:            string
		url?:                   string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		description?:           string
		connection_mirror?:     bool
		profile:                string
		uuid?:                  string
	}
}

avi_serverautoscalepolicy :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_serverautoscalepolicy: {
		name:                          string
		scaleout_cooldown?:            string
		use_predicted_load?:           bool
		uuid?:                         string
		avi_api_patch_op?:             string
		intelligent_scalein_margin?:   string
		intelligent_scaleout_margin?:  string
		max_size?:                     string
		description?:                  string
		min_size?:                     string
		state?:                        string
		scalein_alertconfig_refs?:     string
		tenant_ref?:                   string
		url?:                          string
		avi_api_update_method?:        string
		intelligent_autoscale?:        bool
		max_scalein_adjustment_step?:  string
		max_scaleout_adjustment_step?: string
		scalein_cooldown?:             string
		scaleout_alertconfig_refs?:    string
	}
}

avi_serviceenginegroup :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_serviceenginegroup: {
		enable_routing?:                        bool
		max_vs_per_se?:                         string
		vs_se_scaleout_ready_timeout?:          string
		vss_placement_enabled?:                 bool
		enable_multi_lb?:                       bool
		se_use_dpdk?:                           string
		vs_host_redundancy?:                    bool
		app_cache_percent?:                     string
		free_list_size?:                        string
		host_attribute_value?:                  string
		minimum_required_config_memory?:        string
		se_probe_port?:                         string
		ssl_preprocess_sni_hostname?:           bool
		disable_gro?:                           bool
		flow_table_new_syn_max_entries?:        string
		memory_per_se?:                         string
		vcenter_datastores?:                    string
		host_attribute_key?:                    string
		max_scaleout_per_vs?:                   string
		realtime_se_metrics?:                   string
		se_flow_probe_retries?:                 string
		significant_log_throttle?:              string
		vcenter_clusters?:                      string
		auto_rebalance?:                        bool
		disable_tso?:                           bool
		hardwaresecuritymodulegroup_ref?:       string
		license_tier?:                          string
		max_cpu_usage?:                         string
		service_ip_subnets?:                    string
		auto_rebalance_criteria?:               string
		enable_vmac?:                           bool
		max_se?:                                string
		minimum_connection_memory?:             string
		placement_mode?:                        string
		se_pcap_lookahead?:                     bool
		num_dispatcher_cores?:                  string
		se_bandwidth_type?:                     string
		se_routing?:                            bool
		auto_rebalance_interval?:               string
		custom_securitygroups_mgmt?:            string
		openstack_mgmt_network_uuid?:           string
		waf_learning_memory?:                   string
		auto_redistribute_active_standby_load?: bool
		avi_api_update_method?:                 string
		se_deprovision_delay?:                  string
		se_dpdk_pmd?:                           string
		shm_minimum_config_memory?:             string
		buffer_se?:                             string
		custom_tag?:                            string
		disable_csum_offloads?:                 bool
		se_name_prefix?:                        string
		se_thread_multiplier?:                  string
		additional_config_memory?:              string
		avi_api_patch_op?:                      string
		memory_for_config_update?:              string
		non_significant_log_throttle?:          string
		openstack_availability_zones?:          string
		se_flow_probe_timer?:                   string
		async_ssl?:                             bool
		auto_rebalance_capacity_per_se?:        string
		config_debugs_on_all_cores?:            bool
		min_se?:                                string
		se_ipc_udp_port?:                       string
		se_vs_hb_max_pkts_in_batch?:            string
		uuid?:                                  string
		disable_avi_securitygroups?:            bool
		min_cpu_usage?:                         string
		url?:                                   string
		vs_scalein_timeout?:                    string
		vs_scaleout_timeout?:                   string
		waf_mempool_size?:                      string
		async_ssl_threads?:                     string
		cloud_ref?:                             string
		distribute_queues?:                     bool
		heap_minimum_config_memory?:            string
		num_flow_cores_sum_changes_to_ignore?:  string
		se_vs_hb_max_vs_in_pkt?:                string
		advertise_backend_networks?:            bool
		extra_config_multiplier?:               string
		vip_asg?:                               string
		license_type?:                          string
		log_disksz?:                            string
		openstack_mgmt_network_name?:           string
		se_tunnel_mode?:                        string
		vcenter_hosts?:                         string
		waf_learning_interval?:                 string
		udf_log_throttle?:                      string
		accelerated_networking?:                bool
		active_standby?:                        bool
		data_network_id?:                       string
		ephemeral_portrange_start?:             string
		least_load_core_selection?:             bool
		max_rules_per_lb?:                      string
		description?:                           string
		ephemeral_portrange_end?:               string
		extra_shared_config_memory?:            string
		iptables?:                              string
		per_app?:                               bool
		mem_reserve?:                           bool
		se_pcap_reinit_frequency?:              string
		se_sb_dedicated_core?:                  bool
		self_se_election?:                      bool
		state?:                                 string
		vcenter_datastores_include?:            bool
		aggressive_failure_detection?:          bool
		app_learning_memory_percent?:           string
		archive_shm_limit?:                     string
		bgp_state_update_interval?:             string
		enable_vip_on_all_interfaces?:          bool
		reboot_on_stop?:                        bool
		custom_securitygroups_data?:            string
		ingress_access_mgmt?:                   string
		max_memory_per_mempool?:                string
		min_scaleout_per_vs?:                   string
		se_tracert_port_range?:                 string
		tenant_ref?:                            string
		allow_burst?:                           bool
		ignore_rtt_threshold?:                  string
		n_log_streaming_threads?:               string
		se_tunnel_udp_port?:                    string
		vcenter_folder?:                        string
		connection_memory_percentage?:          string
		disk_per_se?:                           string
		se_dos_profile?:                        string
		se_remote_punt_udp_port?:               string
		se_sb_threads?:                         string
		se_udp_encap_ipc?:                      string
		instance_flavor?:                       string
		vcenter_datastore_mode?:                string
		vs_se_scaleout_additional_wait_time?:   string
		vs_scalein_timeout_for_upgrade?:        string
		vss_placement?:                         string
		datascript_timeout?:                    string
		distribute_load_active_standby?:        bool
		floating_intf_ip_se_2?:                 string
		mgmt_subnet?:                           string
		openstack_availability_zone?:           string
		use_standard_alb?:                      bool
		hypervisor?:                            string
		max_public_ips_per_lb?:                 string
		vcpus_per_se?:                          string
		ha_mode?:                               string
		host_gateway_monitor?:                  bool
		os_reserved_memory?:                    string
		cpu_reserve?:                           bool
		enable_hsm_priming?:                    bool
		name:                                   string
		service_ip6_subnets?:                   string
		vs_switchover_timeout?:                 string
		cpu_socket_affinity?:                   bool
		dedicated_dispatcher_core?:             bool
		disable_se_memory_check?:               bool
		floating_intf_ip?:                      string
		hm_on_standby?:                         bool
		ingress_access_data?:                   string
		algo?:                                  string
		mgmt_network_ref?:                      string
		se_pcap_reinit_threshold?:              string
		waf_mempool?:                           bool
	}
}

avi_systemconfiguration :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_systemconfiguration: {
		dns_configuration?:            string
		docker_mode?:                  bool
		mgmt_ip_access_control?:       string
		ntp_configuration?:            string
		portal_configuration?:         string
		snmp_configuration?:           string
		admin_auth_configuration?:     string
		default_license_tier?:         string
		linux_configuration?:          string
		ssh_ciphers?:                  string
		url?:                          string
		avi_api_patch_op?:             string
		email_configuration?:          string
		proxy_configuration?:          string
		ssh_hmacs?:                    string
		state?:                        string
		uuid?:                         string
		welcome_workflow_complete?:    bool
		avi_api_update_method?:        string
		global_tenant_config?:         string
		secure_channel_configuration?: string
		dns_virtualservice_refs?:      string
	}
}

avi_certificatemanagementprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_certificatemanagementprofile: {
		name:                   string
		script_params?:         string
		tenant_ref?:            string
		avi_api_patch_op?:      string
		script_path:            string
		state?:                 string
		url?:                   string
		uuid?:                  string
		avi_api_update_method?: string
	}
}

avi_gslbservice :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_gslbservice: {
		health_monitor_refs?:                 string
		health_monitor_scope?:                string
		pool_algorithm?:                      string
		site_persistence_enabled?:            bool
		uuid?:                                string
		application_persistence_profile_ref?: string
		avi_api_patch_op?:                    string
		created_by?:                          string
		hm_off?:                              bool
		is_federated?:                        bool
		num_dns_ip?:                          string
		state?:                               string
		ttl?:                                 string
		avi_api_update_method?:               string
		down_response?:                       string
		enabled?:                             bool
		use_edns_client_subnet?:              bool
		wildcard_match?:                      bool
		url?:                                 string
		controller_health_status_enabled?:    bool
		groups?:                              string
		tenant_ref?:                          string
		name:                                 string
		description?:                         string
		domain_names?:                        string
		min_members?:                         string
	}
}

avi_l4policyset :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_l4policyset: {
		created_by?:            string
		is_internal_policy?:    bool
		l4_connection_policy?:  string
		name:                   string
		uuid?:                  string
		avi_api_update_method?: string
		description?:           string
		state?:                 string
		tenant_ref?:            string
		url?:                   string
		avi_api_patch_op?:      string
	}
}

avi_sslkeyandcertificate :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_sslkeyandcertificate: {
		key_passphrase?:                     string
		state?:                              string
		type?:                               string
		certificate_base64?:                 bool
		dynamic_params?:                     string
		format?:                             string
		key?:                                string
		created_by?:                         string
		hardwaresecuritymodulegroup_ref?:    string
		key_params?:                         string
		tenant_ref?:                         string
		key_base64?:                         bool
		name:                                string
		status?:                             string
		url?:                                string
		avi_api_patch_op?:                   string
		avi_api_update_method?:              string
		certificate_management_profile_ref?: string
		enckey_name?:                        string
		uuid?:                               string
		ca_certs?:                           string
		certificate:                         string
		enckey_base64?:                      string
	}
}

avi_vsvip :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_vsvip: {
		uuid?:                     string
		avi_api_patch_op?:         string
		avi_api_update_method?:    string
		state?:                    string
		name:                      string
		vip?:                      string
		vrf_context_ref?:          string
		vsvip_cloud_config_cksum?: string
		cloud_ref?:                string
		dns_info?:                 string
		east_west_placement?:      bool
		tenant_ref?:               string
		url?:                      string
		use_standard_alb?:         bool
	}
}

avi_errorpageprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_errorpageprofile: {
		app_name?:              string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		host_name?:             string
		name:                   string
		state?:                 string
		tenant_ref?:            string
		uuid?:                  string
		company_name?:          string
		error_pages?:           string
		url?:                   string
	}
}

avi_ipamdnsproviderprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_ipamdnsproviderprofile: {
		allocate_ip_in_vrf?:    bool
		gcp_profile?:           string
		internal_profile?:      string
		type:                   string
		aws_profile?:           string
		tenant_ref?:            string
		tencent_profile?:       string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		azure_profile?:         string
		custom_profile?:        string
		infoblox_profile?:      string
		name:                   string
		openstack_profile?:     string
		oci_profile?:           string
		proxy_configuration?:   string
		state?:                 string
		url?:                   string
		uuid?:                  string
	}
}

avi_vrfcontext :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_vrfcontext: {
		tenant_ref?:               string
		uuid?:                     string
		bgp_profile?:              string
		debugvrfcontext?:          string
		gateway_mon?:              string
		name:                      string
		internal_gateway_monitor?: string
		state?:                    string
		static_routes?:            string
		system_default?:           bool
		avi_api_patch_op?:         string
		avi_api_update_method?:    string
		cloud_ref?:                string
		description?:              string
		url?:                      string
	}
}

avi_alertconfig :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_alertconfig: {
		recommendation?:        string
		alert_rule:             string
		expiry_time?:           string
		obj_uuid?:              string
		threshold?:             string
		autoscale_alert?:       bool
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		category:               string
		description?:           string
		enabled?:               bool
		object_type?:           string
		rolling_window?:        string
		summary?:               string
		tenant_ref?:            string
		action_group_ref?:      string
		name:                   string
		source:                 string
		state?:                 string
		throttle?:              string
		url?:                   string
		uuid?:                  string
	}
}

avi_gslbgeodbprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_gslbgeodbprofile: {
		description?:           string
		entries?:               string
		is_federated?:          bool
		name:                   string
		state?:                 string
		tenant_ref?:            string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		url?:                   string
		uuid?:                  string
	}
}

avi_authprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_authprofile: {
		type:                   string
		uuid?:                  string
		avi_api_patch_op?:      string
		state?:                 string
		tacacs_plus?:           string
		tenant_ref?:            string
		description?:           string
		pa_agent_ref?:          string
		http?:                  string
		ldap?:                  string
		url?:                   string
		avi_api_update_method?: string
		name:                   string
		saml?:                  string
	}
}

avi_network :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_network: {
		vcenter_dvs?:                bool
		avi_api_patch_op?:           string
		configured_subnets?:         string
		name:                        string
		ip6_autocfg_enabled?:        bool
		uuid?:                       string
		vimgrnw_ref?:                string
		vrf_context_ref?:            string
		dhcp_enabled?:               bool
		state?:                      string
		synced_from_se?:             bool
		tenant_ref?:                 string
		url?:                        string
		avi_api_update_method?:      string
		cloud_ref?:                  string
		exclude_discovered_subnets?: bool
	}
}

avi_hardwaresecuritymodulegroup :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_hardwaresecuritymodulegroup: {
		tenant_ref?:            string
		url?:                   string
		uuid?:                  string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		hsm:                    string
		name:                   string
		state?:                 string
	}
}

avi_healthmonitor :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_healthmonitor: {
		is_federated?:          bool
		tenant_ref?:            string
		type:                   string
		successful_checks?:     string
		https_monitor?:         string
		radius_monitor?:        string
		receive_timeout?:       string
		monitor_port?:          string
		name:                   string
		send_interval?:         string
		state?:                 string
		tcp_monitor?:           string
		avi_api_update_method?: string
		dns_monitor?:           string
		failed_checks?:         string
		http_monitor?:          string
		sip_monitor?:           string
		udp_monitor?:           string
		url?:                   string
		uuid?:                  string
		avi_api_patch_op?:      string
		description?:           string
		external_monitor?:      string
	}
}

avi_pkiprofile :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_pkiprofile: {
		avi_api_patch_op?:       string
		crls?:                   string
		ca_certs?:               string
		crl_check?:              bool
		name:                    string
		tenant_ref?:             string
		avi_api_update_method?:  string
		ignore_peer_chain?:      bool
		state?:                  string
		uuid?:                   string
		created_by?:             string
		is_federated?:           bool
		url?:                    string
		validate_only_leaf_crl?: bool
	}
}

avi_stringgroup :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_stringgroup: {
		description?:           string
		state?:                 string
		kv?:                    string
		name:                   string
		tenant_ref?:            string
		type:                   string
		url?:                   string
		uuid?:                  string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
	}
}

avi_autoscalelaunchconfig :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_autoscalelaunchconfig: {
		avi_api_update_method?: string
		name:                   string
		openstack?:             string
		state?:                 string
		tenant_ref?:            string
		url?:                   string
		use_external_asg?:      bool
		avi_api_patch_op?:      string
		description?:           string
		image_id?:              string
		mesos?:                 string
		uuid?:                  string
	}
}

avi_gslbservice_patch_member :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_gslbservice_patch_member: {
		data?:   string
		name:    string
		params?: string
		state?:  string
	}
}

avi_serviceengine :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_serviceengine: {
		cloud_ref?:             string
		container_type?:        string
		controller_ip?:         string
		flavor?:                string
		tenant_ref?:            string
		avi_api_patch_op?:      string
		controller_created?:    bool
		data_vnics?:            string
		enable_state?:          string
		host_ref?:              string
		name?:                  string
		se_group_ref?:          string
		hypervisor?:            string
		mgmt_vnic?:             string
		availability_zone?:     string
		avi_api_update_method?: string
		container_mode?:        bool
		resources?:             string
		state?:                 string
		url?:                   string
		uuid?:                  string
	}
}

avi_webhook :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_webhook: {
		description?:           string
		url?:                   string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		callback_url?:          string
		name:                   string
		state?:                 string
		tenant_ref?:            string
		uuid?:                  string
		verification_token?:    string
	}
}

avi_actiongroupconfig :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_actiongroupconfig: {
		action_script_config_ref?:       string
		avi_api_patch_op?:               string
		external_only:                   bool
		autoscale_trigger_notification?: bool
		email_config_ref?:               string
		tenant_ref?:                     string
		url?:                            string
		level:                           string
		name:                            string
		snmp_trap_profile_ref?:          string
		avi_api_update_method?:          string
		description?:                    string
		state?:                          string
		syslog_config_ref?:              string
		uuid?:                           string
	}
}

avi_alertsyslogconfig :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	avi_alertsyslogconfig: {
		tenant_ref?:            string
		url?:                   string
		name:                   string
		state?:                 string
		syslog_servers?:        string
		uuid?:                  string
		avi_api_patch_op?:      string
		avi_api_update_method?: string
		description?:           string
	}
}
