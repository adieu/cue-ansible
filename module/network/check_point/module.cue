package check_point

checkpoint_host :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	checkpoint_host: {
		policy_package?: string
		state?:          string
		targets?: [...]
		auto_install_policy?:  bool
		auto_publish_session?: bool
		ip_address?:           string
		name:                  string
	}
}

cp_mgmt_application_site :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_application_site: {
		details_level?:    string
		ignore_errors?:    bool
		name:              string
		primary_category?: string
		additional_categories?: [...]
		application_signature?: string
		url_list?: [...]
		urls_defined_as_regular_expression?: bool
		color?:                              string
		comments?:                           string
		ignore_warnings?:                    bool
		description?:                        string
		groups?: [...]
		tags?: [...]
	}
}

cp_mgmt_security_zone :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_security_zone: {
		comments?:        string
		details_level?:   string
		ignore_errors?:   bool
		ignore_warnings?: bool
		name:             string
		tags?: [...]
		color?: string
	}
}

cp_mgmt_service_dce_rpc_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_dce_rpc_facts: {
		name?:   string
		offset?: int
		order?: [...]
		show_membership?: bool
		details_level?:   string
		limit?:           int
	}
}

cp_mgmt_service_icmp6_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_icmp6_facts: {
		name?:   string
		offset?: int
		order?: [...]
		show_membership?: bool
		details_level?:   string
		limit?:           int
	}
}

cp_mgmt_time :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_time: {
		color?:         string
		details_level?: string
		end?: {...}
		hours_ranges?: [...]
		name: string
		recurrence?: {...}
		groups?: [...]
		ignore_warnings?: bool
		tags?: [...]
		comments?:      string
		ignore_errors?: bool
		end_never?:     bool
		start?: {...}
		start_now?: bool
	}
}

cp_mgmt_administrator_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_administrator_facts: {
		offset?: int
		order?: [...]
		details_level?: string
		limit?:         int
		name?:          string
	}
}

cp_mgmt_dynamic_object_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_dynamic_object_facts: {
		order?: [...]
		show_membership?: bool
		details_level?:   string
		limit?:           int
		name?:            string
		offset?:          int
	}
}

cp_mgmt_global_assignment :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_global_assignment: {
		ignore_warnings?:                 bool
		manage_protection_actions?:       bool
		dependent_domain?:                string
		details_level?:                   string
		global_access_policy?:            string
		global_domain?:                   string
		global_threat_prevention_policy?: string
		ignore_errors?:                   bool
	}
}

cp_mgmt_host :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_host: {
		nat_settings?: {...}
		host_servers?: {...}
		ignore_errors?:   bool
		ignore_warnings?: bool
		interfaces?: [...]
		name:          string
		ipv4_address?: string
		color?:        string
		groups?: [...]
		comments?:      string
		details_level?: string
		ip_address?:    string
		ipv6_address?:  string
		tags?: [...]
	}
}

cp_mgmt_service_icmp :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_icmp: {
		details_level?: string
		groups?: [...]
		icmp_type?:                                       int
		ignore_warnings?:                                 bool
		keep_connections_open_after_policy_installation?: bool
		color?:                                           string
		comments?:                                        string
		icmp_code?:                                       int
		ignore_errors?:                                   bool
		name:                                             string
		tags?: [...]
	}
}

cp_mgmt_threat_indicator_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_threat_indicator_facts: {
		offset?: int
		order?: [...]
		details_level?: string
		limit?:         int
		name?:          string
	}
}

cp_mgmt_threat_layer :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_threat_layer: {
		ignore_errors?:   bool
		ignore_warnings?: bool
		name:             string
		tags?: [...]
		add_default_rule?: bool
		color?:            string
		comments?:         string
		details_level?:    string
	}
}

cp_mgmt_time_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_time_facts: {
		name?:   string
		offset?: int
		order?: [...]
		details_level?: string
		limit?:         int
	}
}

