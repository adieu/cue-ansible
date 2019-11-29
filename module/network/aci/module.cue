package aci

aci_domain :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_domain: {
		domain_type?:       string
		dscp?:              string
		encap_mode?:        string
		multicast_address?: string
		state?:             string
		vm_provider?:       string
		vswitch?:           string
		domain?:            string
	}
}

aci_tenant_action_rule_profile :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_tenant_action_rule_profile: {
		tenant?:      string
		action_rule?: string
		description?: string
		state?:       string
	}
}

mso_schema_site_vrf_region_cidr_subnet :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site_vrf_region_cidr_subnet: {
		vrf?:     string
		schema:   string
		site:     string
		subnet?:  string
		template: string
		cidr?:    string
		region?:  string
		state?:   string
		zone?:    string
	}
}

mso_schema_template_anp_epg_subnet :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_anp_epg_subnet: {
		epg:                 string
		schema:              string
		state?:              string
		subnet:              string
		template:            string
		description?:        string
		no_default_gateway?: bool
		scope?:              string
		shared?:             bool
		anp:                 string
	}
}

mso_schema_template_external_epg_subnet :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_external_epg_subnet: {
		state?:   string
		subnet:   string
		template: string
		aggregate?: [...]
		external_epg: string
		schema:       string
		scope?: [...]
	}
}

aci_aep :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_aep: {
		aep:          string
		description?: string
		infra_vlan?:  bool
		state?:       string
	}
}

aci_contract :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_contract: {
		contract:     string
		description?: string
		dscp?:        string
		priority?:    string
		scope?:       string
		state?:       string
		tenant:       string
	}
}

aci_epg :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_epg: {
		fwd_control?:         string
		preferred_group?:     bool
		tenant?:              string
		ap:                   string
		description?:         string
		epg:                  string
		intra_epg_isolation?: string
		priority?:            string
		state?:               string
		bd?:                  string
	}
}

aci_epg_to_contract :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_epg_to_contract: {
		contract?:       string
		contract_type:   string
		epg?:            string
		priority?:       string
		provider_match?: string
		state?:          string
		tenant?:         string
		ap?:             string
	}
}

aci_firmware_group :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_firmware_group: {
		state?:       string
		firmwarepol?: string
		group:        string
	}
}

aci_interface_policy_cdp :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_interface_policy_cdp: {
		cdp_policy:   string
		description?: string
		state?:       string
		admin_state?: bool
	}
}

aci_interface_selector_to_switch_policy_leaf_profile :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_interface_selector_to_switch_policy_leaf_profile: {
		interface_selector?: string
		leaf_profile?:       string
		state?:              string
	}
}

aci_static_binding_to_epg :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_static_binding_to_epg: {
		primary_encap_id?: int
		tenant?:           string
		deploy_immediacy?: string
		interface_type?:   string
		ap?:               string
		description?:      string
		extpaths?:         int
		interface?:        string
		encap_id?:         int
		epg?:              string
		interface_mode?:   string
		leafs?: [...]
		pod_id?: int
		state?:  string
	}
}

aci_access_sub_port_block_to_access_port :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_access_sub_port_block_to_access_port: {
		from_port:                  string
		from_sub_port:              string
		state?:                     string
		to_card?:                   string
		to_sub_port:                string
		access_port_selector:       string
		from_card?:                 string
		leaf_port_blk_description?: string
		to_port:                    string
		leaf_interface_profile:     string
		leaf_port_blk:              string
	}
}

aci_bd :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_bd: {
		endpoint_clear?:            bool
		igmp_snoop_policy?:         string
		state?:                     string
		tenant?:                    string
		enable_multicast?:          bool
		ipv6_nd_policy?:            string
		l3_unknown_multicast?:      string
		multi_dest?:                string
		arp_flooding?:              bool
		bd_type?:                   string
		description?:               string
		enable_routing?:            bool
		endpoint_move_detect?:      string
		endpoint_retention_action?: string
		l2_unknown_unicast?:        string
		vrf?:                       string
		bd?:                        string
		endpoint_retention_policy?: string
		ip_learning?:               bool
		limit_ip_learn?:            bool
		mac_address?:               string
	}
}

