package netvisor

pn_port_cos_rate_setting :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_port_cos_rate_setting: {
		pn_cos4_rate?: string
		pn_cos5_rate?: string
		pn_port?:      string
		state:         string
		pn_cos1_rate?: string
		pn_cos2_rate?: string
		pn_cos3_rate?: string
		pn_cos7_rate?: string
		pn_cliswitch?: string
		pn_cos0_rate?: string
		pn_cos6_rate?: string
	}
}

pn_prefix_list :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_prefix_list: {
		pn_cliswitch?: string
		pn_name:       string
		pn_scope?:     string
		state?:        string
	}
}

pn_vlag :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vlag: {
		pn_lacp_timeout?:          string
		pn_mode?:                  string
		pn_port?:                  string
		state:                     string
		pn_cliswitch?:             string
		pn_cliusername?:           string
		pn_lacp_fallback_timeout?: string
		pn_name:                   string
		pn_clipassword?:           string
		pn_lacp_mode?:             string
		pn_failover_action?:       string
		pn_lacp_fallback?:         string
		pn_peer_port?:             string
		pn_peer_switch?:           string
	}
}

pn_vrouter_interface_ip :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vrouter_interface_ip: {
		pn_bd?:           string
		pn_cliswitch?:    string
		pn_ip?:           string
		pn_netmask?:      string
		pn_nic?:          string
		pn_vnet?:         string
		pn_vrouter_name?: string
		state:            string
	}
}

pn_vrouter_pim_config :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vrouter_pim_config: {
		pn_cliswitch?:       string
		pn_hello_interval?:  string
		pn_querier_timeout?: string
		pn_query_interval?:  string
		pn_vrouter_name?:    string
		state:               string
	}
}

pn_dscp_map :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_dscp_map: {
		pn_name?:      string
		pn_scope?:     string
		state:         string
		pn_cliswitch?: string
	}
}

pn_admin_service :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_admin_service: {
		pn_cliswitch?:    string
		pn_icmp?:         bool
		pn_net_api?:      bool
		pn_nfs?:          bool
		pn_web_port?:     string
		pn__if?:          string
		pn_ssh?:          bool
		pn_web?:          bool
		pn_web_log?:      bool
		pn_web_ssl?:      bool
		pn_web_ssl_port?: string
		state:            string
		pn_snmp?:         bool
	}
}

pn_dhcp_filter :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_dhcp_filter: {
		pn_cliswitch?:     string
		pn_name?:          string
		pn_trusted_ports?: string
		state:             string
	}
}

pn_dscp_map_pri_map :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_dscp_map_pri_map: {
		pn_cliswitch?: string
		pn_dsmap?:     string
		pn_name?:      string
		pn_pri?:       string
		state:         string
	}
}

pn_ipv6security_raguard_vlan :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_ipv6security_raguard_vlan: {
		pn_cliswitch?: string
		pn_name:       string
		pn_vlans:      string
		state?:        string
	}
}

pn_snmp_community :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_snmp_community: {
		pn_community_type?:   string
		state:                string
		pn_cliswitch?:        string
		pn_community_string?: string
	}
}

pn_vlan :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vlan: {
		pn_cliusername?:    string
		pn_description?:    string
		pn_ports?:          string
		pn_stats?:          bool
		pn_untagged_ports?: string
		pn_vlanid:          string
		pn_clipassword?:    string
		pn_cliswitch?:      string
		pn_scope?:          string
		state:              string
	}
}

pn_vrouter_packet_relay :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vrouter_packet_relay: {
		state?:            string
		pn_cliswitch?:     string
		pn_forward_ip:     string
		pn_forward_proto?: string
		pn_nic:            string
		pn_vrouter_name:   string
	}
}

pn_access_list_ip :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_access_list_ip: {
		pn_ip?:        string
		pn_name?:      string
		state:         string
		pn_cliswitch?: string
	}
}