checkpoint_access_rule :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	checkpoint_access_rule: {
		action?:               string
		policy_package?:       string
		source?:               string
		auto_install_policy?:  bool
		auto_publish_session?: bool
		destination?:          string
		enabled?:              bool
		layer:                 string
		name?:                 string
		position?:             string
		state?:                string
		targets?: [...]
	}
}

cp_mgmt_address_range :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_address_range: {
		ipv6_address_first?: string
		nat_settings?: {...}
		comments?: string
		groups?: [...]
		ignore_warnings?:    bool
		ipv4_address_first?: string
		ipv6_address_last?:  string
		tags?: [...]
		color?:             string
		ignore_errors?:     bool
		ip_address_last?:   string
		details_level?:     string
		ipv4_address_last?: string
		ip_address_first?:  string
		name:               string
	}
}

cp_mgmt_application_site_group_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_application_site_group_facts: {
		name?:   string
		offset?: int
		order?: [...]
		show_membership?:           bool
		dereference_group_members?: bool
		details_level?:             string
		limit?:                     int
	}
}

cp_mgmt_service_group :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_group: {
		color?:    string
		comments?: string
		groups?: [...]
		ignore_warnings?: bool
		members?: [...]
		name:           string
		details_level?: string
		ignore_errors?: bool
		tags?: [...]
	}
}

cp_mgmt_service_sctp :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_sctp: {
		aggressive_aging?: {...}
		keep_connections_open_after_policy_installation?: bool
		use_default_session_timeout?:                     bool
		color?:                                           string
		comments?:                                        string
		groups?: [...]
		ignore_warnings?:             bool
		session_timeout?:             int
		details_level?:               string
		ignore_errors?:               bool
		name:                         string
		port?:                        string
		sync_connections_on_cluster?: bool
		match_for_any?:               bool
		source_port?:                 string
		tags?: [...]
	}
}

cp_mgmt_threat_rule :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_threat_rule: {
		source?: [...]
		source_negate?: bool
		comments?:      string
		name:           string
		protected_scope?: [...]
		protected_scope_negate?: bool
		service?: [...]
		track?: string
		track_settings?: {...}
		ignore_warnings?: bool
		install_on?: [...]
		enabled?:        bool
		ignore_errors?:  bool
		position?:       string
		service_negate?: bool
		action?:         string
		details_level?:  string
		layer?:          string
		destination?: [...]
		destination_negate?: bool
	}
}

cp_mgmt_verify_policy :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_verify_policy: {
		policy_package?: string
	}
}

checkpoint_run_script :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	checkpoint_run_script: {
		script:      string
		script_name: string
		targets: [...]
	}
}

checkpoint_session :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	checkpoint_session: {
		uid:    string
		state?: string
	}
}

cp_mgmt_address_range_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_address_range_facts: {
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
		order?: [...]
		show_membership?: bool
	}
}

cp_mgmt_application_site_group :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_application_site_group: {
		details_level?: string
		members?: [...]
		name:      string
		color?:    string
		comments?: string
		groups?: [...]
		ignore_errors?:   bool
		ignore_warnings?: bool
		tags?: [...]
	}
}

cp_mgmt_tag_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_tag_facts: {
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
		order?: [...]
	}
}

cp_mgmt_threat_profile_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_threat_profile_facts: {
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
		order?: [...]
	}
}

cp_mgmt_access_layer_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_access_layer_facts: {
		limit?:  int
		name?:   string
		offset?: int
		order?: [...]
		details_level?: string
	}
}

cp_mgmt_access_role :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_access_role: {
		tags?: [...]
		users?: [...]
		comments?:        string
		ignore_errors?:   bool
		ignore_warnings?: bool
		machines?: [...]
		name: string
		networks?: [...]
		remote_access_clients?: string
		color?:                 string
		details_level?:         string
	}
}

cp_mgmt_assign_global_assignment :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_assign_global_assignment: {
		details_level?: string
		global_domains?: [...]
		dependent_domains?: [...]
	}
}