aci_tenant_span_src_group :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_tenant_span_src_group: {
		admin_state?: bool
		description?: string
		dst_group?:   string
		src_group?:   string
		state?:       string
		tenant?:      string
	}
}

aci_vlan_pool :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_vlan_pool: {
		pool_allocation_mode?: string
		state?:                string
		description?:          string
		pool?:                 string
	}
}

mso_schema :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema: {
		schema: string
		sites?: [...]
		state?: string
		templates?: [...]
	}
}

mso_schema_site :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site: {
		schema:   string
		site:     string
		state?:   string
		template: string
	}
}

mso_schema_site_anp_epg_staticleaf :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site_anp_epg_staticleaf: {
		anp?:     string
		leaf?:    string
		template: string
		epg?:     string
		pod?:     string
		schema:   string
		site:     string
		state?:   string
		vlan?:    int
	}
}

mso_schema_site_bd :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site_bd: {
		bd?:         string
		host_route?: bool
		schema:      string
		site:        string
		state?:      string
		template:    string
	}
}

aci_switch_policy_leaf_profile :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_switch_policy_leaf_profile: {
		description?:  string
		leaf_profile?: string
		state?:        string
	}
}

aci_tenant_ep_retention_policy :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_tenant_ep_retention_policy: {
		epr_policy?:         string
		hold_interval?:      int
		local_ep_interval?:  int
		tenant?:             string
		bounce_age?:         int
		bounce_trigger?:     string
		remote_ep_interval?: int
		state?:              string
		description?:        string
		move_frequency?:     int
	}
}

aci_tenant :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_tenant: {
		description?: string
		state?:       string
		tenant:       string
	}
}

mso_schema_site_bd_subnet :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site_bd_subnet: {
		description?:        string
		schema:              string
		template:            string
		subnet:              string
		bd?:                 string
		no_default_gateway?: bool
		scope?:              string
		shared?:             bool
		site:                string
		state?:              string
	}
}

mso_schema_template_l3out :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_l3out: {
		display_name?: string
		l3out?:        string
		schema:        string
		state?:        string
		template:      string
		vrf?: {...}
	}
}

aci_aaa_user :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_aaa_user: {
		enabled?:                      bool
		state?:                        string
		description?:                  string
		aaa_password_lifetime?:        int
		aaa_user?:                     string
		email?:                        string
		expires?:                      bool
		phone?:                        string
		aaa_password?:                 string
		expiration?:                   string
		clear_password_history?:       bool
		first_name?:                   string
		last_name?:                    string
		aaa_password_update_required?: bool
	}
}

aci_interface_policy_lldp :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_interface_policy_lldp: {
		description?:    string
		lldp_policy:     string
		receive_state?:  bool
		state?:          string
		transmit_state?: bool
	}
}

mso_schema_site_vrf_region_cidr :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site_vrf_region_cidr: {
		primary?: bool
		region?:  string
		schema:   string
		site:     string
		state?:   string
		template: string
		vrf?:     string
		cidr?:    string
	}
}

mso_schema_template_anp_epg :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_anp_epg: {
		bd?: {...}
		display_name?:                string
		intersite_multicaste_source?: bool
		intra_epg_isolation?:         string
		preferred_group?:             bool
		schema:                       string
		state?:                       string
		template:                     string
		useg_epg?:                    bool
		anp:                          string
		epg?:                         string
		subnets?: [...]
		vrf?: {...}
	}
}

mso_schema_template_anp_epg_contract :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_anp_epg_contract: {
		schema:   string
		state?:   string
		template: string
		anp:      string
		contract?: {...}
		epg: string
	}
}

aci_aep_to_domain :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_aep_to_domain: {
		domain_type?: string
		state?:       string
		vm_provider?: string
		aep?:         string
		domain?:      string
	}
}

aci_interface_policy_fc :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_interface_policy_fc: {
		description?: string
		fc_policy:    string
		port_mode?:   string
		state?:       string
	}
}

aci_interface_policy_leaf_profile :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_interface_policy_leaf_profile: {
		description?:           string
		leaf_interface_profile: string
		state?:                 string
	}
}