pn_user :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_user: {
		pn_scope?:        string
		state:            string
		pn_cliswitch?:    string
		pn_initial_role?: string
		pn_name?:         string
		pn_password?:     string
	}
}

pn_vrouter_ospf6 :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vrouter_ospf6: {
		pn_cliswitch?:    string
		pn_nic?:          string
		pn_ospf6_area?:   string
		pn_vrouter_name?: string
		state:            string
	}
}

pn_log_audit_exception :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_log_audit_exception: {
		state?:         string
		pn_access:      string
		pn_audit_type?: string
		pn_cliswitch?:  string
		pn_pattern?:    string
		pn_scope?:      string
	}
}

pn_admin_syslog :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_admin_syslog: {
		pn_scope?:          string
		pn_transport?:      string
		state:              string
		pn_cliswitch?:      string
		pn_host?:           string
		pn_message_format?: string
		pn_name?:           string
		pn_port?:           string
	}
}

pn_cpu_class :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_cpu_class: {
		pn_rate_limit?:  string
		pn_scope?:       string
		state:           string
		pn_cliswitch?:   string
		pn_hog_protect?: string
		pn_name?:        string
	}
}

pn_igmp_snooping :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_igmp_snooping: {
		pn_query_max_response_time?:  string
		pn_vxlan?:                    bool
		pn_cliswitch?:                string
		pn_enable_vlans?:             string
		pn_igmpv3_vlans?:             string
		pn_no_snoop_linklocal_vlans?: string
		pn_snoop_linklocal_vlans?:    string
		state:                        string
		pn_enable?:                   bool
		pn_igmpv2_vlans?:             string
		pn_query_interval?:           string
		pn_scope?:                    string
	}
}

pn_port_cos_bw :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_port_cos_bw: {
		pn_port?:             string
		pn_weight?:           string
		state:                string
		pn_cliswitch?:        string
		pn_cos?:              string
		pn_max_bw_limit?:     string
		pn_min_bw_guarantee?: string
	}
}

pn_prefix_list_network :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_prefix_list_network: {
		pn_cliswitch?: string
		pn_name?:      string
		pn_netmask?:   string
		pn_network?:   string
		state:         string
	}
}

pn_snmp_vacm :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_snmp_vacm: {
		state:            string
		pn_auth?:         bool
		pn_cliswitch?:    string
		pn_oid_restrict?: string
		pn_priv?:         bool
		pn_user_name?:    string
		pn_user_type?:    string
	}
}

pn_stp :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_stp: {
		pn_bridge_priority?:      string
		pn_forwarding_delay?:     string
		pn_hello_time?:           string
		pn_mst_config_name?:      string
		pn_mst_max_hops?:         string
		pn_root_guard_wait_time?: string
		pn_bpdus_bridge_ports?:   bool
		pn_bridge_id?:            string
		pn_stp_mode?:             string
		state:                    string
		pn_max_age?:              string
		pn_cliswitch?:            string
		pn_enable?:               bool
	}
}

pn_access_list :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_access_list: {
		state:         string
		pn_cliswitch?: string
		pn_name?:      string
		pn_scope?:     string
	}
}

pn_trunk :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_trunk: {
		pn_lacp_fallback_timeout?: string
		pn_routing?:               bool
		state:                     string
		pn_broadcast_level?:       string
		pn_host?:                  bool
		pn_lacp_mode?:             string
		pn_lacp_priority?:         string
		pn_loopback?:              bool
		pn_name:                   string
		pn_pause?:                 bool
		pn_port_macaddr?:          string
		pn_edge_switch?:           bool
		pn_egress_rate_limit?:     string
		pn_speed?:                 string
		pn_unknown_mcast_level?:   string
		pn_cliusername?:           string
		pn_description?:           string
		pn_lacp_timeout?:          string
		pn_unknown_ucast_level?:   string
		pn_clipassword?:           string
		pn_cliswitch?:             string
		pn_loopvlans?:             string
		pn_mirror_receive?:        bool
		pn_ports?:                 string
		pn_jumbo?:                 bool
		pn_lacp_fallback?:         string
	}
}