cp_mgmt_dns_domain :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_dns_domain: {
		is_sub_domain?: bool
		name:           string
		tags?: [...]
		color?:           string
		comments?:        string
		details_level?:   string
		ignore_errors?:   bool
		ignore_warnings?: bool
	}
}

cp_mgmt_dynamic_object :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_dynamic_object: {
		tags?: [...]
		color?:           string
		comments?:        string
		details_level?:   string
		ignore_errors?:   bool
		ignore_warnings?: bool
		name:             string
	}
}

cp_mgmt_service_udp :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_udp: {
		sync_connections_on_cluster?: bool
		tags?: [...]
		groups?: [...]
		ignore_warnings?:                                 bool
		override_default_settings?:                       bool
		protocol?:                                        string
		session_timeout?:                                 int
		use_default_session_timeout?:                     bool
		color?:                                           string
		comments?:                                        string
		port?:                                            string
		name:                                             string
		details_level?:                                   string
		keep_connections_open_after_policy_installation?: bool
		match_by_protocol_signature?:                     bool
		match_for_any?:                                   bool
		source_port?:                                     string
		accept_replies?:                                  bool
		aggressive_aging?: {...}
		ignore_errors?: bool
	}
}

cp_mgmt_service_udp_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_udp_facts: {
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
		order?: [...]
		show_membership?: bool
	}
}

cp_mgmt_exception_group_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_exception_group_facts: {
		name?:   string
		offset?: int
		order?: [...]
		details_level?: string
		limit?:         int
	}
}

cp_mgmt_group_with_exclusion_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_group_with_exclusion_facts: {
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
		order?: [...]
		show_as_ranges?: bool
	}
}

cp_mgmt_network :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_network: {
		comments?:      string
		details_level?: string
		ignore_errors?: bool
		subnet?:        string
		tags?: [...]
		mask_length?:     int
		name:             string
		subnet_mask?:     string
		subnet6?:         string
		broadcast?:       string
		color?:           string
		ignore_warnings?: bool
		mask_length4?:    int
		mask_length6?:    int
		nat_settings?: {...}
		subnet4?: string
		groups?: [...]
	}
}

cp_mgmt_service_group_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_group_facts: {
		show_membership?:           bool
		dereference_group_members?: bool
		details_level?:             string
		limit?:                     int
		name?:                      string
		offset?:                    int
		order?: [...]
		show_as_ranges?: bool
	}
}

cp_mgmt_service_icmp_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_icmp_facts: {
		order?: [...]
		show_membership?: bool
		details_level?:   string
		limit?:           int
		name?:            string
		offset?:          int
	}
}

cp_mgmt_threat_rule_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_threat_rule_facts: {
		dereference_group_members?: bool
		details_level?:             string
		layer?:                     string
		order?: [...]
		package?:               string
		show_membership?:       bool
		use_object_dictionary?: bool
		filter?:                string
		filter_settings?: {...}
		limit?:  int
		name?:   string
		offset?: int
	}
}

cp_mgmt_vpn_community_meshed :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_vpn_community_meshed: {
		encryption_suite?: string
		ike_phase_2?: {...}
		name: string
		tags?: [...]
		details_level?:     string
		use_shared_secret?: bool
		ike_phase_1?: {...}
		shared_secrets?: [...]
		color?:             string
		comments?:          string
		encryption_method?: string
		gateways?: [...]
		ignore_errors?:   bool
		ignore_warnings?: bool
	}
}

cp_mgmt_threat_profile :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_threat_profile: {
		ignore_errors?:   bool
		ignore_warnings?: bool
		ips_settings?: {...}
		tags?: [...]
		comments?:                string
		confidence_level_medium?: string
		deactivate_protections_by_extended_attributes?: [...]
		details_level?:         string
		color?:                 string
		confidence_level_high?: string
		indicator_overrides?: [...]
		ips?: bool
		overrides?: [...]
		activate_protections_by_extended_attributes?: [...]
		active_protections_severity?: string
		anti_bot?:                    bool
		use_indicators?:              bool
		malicious_mail_policy_settings?: {...}
		name:                                   string
		threat_emulation?:                      bool
		use_extended_attributes?:               bool
		active_protections_performance_impact?: string
		anti_virus?:                            bool
		confidence_level_low?:                  string
	}
}

