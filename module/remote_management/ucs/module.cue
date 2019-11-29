package ucs

ucs_vlans :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_vlans: {
		name:              string
		native?:           string
		sharing?:          string
		state?:            string
		fabric?:           string
		id:                string
		multicast_policy?: string
	}
}

ucs_disk_group_policy :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_disk_group_policy: {
		configuration_mode?:  string
		drive_type?:          string
		manual_disks?:        string
		num_ded_hot_spares?:  string
		org_dn?:              string
		description?:         string
		min_drive_size?:      string
		name:                 string
		num_drives?:          string
		num_glob_hot_spares?: string
		state?:               string
		use_remaining_disks?: string
		virtual_drive?:       string
		raid_level?:          string
	}
}

ucs_ntp_server :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_ntp_server: {
		description?: string
		ntp_server?:  string
		state?:       string
	}
}

ucs_service_profile_template :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_service_profile_template: {
		san_connectivity_policy?:   string
		uuid_pool?:                 string
		iqn_pool?:                  string
		kvm_mgmt_policy?:           string
		mgmt_inband_pool_name?:     string
		mgmt_ip_pool?:              string
		template_type?:             string
		boot_policy?:               string
		graphics_card_policy?:      string
		mgmt_interface_mode?:       string
		power_state?:               string
		description?:               string
		local_disk_policy?:         string
		mgmt_vnet_name?:            string
		state?:                     string
		maintenance_policy?:        string
		name:                       string
		user_label?:                string
		vmedia_policy?:             string
		org_dn?:                    string
		scrub_policy?:              string
		storage_profile?:           string
		ipmi_access_profile?:       string
		server_pool_qualification?: string
		bios_policy?:               string
		power_control_policy?:      string
		power_sync_policy?:         string
		server_pool?:               string
		host_firmware_package?:     string
		lan_connectivity_policy?:   string
		sol_policy?:                string
		threshold_policy?:          string
	}
}

ucs_uuid_pool :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_uuid_pool: {
		org_dn?:      string
		prefix?:      string
		state?:       string
		description?: string
		first_uuid?:  string
		last_uuid?:   string
		name:         string
		order?:       string
	}
}

ucs_vnic_template :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_vnic_template: {
		template_type?:            string
		mac_pool?:                 string
		name:                      string
		org_dn?:                   string
		state?:                    string
		target?:                   string
		cdn_source?:               string
		mtu?:                      string
		qos_policy?:               string
		stats_policy?:             string
		vlans_list?:               string
		cdn_name?:                 string
		description?:              string
		fabric?:                   string
		peer_redundancy_template?: string
		redundancy_type?:          string
		network_control_policy?:   string
		pin_group?:                string
	}
}

ucs_managed_objects :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_managed_objects: {
		objects: string
		state?:  string
	}
}

ucs_san_connectivity :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_san_connectivity: {
		description?: string
		name:         string
		org_dn?:      string
		state?:       string
		vhba_list?:   string
		wwnn_pool?:   string
	}
}

ucs_query :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_query: {
		class_ids?:           string
		delegate_to?:         string
		distinguished_names?: string
	}
}

ucs_vhba_template :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_vhba_template: {
		fabric?:          string
		max_data?:        string
		name:             string
		org_dn?:          string
		template_type?:   string
		description?:     string
		pin_group?:       string
		qos_policy?:      string
		redundancy_type?: string
		state?:           string
		stats_policy?:    string
		vsan?:            string
		wwpn_pool?:       string
	}
}

ucs_vlan_find :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_vlan_find: {
		fabric?:  string
		pattern?: string
		vlanid?:  string
	}
}

ucs_vsans :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_vsans: {
		fabric?:    string
		fc_zoning?: string
		name:       string
		state?:     string
		vlan_id:    string
		vsan_id:    string
	}
}

wakeonlan :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	wakeonlan: {
		broadcast?: string
		mac:        string
		port?:      string
	}
}

ucs_dns_server :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_dns_server: {
		delegate_to?: string
		description?: string
		dns_server?:  string
		state?:       string
	}
}

ucs_lan_connectivity :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_lan_connectivity: {
		name:             string
		org_dn?:          string
		state?:           string
		vnic_list?:       string
		description?:     string
		iscsi_vnic_list?: string
	}
}

ucs_org :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_org: {
		state?:           string
		delegate_to?:     string
		description?:     string
		org_name?:        string
		parent_org_path?: string
	}
}

ucs_storage_profile :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_storage_profile: {
		org_dn?:      string
		state?:       string
		description?: string
		local_luns?:  string
		name:         string
	}
}

ucs_timezone :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_timezone: {
		description?: string
		state?:       string
		timezone?:    string
		admin_state?: string
	}
}

ucs_wwn_pool :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_wwn_pool: {
		last_addr?:   string
		name:         string
		order?:       string
		org_dn?:      string
		purpose:      string
		state?:       string
		description?: string
		first_addr?:  string
	}
}

ucs_ip_pool :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_ip_pool: {
		default_gw?:         string
		ipv6_prefix?:        string
		ipv6_last_addr?:     string
		ipv6_primary_dns?:   string
		ipv6_secondary_dns?: string
		name:                string
		subnet_mask?:        string
		description?:        string
		ipv6_first_addr?:    string
		last_addr?:          string
		order?:              string
		secondary_dns?:      string
		state?:              string
		first_addr?:         string
		ipv6_default_gw?:    string
		org_dn?:             string
		primary_dns?:        string
	}
}

ucs_mac_pool :: {
	notify?:   string | [...string]
	register?: string
	tags?: [...string]
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	ucs_mac_pool: {
		state?:       string
		description?: string
		first_addr?:  string
		last_addr?:   string
		name:         string
		order?:       string
		org_dn?:      string
	}
}