pn_stp_port :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_stp_port: {
		state:          string
		pn_bpdu_guard?: bool
		pn_port?:       string
		pn_priority?:   string
		pn_root_guard?: bool
		pn_filter?:     bool
		pn_block?:      bool
		pn_cliswitch?:  string
		pn_cost?:       string
		pn_edge?:       bool
	}
}

pn_switch_setup :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_switch_setup: {
		pn_dns_secondary_ip?:     string
		pn_mgmt_ip?:              string
		pn_ntp_server?:           string
		pn_switch_name?:          string
		pn_banner?:               string
		pn_dns_ip?:               string
		pn_in_band_netmask?:      string
		pn_gateway_ip6?:          string
		pn_in_band_ip6_assign?:   string
		pn_loopback_ip?:          string
		pn_motd?:                 string
		pn_mgmt_netmask_ip6?:     string
		pn_timezone?:             string
		pn_analytics_store?:      string
		pn_date?:                 string
		pn_in_band_netmask_ip6?:  string
		pn_mgmt_ip6_assignment?:  string
		pn_enable_host_ports?:    bool
		pn_eula_accepted?:        string
		pn_loopback_ip6?:         string
		pn_in_band_ip?:           string
		pn_mgmt_ip_assignment?:   string
		pn_mgmt_netmask?:         string
		pn_cliswitch?:            string
		pn_domain_name?:          string
		pn_eula_timestamp?:       string
		pn_mgmt_ip6?:             string
		pn_ntp_secondary_server?: string
		pn_password?:             string
		state:                    string
		pn_force?:                bool
		pn_gateway_ip?:           string
		pn_in_band_ip6?:          string
	}
}

pn_vrouter_loopback_interface :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vrouter_loopback_interface: {
		pn_cliswitch?:   string
		pn_index?:       string
		pn_ip:           string
		pn_vrouter_name: string
		state?:          string
	}
}

pn_cpu_mgmt_class :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_cpu_mgmt_class: {
		pn_cliswitch?:  string
		pn_name?:       string
		pn_rate_limit?: string
		state:          string
		pn_burst_size?: string
	}
}

pn_ospf :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_ospf: {
		pn_clipassword?: string
		pn_cliswitch?:   string
		pn_cliusername?: string
		pn_network_ip:   string
		pn_ospf_area?:   string
		pn_vrouter_name: string
		state:           string
	}
}

pn_snmp_trap_sink :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_snmp_trap_sink: {
		pn_cliswitch?: string
		pn_community?: string
		pn_dest_host?: string
		pn_dest_port?: string
		pn_type?:      string
		state:         string
	}
}

pn_vflow_table_profile :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vflow_table_profile: {
		pn_cliswitch?: string
		pn_enable?:    bool
		pn_hw_tbl?:    string
		pn_profile?:   string
		state:         string
	}
}

pn_vrouter :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vrouter: {
		pn_bgp_redistribute?:  string
		pn_vrrp_track_port?:   string
		pn_bgp_max_paths?:     string
		pn_ospf_options?:      string
		pn_bgp_as?:            string
		pn_clipassword?:       string
		pn_router_id?:         string
		pn_service_state?:     string
		pn_service_type?:      string
		pn_router_type?:       string
		pn_bgp_options?:       string
		pn_cliswitch?:         string
		pn_cliusername?:       string
		pn_hw_vrrp_id?:        string
		pn_name:               string
		pn_ospf_redistribute?: string
		pn_rip_redistribute?:  string
		pn_vnet?:              string
		state:                 string
	}
}