cp_mgmt_access_role_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_access_role_facts: {
		order?: [...]
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
	}
}

cp_mgmt_discard :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_discard: {
		uid?: string
	}
}

cp_mgmt_global_assignment_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_global_assignment_facts: {
		global_domain?: string
		limit?:         int
		offset?:        int
		order?: [...]
		dependent_domain?: string
		details_level?:    string
	}
}

cp_mgmt_multicast_address_range_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_multicast_address_range_facts: {
		offset?: int
		order?: [...]
		show_membership?: bool
		details_level?:   string
		limit?:           int
		name?:            string
	}
}

cp_mgmt_service_other_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_other_facts: {
		order?: [...]
		show_membership?: bool
		details_level?:   string
		limit?:           int
		name?:            string
		offset?:          int
	}
}

cp_mgmt_service_rpc_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_rpc_facts: {
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
		order?: [...]
		show_membership?: bool
	}
}

cp_mgmt_threat_exception :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_threat_exception: {
		protected_scope_negate?: bool
		protection_or_site?: [...]
		service?: [...]
		action?:        string
		comments?:      string
		details_level?: string
		protected_scope?: [...]
		name:                 string
		rule_name?:           string
		service_negate?:      bool
		destination_negate?:  bool
		exception_group_uid?: string
		ignore_errors?:       bool
		install_on?: [...]
		exception_group_name?: string
		ignore_warnings?:      bool
		source_negate?:        bool
		track?:                string
		source?: [...]
		destination?: [...]
		enabled?:  bool
		layer?:    string
		position?: string
	}
}

cp_mgmt_access_rule_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_access_rule_facts: {
		hits_settings?: {...}
		offset?:                    int
		show_as_ranges?:            bool
		dereference_group_members?: bool
		name?:                      string
		order?: [...]
		package?:         string
		show_hits?:       bool
		show_membership?: bool
		details_level?:   string
		filter_settings?: {...}
		layer?:                 string
		filter?:                string
		limit?:                 int
		use_object_dictionary?: bool
	}
}

cp_mgmt_mds_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_mds_facts: {
		offset?: int
		order?: [...]
		details_level?: string
		limit?:         int
		name?:          string
	}
}

cp_mgmt_run_ips_update :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_run_ips_update: {
		package_path?: string
	}
}

cp_mgmt_service_tcp_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_tcp_facts: {
		show_membership?: bool
		details_level?:   string
		limit?:           int
		name?:            string
		offset?:          int
		order?: [...]
	}
}

cp_mgmt_tag :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_tag: {
		comments?:        string
		details_level?:   string
		ignore_errors?:   bool
		ignore_warnings?: bool
		name:             string
		tags?: [...]
		color?: string
	}
}

checkpoint_host_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	checkpoint_host_facts: {
		name?: string
		uid?:  string
	}
}

cp_mgmt_access_rule :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_access_rule: {
		inline_layer?: string
		layer?:        string
		source?: [...]
		action_settings?: {...}
		content_direction?: string
		destination?: [...]
		details_level?: string
		service?: [...]
		user_check?: {...}
		vpn?: [...]
		content?: [...]
		custom_fields?: {...}
		ignore_errors?: bool
		install_on?: [...]
		source_negate?: bool
		time?: [...]
		action?:             string
		comments?:           string
		destination_negate?: bool
		enabled?:            bool
		service_negate?:     bool
		track?: {...}
		content_negate?:  bool
		ignore_warnings?: bool
		name:             string
		position?:        string
	}
}

cp_mgmt_application_site_category_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_application_site_category_facts: {
		order?: [...]
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
	}
}

cp_mgmt_application_site_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_application_site_facts: {
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
		order?: [...]
		show_membership?: bool
		application_id?:  string
	}
}