aci_interface_policy_port_security :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_interface_policy_port_security: {
		port_security_timeout?: int
		state?:                 string
		description?:           string
		max_end_points?:        int
		port_security:          string
	}
}

aci_config_snapshot :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_config_snapshot: {
		format?:         string
		include_secure?: bool
		max_count?:      int
		snapshot?:       string
		state?:          string
		description?:    string
		export_policy?:  string
	}
}

aci_interface_policy_l2 :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_interface_policy_l2: {
		vlan_scope?:  string
		description?: string
		l2_policy:    string
		qinq?:        string
		state?:       string
		vepa?:        bool
	}
}

aci_fabric_scheduler :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_fabric_scheduler: {
		maxTime?:     string
		minute?:      int
		state?:       string
		concurCap?:   int
		date?:        string
		day?:         string
		description?: string
		hour?:        int
		name:         string
		recurring?:   bool
		windowname?:  string
	}
}

aci_filter_entry :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_filter_entry: {
		dst_port_end?:   string
		ip_protocol?:    string
		state?:          string
		stateful?:       bool
		dst_port?:       string
		entry?:          string
		ether_type?:     string
		filter?:         string
		icmp6_msg_type?: string
		description?:    string
		icmp_msg_type?:  string
		arp_flag?:       string
		tenant?:         string
		dst_port_start?: string
	}
}

aci_maintenance_policy :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_maintenance_policy: {
		adminst?:      string
		graceful?:     bool
		ignoreCompat?: bool
		name:          string
		runmode?:      string
		scheduler:     string
		state?:        string
	}
}

aci_switch_policy_vpc_protection_group :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_switch_policy_vpc_protection_group: {
		protection_group:    string
		protection_group_id: int
		state?:              string
		switch_1_id:         int
		switch_2_id:         int
		vpc_domain_policy?:  string
	}
}

aci_config_rollback :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_config_rollback: {
		import_type?:           string
		snapshot:               string
		state?:                 string
		compare_export_policy?: string
		compare_snapshot?:      string
		import_policy?:         string
		import_mode?:           string
		description?:           string
		export_policy:          string
		fail_on_decrypt?:       bool
	}
}

aci_epg_to_domain :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_epg_to_domain: {
		encap?:                int
		encap_mode?:           string
		netflow?:              bool
		primary_encap?:        int
		resolution_immediacy?: string
		tenant?:               string
		ap?:                   string
		domain_type?:          string
		domain?:               string
		vm_provider?:          string
		allow_useg?:           string
		deploy_immediacy?:     string
		switching_mode?:       string
		epg?:                  string
		state?:                string
	}
}

aci_rest :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_rest: {
		content?: _
		method?:  string
		path:     string
		src?:     string
	}
}

aci_tenant_span_dst_group :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_tenant_span_dst_group: {
		state?:       string
		tenant:       string
		description?: string
		dst_group:    string
	}
}

mso_schema_site_anp_epg_domain :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site_anp_epg_domain: {
		switch_type?:              string
		template:                  string
		resolution_immediacy?:     string
		schema:                    string
		enhanced_lagpolicy_dn?:    string
		enhanced_lagpolicy_name?:  string
		micro_seg_vlan?:           int
		port_encap_vlan?:          int
		state?:                    string
		allow_micro_segmentation?: bool
		domain_association_type?:  string
		site:                      string
		switching_mode?:           string
		deployment_immediacy?:     string
		micro_seg_vlan_type?:      string
		epg?:                      string
		port_encap_vlan_type?:     string
		vlan_encap_mode?:          string
		anp?:                      string
		domain_profile?:           string
	}
}

mso_schema_template_bd :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_bd: {
		display_name?:           string
		intersite_bum_traffic?:  bool
		layer2_stretch?:         bool
		optimize_wan_bandwidth?: bool
		template:                string
		vrf?: {...}
		bd?:                     string
		layer2_unknown_unicast?: string
		layer3_multicast?:       bool
		schema:                  string
		state?:                  string
		subnets?: [...]
	}
}

mso_schema_template_filter_entry :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_filter_entry: {
		filter:               string
		fragments_only?:      bool
		state?:               string
		destination_to?:      string
		destination_from?:    string
		display_name?:        string
		entry?:               string
		ethertype?:           string
		ip_protocol?:         string
		schema:               string
		stateful?:            bool
		description?:         string
		template:             string
		filter_display_name?: string
		source_from?:         string
		source_to?:           string
		tcp_session_rules?: [...]
		arp_flag?: string
	}
}

