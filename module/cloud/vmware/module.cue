package vmware

vmware_cluster_drs :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_cluster_drs: {
		datacenter:                        string
		drs_default_vm_behavior?:          string
		drs_enable_vm_behavior_overrides?: bool
		drs_vmotion_rate?:                 int
		enable_drs?:                       bool
		cluster_name:                      string
	}
}

vmware_guest_custom_attribute_defs :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_custom_attribute_defs: {
		attribute_key?: string
		state:          string
	}
}

vmware_host_snmp :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_snmp: {
		state?: string
		trap_filter?: [...]
		trap_targets?: [...]
		community?: [...]
		hw_source?: string
		log_level?: string
		send_trap?: bool
		snmp_port?: int
	}
}

vmware_migrate_vmk :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_migrate_vmk: {
		current_portgroup_name: string
		current_switch_name:    string
		device:                 string
		esxi_hostname:          string
		migrate_portgroup_name: string
		migrate_switch_name:    string
	}
}

vmware_cluster :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_cluster: {
		drs_vmotion_rate?:                 string
		enable_ha?:                        bool
		ha_host_monitoring?:               string
		vsan_auto_claim_storage?:          bool
		ha_vm_min_up_time?:                string
		ignore_drs?:                       bool
		datacenter:                        string
		drs_enable_vm_behavior_overrides?: bool
		enable_drs?:                       bool
		enable_vsan?:                      bool
		ha_failover_level?:                string
		ha_vm_failure_interval?:           string
		ignore_ha?:                        bool
		ignore_vsan?:                      bool
		cluster_name:                      string
		drs_default_vm_behavior?:          string
		ha_restart_priority?:              string
		ha_vm_max_failure_window?:         string
		state?:                            string
		ha_admission_control_enabled?:     bool
		ha_vm_max_failures?:               string
		ha_vm_monitoring?:                 string
	}
}

vmware_host_service_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_service_facts: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_host_ssl_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_ssl_facts: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_object_role_permission :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_object_role_permission: {
		group?:       string
		object_name:  string
		object_type?: string
		principal?:   string
		recursive?:   bool
		role:         string
		state?:       string
	}
}

vmware_vcenter_settings :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vcenter_settings: {
		timeout_settings?: {...}
		user_directory?: {...}
		database?: {...}
		logging_options?: string
		mail?: {...}
		runtime_settings?: {...}
		snmp_receivers?: {...}
	}
}

vmware_vmkernel_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vmkernel_info: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_evc_mode :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_evc_mode: {
		cluster_name:    string
		datacenter_name: string
		evc_mode:        string
		state?:          string
	}
}

vmware_drs_group_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_drs_group_info: {
		cluster_name?: string
		datacenter:    string
	}
}

vmware_guest_find :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_find: {
		use_instance_uuid?: bool
		uuid?:              string
		datacenter?:        string
		name?:              string
	}
}

vmware_vswitch_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vswitch_facts: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vsphere_copy :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vsphere_copy: {
		path:        string
		port?:       string
		src:         string
		timeout?:    int
		username?:   string
		datacenter?: string
		datastore:   string
		hostname?:   string
	}
}

vmware_datacenter :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_datacenter: {
		datacenter_name: string
		state?:          string
	}
}

vmware_drs_rule_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_drs_rule_info: {
		cluster_name?: string
		datacenter?:   string
	}
}

vmware_dvswitch_nioc :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_dvswitch_nioc: {
		resources?: [...]
		state?:   string
		switch:   string
		version?: string
	}
}

vmware_category_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_category_info: {
	}
}

vmware_host_firewall_manager :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_firewall_manager: {
		cluster_name?:  string
		esxi_hostname?: string
		rules?: [...]
	}
}

vmware_maintenancemode :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_maintenancemode: {
		vsan?:         string
		esxi_hostname: string
		evacuate?:     bool
		state?:        string
		timeout?:      int
	}
}

vmware_host_dns_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_dns_facts: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_category :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_category: {
		category_cardinality?: string
		category_description?: string
		category_name:         string
		new_category_name?:    string
		state?:                string
	}
}

vmware_dvs_portgroup_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_dvs_portgroup_info: {
		datacenter:           string
		dvswitch?:            string
		show_network_policy?: bool
		show_port_policy?:    bool
		show_teaming_policy?: bool
		show_vlan_info?:      bool
	}
}