cp_mgmt_exception_group :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_exception_group: {
		applied_profile?: string
		applied_threat_rules?: {...}
		ignore_warnings?: bool
		ignore_errors?:   bool
		name:             string
		tags?: [...]
		apply_on?:      string
		color?:         string
		comments?:      string
		details_level?: string
	}
}

cp_mgmt_vpn_community_meshed_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_vpn_community_meshed_facts: {
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
		order?: [...]
	}
}

cp_mgmt_dns_domain_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_dns_domain_facts: {
		name?:   string
		offset?: int
		order?: [...]
		show_membership?: bool
		details_level?:   string
		limit?:           int
	}
}

cp_mgmt_group_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_group_facts: {
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
		order?: [...]
		show_as_ranges?:            bool
		show_membership?:           bool
		dereference_group_members?: bool
	}
}

cp_mgmt_publish :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_publish: {
		uid?: string
	}
}

cp_mgmt_service_dce_rpc :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_dce_rpc: {
		comments?: string
		groups?: [...]
		ignore_warnings?:                                 bool
		interface_uuid?:                                  string
		keep_connections_open_after_policy_installation?: bool
		name:                                             string
		tags?: [...]
		color?:         string
		details_level?: string
		ignore_errors?: bool
	}
}

cp_mgmt_service_sctp_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_sctp_facts: {
		order?: [...]
		show_membership?: bool
		details_level?:   string
		limit?:           int
		name?:            string
		offset?:          int
	}
}

cp_mgmt_threat_exception_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_threat_exception_facts: {
		offset?:                int
		package?:               string
		use_object_dictionary?: bool
		filter?:                string
		exception_group_uid?:   string
		layer?:                 string
		limit?:                 int
		details_level?:         string
		filter_settings?: {...}
		rule_name?:                 string
		show_membership?:           bool
		dereference_group_members?: bool
		name?:                      string
		order?: [...]
		exception_group_name?: string
	}
}

cp_mgmt_host_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_host_facts: {
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
		order?: [...]
		show_membership?: bool
	}
}

cp_mgmt_network_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_network_facts: {
		order?: [...]
		show_membership?: bool
		details_level?:   string
		limit?:           int
		name?:            string
		offset?:          int
	}
}

cp_mgmt_service_icmp6 :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_icmp6: {
		keep_connections_open_after_policy_installation?: bool
		tags?: [...]
		comments?: string
		groups?: [...]
		icmp_code?:       int
		icmp_type?:       int
		ignore_warnings?: bool
		color?:           string
		details_level?:   string
		ignore_errors?:   bool
		name:             string
	}
}

checkpoint_object_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	checkpoint_object_facts: {
		object_filter?: string
		object_type?:   string
		uid?:           string
		ip_only?:       bool
	}
}

cp_mgmt_access_layer :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_access_layer: {
		ignore_errors?:                  bool
		ignore_warnings?:                bool
		mobile_access?:                  bool
		shared?:                         bool
		color?:                          string
		comments?:                       string
		details_level?:                  string
		firewall?:                       bool
		applications_and_url_filtering?: bool
		content_awareness?:              bool
		implicit_cleanup_action?:        string
		tags?: [...]
		add_default_rule?:           bool
		detect_using_x_forward_for?: bool
		name:                        string
	}
}

cp_mgmt_install_policy :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_install_policy: {
		desktop_security?:                       bool
		install_on_all_cluster_members_or_fail?: bool
		policy_package?:                         string
		revision?:                               string
		targets?: [...]
		threat_prevention?: bool
		access?:            bool
		qos?:               bool
		prepare_only?:      bool
	}
}

cp_mgmt_multicast_address_range :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_multicast_address_range: {
		comments?:           string
		ignore_warnings?:    bool
		ipv6_address?:       string
		ipv6_address_first?: string
		groups?: [...]
		ip_address?:         string
		ipv4_address?:       string
		ipv4_address_last?:  string
		ipv6_address_last?:  string
		name:                string
		details_level?:      string
		ip_address_first?:   string
		color?:              string
		ignore_errors?:      bool
		ip_address_last?:    string
		ipv4_address_first?: string
		tags?: [...]
	}
}

