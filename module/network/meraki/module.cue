package meraki

meraki_nat :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_nat: {
		state?: string
		subset?: [...]
		net_id?:   string
		net_name?: string
		one_to_many?: [...]
		one_to_one?: [...]
		org_id?: string
		port_forwarding?: [...]
	}
}

meraki_organization :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_organization: {
		clone?:    string
		org_id?:   string
		org_name?: string
		state?:    string
	}
}

meraki_snmp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_snmp: {
		v3_priv_mode?:     string
		v3_priv_pass?:     string
		community_string?: string
		peer_ips?:         string
		v2c_enabled?:      bool
		v3_auth_pass?:     string
		v3_enabled?:       bool
		v3_auth_mode?:     string
		access?:           string
		net_id?:           string
		net_name?:         string
		state?:            string
		users?: [...]
	}
}

meraki_ssid :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_ssid: {
		encryption_mode?:       string
		net_name?:              string
		walled_garden_enabled?: bool
		ap_tags_vlan_ids?: [...]
		auth_mode?:   string
		min_bitrate?: float
		number?:      int
		walled_garden_ranges?: [...]
		radius_failover_policy?: string
		radius_servers?: [...]
		use_vlan_tagging?:    bool
		wpa_encryption_mode?: string
		name?:                string
		psk?:                 string
		radius_accounting_servers?: [...]
		radius_load_balancing_policy?:    string
		net_id?:                          string
		per_client_bandwidth_limit_up?:   int
		default_vlan_id?:                 string
		per_client_bandwidth_limit_down?: int
		radius_accounting_enabled?:       bool
		radius_coa_enabled?:              bool
		state?:                           string
		vlan_id?:                         int
		band_selection?:                  string
		concentrator_network_id?:         string
		splash_page?:                     string
		enabled?:                         bool
		ip_assignment_mode?:              string
	}
}

meraki_switchport :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_switchport: {
		allowed_vlans?:        string
		link_negotiation?:     string
		stp_guard?:            string
		tags?:                 string
		vlan?:                 string
		access_policy_number?: string
		serial?:               string
		type?:                 string
		isolation_enabled?:    bool
		number?:               string
		rstp_enabled?:         bool
		state?:                string
		voice_vlan?:           string
		enabled?:              bool
		name?:                 string
		poe_enabled?:          bool
	}
}

meraki_admin :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_admin: {
		email?:      string
		name?:       string
		networks?:   string
		org_access?: string
		org_name?:   string
		state:       string
		tags?:       string
	}
}

meraki_content_filtering :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_content_filtering: {
		auth_key?: string
		blocked_urls?: [...]
		net_id?:   string
		net_name?: string
		subset?:   string
		allowed_urls?: [...]
		blocked_categories?: [...]
		category_list_size?: string
		state?:              string
	}
}

meraki_device :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_device: {
		net_name?:          string
		net_id?:            string
		note?:              string
		state?:             string
		address?:           string
		move_map_marker?:   bool
		serial_lldp_cdp?:   string
		serial_uplink?:     string
		model?:             string
		lat?:               float
		lldp_cdp_timespan?: int
		lng?:               float
		serial?:            string
		tags?:              string
		hostname?:          string
	}
}

meraki_firewalled_services :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_firewalled_services: {
		allowed_ips?: [...]
		auth_key?: string
		net_id?:   string
		net_name?: string
		org_id?:   string
		state?:    string
		access?:   string
		service?:  string
		org_name?: string
	}
}

meraki_mx_l7_firewall :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_mx_l7_firewall: {
		rules?: [...]
		state?:      string
		categories?: bool
		net_id?:     string
		net_name?:   string
	}
}

meraki_config_template :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_config_template: {
		org_id?:          string
		org_name?:        string
		state?:           string
		auto_bind?:       bool
		config_template?: string
		net_id?:          string
		net_name?:        string
	}
}

meraki_malware :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_malware: {
		state?:         string
		allowed_files?: string
		allowed_urls?:  string
		mode?:          string
		net_id?:        string
		net_name?:      string
	}
}

meraki_mr_l3_firewall :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_mr_l3_firewall: {
		allow_lan_access?: bool
		net_id?:           string
		net_name?:         string
		number?:           int
		rules?: [...]
		ssid_name?: string
		state?:     string
	}
}

meraki_vlan :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_vlan: {
		subnet?:         string
		vlan_id?:        int
		vpn_nat_subnet?: string
		appliance_ip?:   string
		net_id?:         string
		state?:          string
		net_name?:       string
		reserved_ip_range?: [...]
		dns_nameservers?: string
		fixed_ip_assignments?: [...]
		name?: string
	}
}

meraki_webhook :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_webhook: {
		net_id?:        string
		test_id?:       string
		webhook_id?:    string
		url?:           string
		name?:          string
		net_name?:      string
		shared_secret?: string
		state?:         string
		test?:          string
	}
}

meraki_mx_l3_firewall :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_mx_l3_firewall: {
		rules?:               string
		state?:               string
		syslog_default_rule?: bool
		net_id?:              string
		net_name?:            string
	}
}

meraki_network :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_network: {
		enable_vlans?: bool
		net_id?:       string
		net_name?:     string
		state?:        string
		tags?: [...]
		disable_my_meraki?:         bool
		enable_my_meraki?:          bool
		enable_remote_status_page?: bool
		timezone?:                  string
		type?: [...]
	}
}

meraki_static_route :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_static_route: {
		reserved_ip_ranges?: [...]
		subnet?: string
		fixed_ip_assignments?: [...]
		gateway_ip?: string
		name?:       string
		net_id?:     string
		net_name?:   string
		route_id?:   string
		state?:      string
		enabled?:    bool
	}
}

meraki_syslog :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	meraki_syslog: {
		state?:    string
		auth_key?: string
		net_id?:   string
		net_name?: string
		servers?:  string
	}
}