vmware_guest_boot_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_boot_facts: {
		uuid?:              string
		moid?:              string
		name?:              string
		name_match?:        string
		use_instance_uuid?: bool
	}
}

vmware_host_config_manager :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_config_manager: {
		cluster_name?:  string
		esxi_hostname?: string
		options?: {...}
	}
}

vmware_host_feature_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_feature_facts: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_vm_vss_dvs_migrate :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vm_vss_dvs_migrate: {
		dvportgroup_name: string
		vm_name:          string
	}
}

vca_nat :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vca_nat: {
		nat_rules:    string
		purge_rules?: bool
	}
}

vmware_host_scanhba :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_scanhba: {
		cluster_name?:    string
		esxi_hostname?:   string
		refresh_storage?: bool
	}
}

vmware_local_role_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_local_role_facts: {
	}
}

vmware_guest_tools_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_tools_info: {
		name_match?:        string
		use_instance_uuid?: bool
		uuid?:              string
		datacenter?:        string
		folder?:            string
		moid?:              string
		name?:              string
	}
}

vmware_content_library_manager :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_content_library_manager: {
		state?:               string
		datastore_name?:      string
		library_description?: string
		library_name:         string
		library_type?:        string
	}
}

vmware_dvswitch_pvlans :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_dvswitch_pvlans: {
		primary_pvlans?: [...]
		secondary_pvlans?: [...]
		switch: string
	}
}

vmware_folder_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_folder_info: {
		datacenter: string
	}
}

vmware_guest_boot_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_boot_info: {
		moid?:              string
		name?:              string
		name_match?:        string
		use_instance_uuid?: bool
		uuid?:              string
	}
}

vmware_target_canonical_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_target_canonical_info: {
		cluster_name?:  string
		esxi_hostname?: string
		target_id?:     int
	}
}

vmware_content_library_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_content_library_info: {
		library_id?: string
	}
}

vmware_about_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_about_facts: {
	}
}

vmware_datastore_maintenancemode :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_datastore_maintenancemode: {
		cluster_name?:      string
		datastore?:         string
		datastore_cluster?: string
		state?:             string
	}
}

vmware_dvs_portgroup :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_dvs_portgroup: {
		vlan_trunk?: bool
		port_policy?: {...}
		switch_name:    string
		vlan_id:        string
		portgroup_type: string
		state:          string
		teaming_policy?: {...}
		network_policy?: {...}
		num_ports:      int
		portgroup_name: string
	}
}

vmware_host_acceptance :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_acceptance: {
		cluster_name?:     string
		esxi_hostname?:    string
		state?:            string
		acceptance_level?: string
	}
}

vmware_vswitch :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vswitch: {
		esxi_hostname?: string
		mtu?:           int
		nics?: [...]
		number_of_ports?: int
		state?:           string
		switch:           string
	}
}

vca_fw :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vca_fw: {
		fw_rules: string
	}
}

vmware_deploy_ovf :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_deploy_ovf: {
		allow_duplicates?:    bool
		cluster?:             string
		datacenter?:          string
		wait_for_ip_address?: bool
		networks?: {...}
		ovf?:                   string
		datastore?:             string
		disk_provisioning?:     string
		folder?:                string
		inject_ovf_env?:        bool
		deployment_option?:     string
		name?:                  string
		resource_pool?:         string
		wait?:                  bool
		fail_on_spec_warnings?: bool
		power_on?:              bool
		properties?: {...}
	}
}

vmware_host_service_manager :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_service_manager: {
		cluster_name?:   string
		esxi_hostname?:  string
		service_name:    string
		service_policy?: string
		state?:          string
	}
}

vmware_tag :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_tag: {
		category_id?:     string
		state?:           string
		tag_description?: string
		tag_name:         string
	}
}

vmware_vm_storage_policy_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vm_storage_policy_info: {
	}
}

vmware_vmkernel_ip_config :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vmkernel_ip_config: {
		ip_address:  string
		subnet_mask: string
		vmk_name:    string
	}
}

vmware_category_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_category_facts: {
	}
}