pn_vrouter_bgp :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vrouter_bgp: {
		pn_override_capability?:         bool
		pn_password?:                    string
		pn_prefix_list_in?:              string
		pn_prefix_list_out?:             string
		pn_cliswitch?:                   string
		pn_max_prefix?:                  string
		pn_no_route_map_in?:             string
		pn_bfd?:                         bool
		pn_no_route_map_out?:            string
		pn_advertisement_interval?:      string
		pn_allowas_in?:                  bool
		pn_neighbor:                     string
		pn_bfd_multihop?:                bool
		pn_default_originate?:           bool
		pn_weight?:                      string
		pn_ebgp_multihop?:               string
		pn_soft_reconfig_inbound?:       bool
		state?:                          string
		pn_route_map_out?:               string
		pn_route_reflector_client?:      bool
		pn_update_source?:               string
		pn_connect_retry_interval?:      string
		pn_interface?:                   string
		pn_neighbor_holdtime?:           string
		pn_multi_protocol?:              string
		pn_send_community?:              bool
		pn_remote_as?:                   string
		pn_route_map_in?:                string
		pn_vrouter_name:                 string
		pn_max_prefix_warn_only?:        bool
		pn_neighbor_keepalive_interval?: string
		pn_next_hop_self?:               bool
	}
}

pn_vrouterlbif :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vrouterlbif: {
		pn_clipassword?: string
		pn_cliswitch?:   string
		pn_cliusername?: string
		pn_index?:       string
		pn_interface_ip: string
		pn_vrouter_name: string
		state:           string
	}
}

pn_admin_session_timeout :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_admin_session_timeout: {
		pn_cliswitch?: string
		pn_timeout?:   string
		state:         string
	}
}

pn_fabric_local :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_fabric_local: {
		state?:                           string
		pn_cliswitch:                     string
		pn_control_network?:              string
		pn_fabric_advertisement_network?: string
		pn_fabric_network?:               string
		pn_vlan?:                         string
	}
}

pn_ospfarea :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_ospfarea: {
		pn_clipassword:     string
		pn_cliswitch?:      string
		pn_cliusername:     string
		pn_quiet?:          bool
		pn_vrouter_name:    string
		pn_ospf_area:       string
		pn_prefix_listin?:  string
		pn_prefix_listout?: string
		pn_stub_type?:      string
		state:              string
	}
}

pn_port_config :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_port_config: {
		pn_enable?:            bool
		pn_fabric_guard?:      bool
		pn_intf?:              string
		pn_port?:              string
		pn_jumbo?:             bool
		pn_mirror_only?:       bool
		state:                 string
		pn_crc_check_enable?:  bool
		pn_reflect?:           bool
		pn_send_port?:         string
		pn_allowed_tpid?:      string
		pn_autoneg?:           bool
		pn_edge_switch?:       bool
		pn_eth_mode?:          string
		pn_host_enable?:       bool
		pn_local_switching?:   bool
		pn_port_mac_address?:  string
		pn_defer_bringup?:     bool
		pn_egress_rate_limit?: string
		pn_lacp_priority?:     string
		pn_pause?:             bool
		pn_description?:       string
		pn_dscp_map?:          string
		pn_routing?:           bool
		pn_speed?:             string
		pn_vxlan_termination?: bool
		pn_cliswitch?:         string
		pn_loop_vlans?:        string
		pn_loopback?:          bool
	}
}

pn_vrouter_bgp_network :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vrouter_bgp_network: {
		pn_cliswitch?:    string
		pn_netmask?:      string
		pn_network?:      string
		pn_vrouter_name?: string
		state:            string
	}
}

pn_vrouter_ospf :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vrouter_ospf: {
		pn_netmask?:     string
		pn_network:      string
		pn_ospf_area?:   string
		pn_vrouter_name: string
		state?:          string
		pn_cliswitch?:   string
	}
}