aci_encap_pool_range :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_encap_pool_range: {
		allocation_mode?:      string
		pool_allocation_mode?: string
		pool_type:             string
		range_end?:            int
		state?:                string
		description?:          string
		pool?:                 string
		range_name?:           string
		range_start?:          int
	}
}

aci_firmware_group_node :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_firmware_group_node: {
		group:  string
		node:   string
		state?: string
	}
}

aci_interface_policy_mcp :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_interface_policy_mcp: {
		state?:       string
		admin_state?: bool
		description?: string
		mcp:          string
	}
}

aci_l3out_route_tag_policy :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_l3out_route_tag_policy: {
		state?:       string
		tag?:         int
		tenant:       string
		description?: string
		rtp:          string
	}
}

aci_tenant_span_src_group_to_dst_group :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_tenant_span_src_group_to_dst_group: {
		tenant?:      string
		description?: string
		dst_group?:   string
		src_group?:   string
		state?:       string
	}
}

mso_schema_template :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template: {
		state?:        string
		template?:     string
		tenant:        string
		display_name?: string
		schema:        string
	}
}

mso_schema_template_externalepg :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_externalepg: {
		externalepg?: string
		schema:       string
		state?:       string
		template:     string
		vrf?: {...}
		display_name?: string
	}
}

mso_user :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_user: {
		first_name?: string
		phone?:      string
		roles?: [...]
		state?:          string
		user_password?:  string
		domain?:         string
		email?:          string
		user:            string
		account_status?: string
		last_name?:      string
	}
}

aci_access_port_block_to_access_port :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_access_port_block_to_access_port: {
		access_port_selector:       string
		from_card?:                 string
		leaf_port_blk_description?: string
		to_card?:                   string
		from_port:                  string
		leaf_interface_profile:     string
		leaf_port_blk:              string
		state?:                     string
		to_port:                    string
	}
}

aci_epg_monitoring_policy :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_epg_monitoring_policy: {
		description?:      string
		monitoring_policy: string
		state?:            string
		tenant:            string
	}
}

aci_interface_policy_port_channel :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_interface_policy_port_channel: {
		port_channel:          string
		suspend_individual?:   bool
		symmetric_hash?:       bool
		fast_select?:          bool
		load_defer?:           bool
		min_links?:            int
		mode?:                 string
		description?:          string
		graceful_convergence?: bool
		max_links?:            int
		state?:                string
	}
}

aci_vrf :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_vrf: {
		description?:               string
		policy_control_direction?:  string
		policy_control_preference?: string
		state?:                     string
		tenant?:                    string
		vrf?:                       string
	}
}

mso_schema_site_anp_epg_subnet :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site_anp_epg_subnet: {
		no_default_gateway?: bool
		schema:              string
		scope?:              string
		site:                string
		state?:              string
		epg?:                string
		description?:        string
		shared?:             bool
		subnet:              string
		template:            string
		anp?:                string
	}
}

mso_schema_site_vrf :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site_vrf: {
		state?:   string
		template: string
		vrf?:     string
		schema:   string
		site:     string
	}
}

mso_schema_template_deploy :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_deploy: {
		schema:    string
		site?:     string
		state?:    string
		template?: string
	}
}

mso_tenant :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_tenant: {
		users?: [...]
		description?: string
		display_name: string
		sites?: [...]
		state?: string
		tenant: string
	}
}

aci_bd_subnet :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_bd_subnet: {
		mask?:      int
		state?:     string
		tenant?:    string
		preferred?: bool
		scope?: [...]
		nd_prefix_policy?:     string
		route_profile_l3_out?: string
		bd?:                   string
		description?:          string
		enable_vip?:           bool
		gateway?:              string
		route_profile?:        string
		subnet_control?:       string
		subnet_name?:          string
	}
}