vmware_host_auto_start :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_auto_start: {
		system_defaults?: {...}
		use_instance_uuid?: bool
		uuid?:              string
		esxi_hostname:      string
		moid?:              string
		name?:              string
		power_info?: {...}
	}
}

vmware_host_feature_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_feature_info: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_guest_disk :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_disk: {
		name?:              string
		use_instance_uuid?: bool
		uuid?:              string
		datacenter:         string
		disk?: [...]
		folder?: string
		moid?:   string
	}
}

vmware_host_active_directory :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_active_directory: {
		ad_domain?:     string
		ad_password?:   string
		ad_state?:      string
		ad_user?:       string
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_content_deploy_template :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_content_deploy_template: {
		cluster?:       string
		resource_pool?: string
		folder:         string
		host:           string
		name:           string
		state?:         string
		template:       string
		datacenter:     string
		datastore:      string
	}
}

vmware_guest_video :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_video: {
		name?:               string
		folder?:             string
		gather_video_facts?: bool
		enable_3D?:          bool
		memory_3D_mb?:       int
		moid?:               string
		renderer_3D?:        string
		use_auto_detect?:    bool
		uuid?:               string
		datacenter?:         string
		display_number?:     int
		video_memory_mb?:    float
	}
}

vmware_vmkernel_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vmkernel_facts: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_dvswitch :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_dvswitch: {
		uplink_prefix?: string
		folder?:        string
		health_check?: {...}
		multicast_filtering_mode?: string
		state?:                    string
		uplink_quantity?:          int
		description?:              string
		discovery_operation?:      string
		discovery_proto?:          string
		switch_version?:           string
		contact?: {...}
		datacenter_name?: string
		mtu?:             int
		switch_name:      string
	}
}

vmware_guest_move :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_move: {
		name?:              string
		name_match?:        string
		use_instance_uuid?: bool
		uuid?:              string
		datacenter:         string
		dest_folder:        string
		moid?:              string
	}
}

vmware_host_hyperthreading :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_hyperthreading: {
		cluster_name?:  string
		esxi_hostname?: string
		state?:         string
	}
}

vmware_host_service_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_service_info: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_portgroup_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_portgroup_facts: {
		cluster_name?:  string
		esxi_hostname?: string
		policies?:      bool
	}
}

vmware_portgroup_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_portgroup_info: {
		esxi_hostname?: string
		policies?:      bool
		cluster_name?:  string
	}
}

vmware_resource_pool :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_resource_pool: {
		cpu_limit?:                   int
		cpu_shares?:                  string
		mem_expandable_reservations?: bool
		mem_reservation?:             int
		cpu_expandable_reservations?: bool
		cpu_reservation?:             int
		datacenter:                   string
		mem_limit?:                   int
		mem_shares?:                  string
		resource_pool:                string
		state?:                       string
		cluster:                      string
	}
}

vmware_about_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_about_info: {
	}
}

vmware_dvswitch_lacp :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_dvswitch_lacp: {
		support_mode?: string
		switch:        string
		link_aggregation_groups?: [...]
	}
}

vmware_guest_file_operation :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_file_operation: {
		copy?: {...}
		datacenter?: string
		fetch?: {...}
		vm_id:    string
		cluster?: string
		directory?: {...}
		folder?:     string
		vm_id_type?: string
		vm_password: string
		vm_username: string
	}
}

vmware_guest_network :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_network: {
		networks?: [...]
		uuid?:                string
		gather_network_info?: bool
		datacenter?:          string
		esxi_hostname?:       string
		folder?:              string
		moid?:                string
		name?:                string
		use_instance_uuid?:   bool
		cluster?:             string
	}
}

vmware_guest_screenshot :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_screenshot: {
		cluster?:       string
		datacenter?:    string
		esxi_hostname?: string
		folder?:        string
		local_path?:    string
		moid?:          string
		name?:          string
		uuid?:          string
	}
}

vmware_guest_sendkey :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_sendkey: {
		esxi_hostname?: string
		folder?:        string
		keys_send?: [...]
		name?:        string
		uuid?:        string
		cluster?:     string
		datacenter?:  string
		moid?:        string
		string_send?: string
	}
}

vmware_guest_snapshot_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_snapshot_info: {
		datacenter:         string
		folder?:            string
		moid?:              string
		name?:              string
		use_instance_uuid?: bool
		uuid?:              string
	}
}