cp_mgmt_session_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_session_facts: {
		order?: [...]
		view_published_sessions?: bool
		details_level?:           string
		limit?:                   int
		offset?:                  int
	}
}

cp_mgmt_simple_gateway_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_simple_gateway_facts: {
		order?: [...]
		show_membership?: bool
		details_level?:   string
		limit?:           int
		name?:            string
		offset?:          int
	}
}

cp_mgmt_group_with_exclusion :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_group_with_exclusion: {
		groups?: [...]
		ignore_errors?: bool
		include?:       string
		name:           string
		tags?: [...]
		color?:           string
		comments?:        string
		details_level?:   string
		except?:          string
		ignore_warnings?: bool
	}
}

cp_mgmt_package :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_package: {
		name:                  string
		vpn_traditional_mode?: bool
		ignore_errors?:        bool
		ignore_warnings?:      bool
		installation_targets?: [...]
		color?:            string
		desktop_security?: bool
		threat_layers?: {...}
		qos?:               bool
		threat_prevention?: bool
		access?:            bool
		access_layers?: {...}
		comments?:        string
		details_level?:   string
		qos_policy_type?: string
		tags?: [...]
	}
}

cp_mgmt_threat_indicator :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_threat_indicator: {
		action?:               string
		color?:                string
		name:                  string
		observables_raw_data?: string
		tags?: [...]
		profile_overrides?: [...]
		comments?:        string
		details_level?:   string
		ignore_errors?:   bool
		ignore_warnings?: bool
		observables?: [...]
	}
}

cp_mgmt_vpn_community_star :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_vpn_community_star: {
		mesh_center_gateways?: bool
		use_shared_secret?:    bool
		center_gateways?: [...]
		comments?:          string
		encryption_method?: string
		encryption_suite?:  string
		ignore_warnings?:   bool
		ike_phase_2?: {...}
		color?:         string
		details_level?: string
		ignore_errors?: bool
		ike_phase_1?: {...}
		name: string
		satellite_gateways?: [...]
		shared_secrets?: [...]
		tags?: [...]
	}
}

checkpoint_access_layer_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	checkpoint_access_layer_facts: {
		name?: string
		uid?:  string
	}
}

cp_mgmt_group :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_group: {
		color?:         string
		comments?:      string
		details_level?: string
		ignore_errors?: bool
		name:           string
		groups?: [...]
		ignore_warnings?: bool
		members?: [...]
		tags?: [...]
	}
}

cp_mgmt_package_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_package_facts: {
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
		order?: [...]
	}
}

cp_mgmt_put_file :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_put_file: {
		file_name?: string
		file_path?: string
		targets?: [...]
		comments?:     string
		file_content?: string
	}
}

cp_mgmt_service_other :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_other: {
		groups?: [...]
		ignore_errors?: bool
		ip_protocol?:   int
		match_for_any?: bool
		tags?: [...]
		aggressive_aging?: {...}
		details_level?:                                   string
		ignore_warnings?:                                 bool
		name:                                             string
		sync_connections_on_cluster?:                     bool
		color?:                                           string
		comments?:                                        string
		keep_connections_open_after_policy_installation?: bool
		override_default_settings?:                       bool
		session_timeout?:                                 int
		accept_replies?:                                  bool
		action?:                                          string
		match?:                                           string
		use_default_session_timeout?:                     bool
	}
}

cp_mgmt_service_tcp :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_tcp: {
		source_port?:                 string
		sync_connections_on_cluster?: bool
		tags?: [...]
		color?:                                           string
		match_for_any?:                                   bool
		port?:                                            string
		session_timeout?:                                 int
		ignore_warnings?:                                 bool
		keep_connections_open_after_policy_installation?: bool
		name:                                             string
		protocol?:                                        string
		aggressive_aging?: {...}
		details_level?:             string
		ignore_errors?:             bool
		override_default_settings?: bool
		comments?:                  string
		groups?: [...]
		match_by_protocol_signature?: bool
		use_default_session_timeout?: bool
	}
}