aci_interface_policy_leaf_policy_group :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_interface_policy_leaf_policy_group: {
		state?:                              string
		storm_control_interface_policy?:     string
		egress_data_plane_policing_policy?:  string
		fibre_channel_interface_policy?:     string
		port_security_policy?:               string
		policy_group?:                       string
		stp_interface_policy?:               string
		cdp_policy?:                         string
		description?:                        string
		mcp_policy?:                         string
		link_level_policy?:                  string
		lldp_policy?:                        string
		monitoring_policy?:                  string
		slow_drain_policy?:                  string
		aep?:                                string
		ingress_data_plane_policing_policy?: string
		l2_interface_policy?:                string
		lag_type:                            string
		port_channel_policy?:                string
		priority_flow_control_policy?:       string
	}
}

mso_schema_site_bd_l3out :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site_bd_l3out: {
		template: string
		bd?:      string
		l3out?:   string
		schema:   string
		site:     string
		state?:   string
	}
}

mso_schema_template_contract_filter :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_contract_filter: {
		contract_scope?: string
		filter_directives?: [...]
		filter_schema?:         string
		filter_type?:           string
		state?:                 string
		template:               string
		contract:               string
		contract_display_name?: string
		contract_filter_type?:  string
		filter?:                string
		filter_template?:       string
		schema:                 string
	}
}

aci_contract_subject :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_contract_subject: {
		subject?:        string
		contract?:       string
		provider_match?: string
		dscp?:           string
		priority?:       string
		reverse_filter?: bool
		state?:          string
		tenant?:         string
		consumer_match?: string
		description?:    string
	}
}

aci_contract_subject_to_filter :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_contract_subject_to_filter: {
		subject?:  string
		tenant:    string
		contract?: string
		filter?:   string
		log?:      string
		state?:    string
	}
}

mso_schema_site_anp_epg_staticport :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site_anp_epg_staticport: {
		deployment_immediacy?: string
		epg?:                  string
		leaf?:                 string
		mode?:                 string
		template:              string
		vlan?:                 int
		anp?:                  string
		path?:                 string
		pod?:                  string
		schema:                string
		site:                  string
		state?:                string
		type?:                 string
	}
}

aci_ap :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_ap: {
		description?: string
		state?:       string
		tenant:       string
		ap:           string
	}
}

aci_domain_to_encap_pool :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_domain_to_encap_pool: {
		pool_allocation_mode?: string
		pool_type:             string
		state?:                string
		vm_provider?:          string
		domain?:               string
		domain_type?:          string
		pool?:                 string
	}
}

aci_bd_to_l3out :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_bd_to_l3out: {
		bd?:     string
		l3out?:  string
		state?:  string
		tenant?: string
	}
}

aci_fabric_node :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_fabric_node: {
		state?:       string
		switch?:      string
		description?: string
		node_id?:     int
		pod_id?:      int
		role?:        string
		serial?:      string
	}
}

aci_taboo_contract :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_taboo_contract: {
		description?:   string
		scope?:         string
		state?:         string
		taboo_contract: string
		tenant:         string
	}
}

aci_vlan_pool_encap_block :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_vlan_pool_encap_block: {
		block_end?:            int
		block_name?:           string
		block_start?:          int
		description?:          string
		pool?:                 string
		pool_allocation_mode?: string
		state?:                string
		allocation_mode?:      string
	}
}

mso_role :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_role: {
		description?:  string
		display_name?: string
		permissions?: [...]
		role:   string
		state?: string
	}
}

mso_schema_template_external_epg_contract :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_external_epg_contract: {
		external_epg: string
		schema:       string
		state?:       string
		template:     string
		contract?: {...}
	}
}

aci_aaa_user_certificate :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_aaa_user_certificate: {
		aaa_user:          string
		aaa_user_type?:    string
		certificate?:      string
		certificate_name?: string
		state?:            string
	}
}

aci_access_port_to_interface_policy_leaf_profile :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_access_port_to_interface_policy_leaf_profile: {
		to_card?:                   string
		access_port_selector:       string
		description?:               string
		from_port:                  string
		leaf_port_blk_description?: string
		state?:                     string
		to_port:                    string
		from_card?:                 string
		interface_type?:            string
		leaf_interface_profile:     string
		leaf_port_blk:              string
		policy_group?:              string
	}
}