vmware_resource_pool_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_resource_pool_facts: {
	}
}

vmware_dvs_host :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_dvs_host: {
		vendor_specific_config?: [...]
		vmnics: [...]
		esxi_hostname: string
		state:         string
		switch_name:   string
	}
}

vmware_target_canonical_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_target_canonical_facts: {
		cluster_name?:  string
		esxi_hostname?: string
		target_id?:     int
	}
}

vmware_vcenter_statistics :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vcenter_statistics: {
		interval_past_day?: {...}
		interval_past_month?: {...}
		interval_past_week?: {...}
		interval_past_year?: {...}
	}
}

vmware_tag_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_tag_info: {
	}
}

vmware_guest_customization_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_customization_facts: {
		spec_name?: string
	}
}

vmware_host_capability_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_capability_facts: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_host_dns :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_dns: {
		cluster_name?: string
		device?:       string
		dns_servers?: [...]
		domain?:        string
		esxi_hostname?: string
		search_domains?: [...]
		type:       string
		host_name?: string
		verbose?:   bool
	}
}

vmware_host_firewall_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_firewall_info: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_vmotion :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vmotion: {
		destination_datastore?: string
		destination_host?:      string
		moid?:                  string
		use_instance_uuid?:     bool
		vm_name?:               string
		vm_uuid?:               string
	}
}

vsphere_file :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vsphere_file: {
		state?:          string
		timeout?:        int
		datacenter:      string
		host:            string
		password:        string
		validate_certs?: bool
		datastore:       string
		path:            string
		username:        string
	}
}

vcenter_extension_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vcenter_extension_info: {
	}
}

vmware_dns_config :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_dns_config: {
		change_hostname_to: string
		dns_servers: [...]
		domainname: string
	}
}

vmware_drs_rule_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_drs_rule_facts: {
		cluster_name?: string
		datacenter?:   string
	}
}

vmware_dvs_portgroup_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_dvs_portgroup_facts: {
		datacenter:           string
		dvswitch?:            string
		show_network_policy?: bool
		show_port_policy?:    bool
		show_teaming_policy?: bool
		show_vlan_info?:      bool
	}
}

vmware_guest_custom_attributes :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_custom_attributes: {
		use_instance_uuid?: bool
		uuid?:              string
		attributes?: [...]
		datacenter: string
		folder?:    string
		moid?:      string
		name?:      string
		state?:     string
	}
}

vmware_vm_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vm_info: {
		folder?:         string
		show_attribute?: bool
		show_tag?:       bool
		vm_type?:        string
	}
}

vmware_vspan_session :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vspan_session: {
		encapsulation_vlan_id?:   int
		normal_traffic_allowed?:  bool
		session_type?:            string
		source_port_transmitted?: string
		state:                    string
		switch:                   string
		strip_original_vlan?:     bool
		description?:             string
		destination_port?:        string
		mirrored_packet_length?:  int
		name:                     string
		source_port_received?:    string
		source_vm_transmitted?: {...}
		destination_vm?: {...}
		enabled?:       bool
		sampling_rate?: int
		source_vm_received?: {...}
	}
}

vca_vapp :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vca_vapp: {
		state?:         string
		operation?:     string
		password?:      string
		org?:           string
		service_type?:  string
		vm_memory?:     string
		instance_id?:   string
		network_name?:  string
		template_name?: string
		username?:      string
		vapp_name:      string
		vdc_name?:      string
		vm_cpus?:       string
		vm_name?:       string
		api_version?:   string
		host?:          string
		network_mode?:  string
	}
}

vmware_vsan_cluster :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vsan_cluster: {
		cluster_uuid?: string
	}
}

vcenter_license :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vcenter_license: {
		license:        string
		state?:         string
		cluster_name?:  string
		datacenter?:    string
		esxi_hostname?: string
		labels?: {...}
	}
}

vmware_datastore_cluster :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_datastore_cluster: {
		datacenter_name?:       string
		datastore_cluster_name: string
		folder?:                string
		state?:                 string
	}
}

vmware_drs_group :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_drs_group: {
		cluster_name: string
		datacenter?:  string
		group_name:   string
		hosts?: [...]
		state: string
		vms?: [...]
	}
}