pn_vrouterbgp :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vrouterbgp: {
		pn_password?:            string
		pn_prefix_listin?:       string
		pn_clipassword?:         string
		pn_holdtime?:            string
		pn_max_prefix?:          string
		pn_max_prefix_warn?:     bool
		pn_multiprotocol?:       string
		pn_override_capability?: bool
		pn_cliswitch?:           string
		pn_keepalive?:           string
		pn_prefix_listout?:      string
		pn_route_mapin?:         string
		pn_soft_reconfig?:       bool
		pn_route_reflector?:     bool
		pn_weight?:              string
		pn_bfd?:                 bool
		pn_cliusername?:         string
		pn_ebgp?:                string
		pn_neighbor?:            string
		pn_next_hop_self?:       bool
		pn_remote_as?:           string
		state:                   string
		pn_default_originate?:   bool
		pn_route_mapout?:        string
		pn_vrouter_name:         string
	}
}

pn_cluster :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_cluster: {
		pn_validate?:      bool
		state:             string
		pn_clipassword?:   string
		pn_cliswitch?:     string
		pn_cliusername?:   string
		pn_cluster_node1?: string
		pn_cluster_node2?: string
		pn_name:           string
	}
}

pn_ipv6security_raguard :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_ipv6security_raguard: {
		pn_cliswitch?:       string
		pn_device?:          string
		pn_name:             string
		pn_prefix_list?:     string
		pn_router_priority?: string
		state?:              string
		pn_access_list?:     string
	}
}

pn_ipv6security_raguard_port :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_ipv6security_raguard_port: {
		pn_cliswitch?: string
		pn_name:       string
		pn_ports:      string
		state?:        string
	}
}

pn_role :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_role: {
		pn_access?:            string
		pn_cliswitch?:         string
		pn_delete_from_users?: bool
		pn_name:               string
		pn_running_config?:    bool
		pn_sudo?:              bool
		state:                 string
		pn_scope?:             string
		pn_shell?:             bool
	}
}

pn_show :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_show: {
		pn_clipassword?: string
		pn_cliswitch?:   string
		pn_cliusername?: string
		pn_command:      string
		pn_options?:     string
		pn_parameters?:  string
	}
}

pn_vrouterif :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vrouterif: {
		pn_assignment?:     string
		pn_nic_str?:        string
		pn_secondary_macs?: string
		pn_vlan?:           string
		pn_vrrp_priority?:  string
		pn_interface?:      string
		pn_interface_ip?:   string
		pn_alias?:          string
		pn_clipassword?:    string
		pn_cliswitch?:      string
		pn_cliusername?:    string
		pn_vrouter_name:    string
		pn_exclusive?:      bool
		pn_l3port?:         string
		pn_nic_enable?:     bool
		pn_vrrp_adv_int?:   string
		pn_vrrp_id?:        string
		pn_vxlan?:          string
		state:              string
	}
}

pn_vtep :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_vtep: {
		pn_name?:              string
		pn_switch_in_cluster?: bool
		pn_virtual_ip?:        string
		pn_vrouter_name?:      string
		state?:                string
		pn_cliswitch?:         string
		pn_ip?:                string
		pn_location?:          string
	}
}

pn_connection_stats_settings :: {
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	pn_connection_stats_settings: {
		pn_connection_backup_interval?:         string
		pn_connection_max_memory?:              string
		pn_connection_stats_log_disk_space?:    string
		pn_connection_stats_log_enable?:        bool
		pn_client_server_stats_log_disk_space?: string
		pn_client_server_stats_log_interval?:   string
		pn_service_stat_max_memory?:            string
		pn_client_server_stats_max_memory?:     string
		pn_connection_stats_log_interval?:      string
		pn_connection_stats_max_memory?:        string
		pn_enable?:                             bool
		pn_fabric_connection_backup_enable?:    bool
		state:                                  string
		pn_cliswitch?:                          string
		pn_connection_backup_enable?:           bool
		pn_fabric_connection_max_memory?:       string
		pn_client_server_stats_log_enable?:     bool
		pn_fabric_connection_backup_interval?:  string
	}
}
