package onyx

onyx_pfc_interface :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_pfc_interface: {
		aggregate?: string
		name?:      string
		purge?:     bool
		state?:     string
	}
}

onyx_facts :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_facts: {
		gather_subset?: string
	}
}

onyx_interface :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_interface: {
		enabled?:     bool
		rx_rate?:     string
		state?:       string
		tx_rate?:     string
		delay?:       string
		description?: string
		duplex?:      string
		purge?:       bool
		speed?:       string
		aggregate?:   string
		mtu?:         string
		name:         string
	}
}

onyx_lldp :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_lldp: {
		state?: string
	}
}

onyx_ptp_global :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_ptp_global: {
		primary_priority?:   string
		ptp_state?:          string
		secondary_priority?: string
		domain?:             string
		ntp_state?:          string
	}
}

onyx_protocol :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_protocol: {
		lldp?:          string
		mlag?:          string
		nve?:           string
		ospf?:          string
		igmp_snooping?: string
		ip_l3?:         string
		ip_routing?:    string
		lacp?:          string
		spanning_tree?: string
		bgp?:           string
		dcb_pfc?:       string
		magp?:          string
	}
}

onyx_ptp_interface :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_ptp_interface: {
		announce_interval?: string
		announce_timeout?:  string
		delay_request?:     string
		name:               string
		state?:             string
		sync_interval?:     string
	}
}

onyx_traffic_class :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_traffic_class: {
		dcb?:                string
		interfaces:          string
		state?:              string
		tc:                  string
		congestion_control?: string
	}
}

onyx_config :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_config: {
		save?:    bool
		src?:     string
		lines?:   string
		match?:   string
		replace?: string
		before?:  string
		config?:  string
		parents?: string
		after?:   string
		backup?:  bool
		backup_options?: {...}
	}
}

onyx_buffer_pool :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_buffer_pool: {
		memory_percent?:  string
		name:             string
		pool_type?:       string
		switch_priority?: string
	}
}

onyx_lldp_interface :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_lldp_interface: {
		name?:      string
		purge?:     bool
		state?:     string
		aggregate?: string
	}
}

onyx_magp :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_magp: {
		router_mac?: string
		state?:      string
		interface:   string
		magp_id:     string
		router_ip?:  string
	}
}

onyx_ospf :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_ospf: {
		router_id?:  string
		state?:      string
		interfaces?: string
		ospf:        string
	}
}

onyx_command :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_command: {
		wait_for?: string
		commands:  string
		interval?: string
		match?:    string
		retries?:  string
	}
}

onyx_l2_interface :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_l2_interface: {
		state?:               string
		trunk_allowed_vlans?: string
		access_vlan?:         string
		aggregate?:           string
		mode?:                string
		name?:                string
	}
}

onyx_l3_interface :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_l3_interface: {
		name?:      string
		purge?:     bool
		state?:     string
		aggregate?: string
		ipv4?:      string
		ipv6?:      string
	}
}

onyx_wjh :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_wjh: {
		enabled?:      bool
		export_group?: string
		group?:        string
		auto_export?:  bool
		clear_group?:  string
	}
}

onyx_bgp :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_bgp: {
		ecmp_bestpath?:          bool
		fast_external_fallover?: bool
		networks?:               string
		router_id?:              string
		state?:                  string
		vrf?:                    string
		as_number:               string
		evpn?:                   bool
		max_paths?:              string
		neighbors?:              string
		purge?:                  bool
	}
}

onyx_igmp_vlan :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_igmp_vlan: {
		querier?:       string
		state?:         string
		static_groups?: string
		version?:       string
		vlan_id:        string
		mrouter?:       string
	}
}

onyx_mlag_ipl :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_mlag_ipl: {
		name:            string
		peer_address?:   string
		state?:          string
		vlan_interface?: string
	}
}

onyx_mlag_vip :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_mlag_vip: {
		ipaddress?:   string
		mac_address?: string
		state?:       string
		delay?:       string
		group_name?:  string
	}
}

onyx_qos :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_qos: {
		interfaces:    string
		rewrite_dscp?: string
		rewrite_pcp?:  string
		trust?:        string
	}
}

onyx_vlan :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_vlan: {
		aggregate?: string
		name?:      string
		purge?:     bool
		state?:     string
		vlan_id?:   string
	}
}

onyx_igmp :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_igmp: {
		mrouter_timeout?:             string
		port_purge_timeout?:          string
		proxy_reporting?:             string
		report_suppression_interval?: string
		state:                        string
		unregistered_multicast?:      string
		default_version?:             string
		last_member_query_interval?:  string
	}
}

onyx_igmp_interface :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_igmp_interface: {
		name:   string
		state?: string
	}
}

onyx_linkagg :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_linkagg: {
		mode?:      string
		name:       string
		purge?:     bool
		state?:     string
		aggregate?: string
		members:    string
	}
}

onyx_vxlan :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	onyx_vxlan: {
		arp_suppression?: bool
		bgp?:             bool
		loopback_id?:     string
		mlag_tunnel_ip?:  string
		nve_id:           string
		vni_vlan_list?:   string
	}
}