vmware_guest_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_info: {
		datacenter:  string
		moid?:       string
		name?:       string
		name_match?: string
		properties?: [...]
		use_instance_uuid?: bool
		folder?:            string
		schema?:            string
		tags?:              bool
		uuid?:              string
	}
}

vmware_guest_snapshot :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_snapshot: {
		description?:       string
		name?:              string
		use_instance_uuid?: bool
		memory_dump?:       bool
		new_description?:   string
		new_snapshot_name?: string
		state:              string
		uuid?:              string
		folder?:            string
		moid?:              string
		remove_children?:   bool
		datacenter:         string
		name_match?:        string
		quiesce?:           bool
		snapshot_name?:     string
	}
}

vmware_host_config_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_config_facts: {
		esxi_hostname?: string
		cluster_name?:  string
	}
}

vmware_host_dns_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_dns_info: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_local_user_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_local_user_info: {
	}
}

vmware_cluster_ha :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_cluster_ha: {
		failover_host_admission_control?: {...}
		ha_host_monitoring?:     string
		ha_vm_failure_interval?: int
		ha_vm_max_failures?:     int
		cluster_name:            string
		slot_based_admission_control?: {...}
		ha_vm_min_up_time?:        int
		ha_vm_monitoring?:         string
		host_isolation_response?:  string
		ha_vm_max_failure_window?: int
		enable_ha?:                bool
		ha_restart_priority?:      string
		reservation_based_admission_control?: {...}
		datacenter: string
	}
}

vmware_drs_group_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_drs_group_facts: {
		cluster_name?: string
		datacenter:    string
	}
}

vmware_guest_disk_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_disk_info: {
		folder?:            string
		moid?:              string
		name?:              string
		use_instance_uuid?: bool
		uuid?:              string
		datacenter:         string
	}
}

vmware_host_datastore :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_datastore: {
		nfs_path?:         string
		datacenter_name?:  string
		datastore_type:    string
		nfs_ro?:           bool
		nfs_server?:       string
		state?:            string
		vmfs_device_name?: string
		vmfs_version?:     int
		datastore_name:    string
		esxi_hostname?:    string
	}
}

vmware_host_powerstate :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_powerstate: {
		cluster_name?:  string
		esxi_hostname?: string
		force?:         bool
		state?:         string
		timeout?:       int
	}
}

vmware_cluster_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_cluster_info: {
		cluster_name?: string
		datacenter?:   string
		show_tag?:     bool
	}
}

vmware_guest_disk_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_disk_facts: {
		folder?:            string
		moid?:              string
		name?:              string
		use_instance_uuid?: bool
		uuid?:              string
		datacenter:         string
	}
}

vmware_guest_register_operation :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_register_operation: {
		datacenter?:    string
		folder?:        string
		name:           string
		path?:          string
		state?:         string
		template?:      bool
		cluster?:       string
		esxi_hostname?: string
		resource_pool?: string
		uuid?:          string
	}
}

vmware_host_ntp_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_ntp_facts: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_resource_pool_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_resource_pool_info: {
	}
}

vcenter_folder :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vcenter_folder: {
		datacenter:     string
		folder_name:    string
		folder_type?:   string
		parent_folder?: string
		state?:         string
	}
}

vmware_dvs_portgroup_find :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_dvs_portgroup_find: {
		show_uplink?: bool
		vlanid?:      int
		dvswitch?:    string
		name?:        string
	}
}

vmware_dvswitch_uplink_pg :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_dvswitch_uplink_pg: {
		name?:            string
		netflow_enabled?: bool
		switch:           string
		vlan_trunk_range?: [...]
		advanced?: {...}
		block_all_ports?: bool
		description?:     string
		lacp?: {...}
	}
}

vmware_guest_serial_port :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_serial_port: {
		uuid?: string
		backings?: [...]
		moid?:              string
		name?:              string
		use_instance_uuid?: bool
	}
}

vmware_host_capability_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_capability_info: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_host_config_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_config_info: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_host_vmhba_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_vmhba_info: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vcenter_extension :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vcenter_extension: {
		name?:           string
		server_type?:    string
		state?:          string
		client_type?:    string
		company?:        string
		description?:    string
		email?:          string
		extension_key:   string
		version:         string
		visible?:        bool
		ssl_thumbprint?: string
		url?:            string
	}
}