aci_maintenance_group :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_maintenance_group: {
		group:  string
		policy: string
		state?: string
	}
}

mso_schema_site_anp :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site_anp: {
		anp?:     string
		schema:   string
		site:     string
		state?:   string
		template: string
	}
}

mso_schema_site_vrf_region :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site_vrf_region: {
		region?:  string
		schema:   string
		site:     string
		state?:   string
		template: string
		vrf?:     string
	}
}

mso_schema_template_anp :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_anp: {
		anp?:          string
		display_name?: string
		schema:        string
		state?:        string
		template:      string
	}
}

mso_schema_template_bd_subnet :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_bd_subnet: {
		state?:              string
		subnet:              string
		template:            string
		bd:                  string
		schema:              string
		scope?:              string
		shared?:             bool
		description?:        string
		no_default_gateway?: bool
	}
}

aci_encap_pool :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_encap_pool: {
		description?:          string
		pool?:                 string
		pool_allocation_mode?: string
		pool_type:             string
		state?:                string
	}
}

aci_firmware_policy :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_firmware_policy: {
		ignoreCompat?: bool
		name:          string
		state?:        string
		version:       string
	}
}

aci_firmware_source :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_firmware_source: {
		state?:            string
		url?:              string
		url_password?:     string
		url_protocol?:     string
		url_username?:     string
		polling_interval?: int
		source:            string
	}
}

aci_l3out_extepg :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_l3out_extepg: {
		dscp?:            string
		extepg:           string
		l3out:            string
		preferred_group?: bool
		state?:           string
		tenant:           string
		description?:     string
	}
}

aci_vmm_credential :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_vmm_credential: {
		name?:                string
		state?:               string
		vm_provider?:         string
		credential_password?: string
		credential_username?: string
		description?:         string
		domain?:              string
	}
}

mso_label :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_label: {
		state?: string
		type?:  string
		label:  string
	}
}

mso_schema_site_anp_epg :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_site_anp_epg: {
		anp?:     string
		epg?:     string
		schema:   string
		site:     string
		state?:   string
		template: string
	}
}

aci_domain_to_vlan_pool :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_domain_to_vlan_pool: {
		domain?:              string
		domain_type?:         string
		pool?:                string
		pool_allocation_mode: string
		state?:               string
		vm_provider?:         string
	}
}

aci_filter :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_filter: {
		description?: string
		filter:       string
		state?:       string
		tenant:       string
	}
}

aci_l3out_extsubnet :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_l3out_extsubnet: {
		tenant:       string
		description?: string
		extepg:       string
		l3out:        string
		network:      string
		scope?: [...]
		state?:       string
		subnet_name?: string
	}
}

aci_interface_policy_ospf :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_interface_policy_ospf: {
		dead_interval?:       int
		description?:         string
		ospf:                 string
		priority?:            int
		retransmit_interval?: int
		state?:               string
		controls?: [...]
		cost?:               int
		hello_interval?:     int
		network_type?:       string
		prefix_suppression?: bool
		tenant:              string
		transmit_delay?:     int
	}
}

aci_l3out :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_l3out: {
		vrf:   string
		asn?:  int
		dscp?: string
		l3out: string
		l3protocol?: [...]
		route_control?: [...]
		state?:       string
		description?: string
		domain:       string
		tenant:       string
	}
}

mso_schema_template_vrf :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_schema_template_vrf: {
		state?:            string
		template:          string
		vrf?:              string
		display_name?:     string
		layer3_multicast?: bool
		schema:            string
	}
}

mso_site :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	mso_site: {
		site:   string
		state?: string
		urls?: [...]
		apic_password: string
		apic_site_id:  string
		apic_username: string
		labels?: [...]
		location?: {...}
	}
}

aci_maintenance_group_node :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_maintenance_group_node: {
		node:   string
		state?: string
		group:  string
	}
}

aci_switch_leaf_selector :: {
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	when?: string
	with_items?: [...string]
	become?: bool
	aci_switch_leaf_selector: {
		leaf_node_blk?:             string
		leaf_profile?:              string
		policy_group?:              string
		state?:                     string
		description?:               string
		from?:                      int
		leaf?:                      string
		leaf_node_blk_description?: string
		to?:                        int
	}
}