cp_mgmt_threat_layer_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_threat_layer_facts: {
		details_level?: string
		limit?:         int
		name?:          string
		offset?:        int
		order?: [...]
	}
}

checkpoint_task_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	checkpoint_task_facts: {
		task_id: string
	}
}

cp_mgmt_administrator :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_administrator: {
		password_hash?:        string
		radius_server?:        string
		tacacs_server?:        string
		multi_domain_profile?: string
		name:                  string
		phone_number?:         string
		color?:                string
		details_level?:        string
		email?:                string
		ignore_errors?:        bool
		ignore_warnings?:      bool
		comments?:             string
		must_change_password?: bool
		password?:             string
		tags?: [...]
		authentication_method?: string
		expiration_date?:       string
		permissions_profile?: [...]
	}
}

cp_mgmt_run_script :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_run_script: {
		args?:        string
		comments?:    string
		script?:      string
		script_name?: string
		targets?: [...]
	}
}

cp_mgmt_threat_protection_override :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_threat_protection_override: {
		follow_up?: bool
		name?:      string
		overrides?: [...]
		comments?:      string
		details_level?: string
	}
}

cp_mgmt_wildcard :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_wildcard: {
		groups?: [...]
		ignore_warnings?: bool
		ipv4_address?:    string
		tags?: [...]
		color?:              string
		details_level?:      string
		ipv4_mask_wildcard?: string
		ipv6_address?:       string
		ipv6_mask_wildcard?: string
		name:                string
		comments?:           string
		ignore_errors?:      bool
	}
}

cp_publish :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_publish: {
		uid?: string
	}
}

checkpoint_access_rule_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	checkpoint_access_rule_facts: {
		layer: string
		name?: string
		uid?:  string
	}
}

cp_mgmt_application_site_category :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_application_site_category: {
		description?:   string
		color?:         string
		details_level?: string
		groups?: [...]
		ignore_errors?:   bool
		ignore_warnings?: bool
		name:             string
		tags?: [...]
		comments?: string
	}
}

cp_mgmt_security_zone_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_security_zone_facts: {
		name?:   string
		offset?: int
		order?: [...]
		show_membership?: bool
		details_level?:   string
		limit?:           int
	}
}

cp_mgmt_service_rpc :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_service_rpc: {
		color?:         string
		comments?:      string
		ignore_errors?: bool
		tags?: [...]
		details_level?: string
		groups?: [...]
		ignore_warnings?:                                 bool
		keep_connections_open_after_policy_installation?: bool
		name:                                             string
		program_number?:                                  int
	}
}

cp_mgmt_simple_gateway :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_simple_gateway: {
		firewall_settings?: {...}
		ipv6_address?:  string
		url_filtering?: bool
		vpn_settings?: {...}
		details_level?: string
		send_logs_to_server?: [...]
		anti_virus?:        bool
		content_awareness?: bool
		ips?:               bool
		send_alerts_to_server?: [...]
		threat_extraction?: bool
		anti_bot?:          bool
		logs_settings?: {...}
		os_name?:           string
		comments?:          string
		firewall?:          bool
		save_logs_locally?: bool
		send_logs_to_backup_server?: [...]
		version?:             string
		application_control?: bool
		groups?: [...]
		ignore_warnings?: bool
		ipv4_address?:    string
		name:             string
		color?:           string
		ip_address?:      string
		tags?: [...]
		threat_emulation?: bool
		interfaces?: [...]
		one_time_password?: string
		vpn?:               bool
		ignore_errors?:     bool
	}
}

cp_mgmt_vpn_community_star_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_vpn_community_star_facts: {
		name?:   string
		offset?: int
		order?: [...]
		details_level?: string
		limit?:         int
	}
}

cp_mgmt_wildcard_facts :: {
	when?: string
	with_items?: [...string]
	vars?: {...}
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	cp_mgmt_wildcard_facts: {
		name?:   string
		offset?: int
		order?: [...]
		details_level?: string
		limit?:         int
	}
}