vmware_host_vmhba_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_vmhba_facts: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_guest_tools_upgrade :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_tools_upgrade: {
		datacenter:  string
		folder?:     string
		moid?:       string
		name?:       string
		name_match?: string
		uuid?:       string
	}
}

vmware_host_package_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_package_facts: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_host_vmnic_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_vmnic_facts: {
		capabilities?:  bool
		cluster_name?:  string
		directpath_io?: bool
		esxi_hostname?: string
		sriov?:         bool
	}
}

vmware_local_role_manager :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_local_role_manager: {
		local_role_name: string
		state?:          string
		action?:         string
		force_remove?:   bool
		local_privilege_ids?: [...]
	}
}

vmware_local_user_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_local_user_facts: {
	}
}

vmware_cfg_backup :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_cfg_backup: {
		dest?:          string
		esxi_hostname?: string
		src?:           string
		state?:         string
	}
}

vmware_vsan_health_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vsan_health_info: {
		fetch_from_cache?: bool
		cluster_name:      string
	}
}

vmware_cluster_vsan :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_cluster_vsan: {
		datacenter:               string
		enable_vsan?:             bool
		vsan_auto_claim_storage?: bool
		cluster_name:             string
	}
}

vmware_local_role_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_local_role_info: {
	}
}

vmware_host_ntp_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_ntp_info: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_host_ntp :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_ntp: {
		state?:         string
		verbose?:       bool
		cluster_name?:  string
		esxi_hostname?: string
		ntp_servers: [...]
	}
}

vmware_vm_host_drs_rule :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vm_host_drs_rule: {
		host_group_name: string
		affinity_rule?:  bool
		cluster_name:    string
		datacenter?:     string
		drs_rule_name:   string
		enabled?:        bool
		mandatory?:      bool
		state:           string
		vm_group_name:   string
	}
}

vmware_guest_boot_manager :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_boot_manager: {
		moid?:                string
		name_match?:          string
		secure_boot_enabled?: bool
		uuid?:                string
		boot_delay?:          int
		boot_retry_enabled?:  bool
		boot_retry_delay?:    int
		enter_bios_setup?:    bool
		name?:                string
		use_instance_uuid?:   bool
		boot_firmware?:       string
		boot_order?: [...]
	}
}

vmware_guest_vnc :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_vnc: {
		datacenter?:   string
		moid?:         string
		state?:        string
		vnc_ip?:       string
		vnc_password?: string
		vnc_port?:     int
		folder?:       string
		name?:         string
		name_match?:   string
		uuid?:         string
	}
}

vmware_local_user_manager :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_local_user_manager: {
		local_user_name:         string
		local_user_password?:    string
		state?:                  string
		local_user_description?: string
	}
}

vmware_tag_manager :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_tag_manager: {
		object_name: string
		object_type: string
		state?:      string
		tag_names: [...]
	}
}

vmware_vm_vm_drs_rule :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vm_vm_drs_rule: {
		vms?: [...]
		affinity_rule?: bool
		cluster_name:   string
		drs_rule_name:  string
		enabled?:       bool
		mandatory?:     bool
		state?:         string
	}
}

vmware_datastore_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_datastore_info: {
		datacenter?:             string
		gather_nfs_mount_info?:  bool
		gather_vmfs_mount_info?: bool
		name?:                   string
		cluster?:                string
	}
}

vmware_guest_tools_wait :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_tools_wait: {
		uuid?:              string
		folder?:            string
		moid?:              string
		name?:              string
		name_match?:        string
		use_instance_uuid?: bool
	}
}

vmware_host_kernel_manager :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_kernel_manager: {
		kernel_module_name:   string
		kernel_module_option: string
		cluster_name?:        string
		esxi_hostname?:       string
	}
}

vmware_host_lockdown :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_lockdown: {
		cluster_name?: string
		esxi_hostname?: [...]
		state?: string
	}
}

vmware_vmkernel :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vmkernel: {
		esxi_hostname:           string
		vswitch_name?:           string
		enable_vmotion?:         bool
		enable_vsan?:            bool
		subnet_mask?:            string
		ip_address?:             string
		mtu?:                    int
		state?:                  string
		enable_ft?:              bool
		portgroup_name:          string
		enable_mgmt?:            bool
		enable_provisioning?:    bool
		enable_replication?:     bool
		enable_replication_nfc?: bool
		network?: {...}
		device?:        string
		dvswitch_name?: string
	}
}

vmware_vswitch_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vswitch_info: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_guest_customization_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_customization_info: {
		spec_name?: string
	}
}

vmware_host :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host: {
		cluster_name?:           string
		esxi_hostname:           string
		esxi_password?:          string
		esxi_ssl_thumbprint?:    string
		esxi_username?:          string
		fetch_ssl_thumbprint?:   bool
		force_connection?:       bool
		add_connected?:          bool
		state?:                  string
		reconnect_disconnected?: bool
		folder?:                 string
		datacenter_name:         string
	}
}

vmware_host_ipv6 :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_ipv6: {
		cluster_name?:  string
		esxi_hostname?: string
		state?:         string
	}
}

vmware_host_package_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_package_info: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_host_powermgmt_policy :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_powermgmt_policy: {
		cluster_name?:  string
		esxi_hostname?: string
		policy?:        string
	}
}

vmware_portgroup :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_portgroup: {
		hosts?: [...]
		portgroup: string
		switch:    string
		traffic_shaping?: {...}
		cluster_name?: string
		state?:        string
		teaming?: {...}
		vlan_id?: int
		security?: {...}
	}
}

vmware_vm_shell :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_vm_shell: {
		vm_id: string
		vm_shell_env?: [...]
		cluster?:          string
		folder?:           string
		vm_id_type?:       string
		vm_password:       string
		vm_shell:          string
		vm_shell_args?:    string
		vm_shell_cwd?:     string
		vm_username:       string
		datacenter?:       string
		timeout?:          int
		wait_for_process?: bool
	}
}

vmware_guest :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest: {
		disk?:                           string
		hardware?:                       string
		is_template?:                    bool
		state?:                          string
		datacenter?:                     string
		customization?:                  string
		datastore?:                      string
		folder?:                         string
		name:                            string
		name_match?:                     string
		snapshot_src?:                   string
		vapp_properties?:                string
		cluster?:                        string
		wait_for_ip_address_timeout?:    int
		resource_pool?:                  string
		wait_for_customization?:         bool
		wait_for_customization_timeout?: int
		customvalues?:                   string
		state_change_timeout?:           string
		annotation?:                     string
		delete_from_inventory?:          bool
		force?:                          bool
		linked_clone?:                   bool
		networks?:                       string
		convert?:                        string
		use_instance_uuid?:              bool
		uuid?:                           string
		wait_for_ip_address?:            bool
		guest_id?:                       string
		customization_spec?:             string
		esxi_hostname?:                  string
		template?:                       string
		cdrom?:                          string
	}
}

vmware_guest_powerstate :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_guest_powerstate: {
		state_change_timeout?:      int
		use_instance_uuid?:         bool
		uuid?:                      string
		folder?:                    string
		force?:                     bool
		name_match?:                string
		state?:                     string
		schedule_task_name?:        string
		scheduled_at?:              string
		moid?:                      string
		name?:                      string
		schedule_task_description?: string
		schedule_task_enabled?:     bool
	}
}

vmware_host_ssl_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_ssl_info: {
		esxi_hostname?: string
		cluster_name?:  string
	}
}

vmware_export_ovf :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_export_ovf: {
		folder?:             string
		moid?:               string
		name?:               string
		uuid?:               string
		datacenter?:         string
		download_timeout?:   int
		export_dir:          string
		export_with_images?: bool
	}
}

vmware_host_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_facts: {
		esxi_hostname?: string
		properties?: [...]
		schema?:   string
		show_tag?: bool
	}
}

vmware_host_firewall_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_firewall_facts: {
		cluster_name?:  string
		esxi_hostname?: string
	}
}

vmware_host_vmnic_info :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vmware_host_vmnic_info: {
		capabilities?:  bool
		cluster_name?:  string
		directpath_io?: bool
		esxi_hostname?: string
		sriov?:         bool
	}
}

vcenter_extension_facts :: {
	register?: string
	when?:     string
	become?:   bool
	name?:     string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	vcenter_extension_facts: {
	}
}
