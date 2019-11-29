package netapp

na_elementsw_snapshot :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_snapshot: {
		account_id:                 string
		enable_remote_replication?: bool
		name?:                      string
		snap_mirror_label?:         string
		src_snapshot_id?:           string
		expiration_time?:           string
		password?:                  string
		retention?:                 string
		src_volume_id:              string
		state?:                     string
		username?:                  string
	}
}

na_ontap_software_update :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_software_update: {
		ignore_validation_warning?: bool
		nodes?:                     string
		package_url:                string
		package_version:            string
		state?:                     string
	}
}

netapp_e_snapshot_volume :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_snapshot_volume: {
		api_url:           string
		snapshot_image_id: string
		state:             string
		storage_pool_name: string
		validate_certs?:   bool
		ssid:              string
		view_mode:         string
		api_password:      string
		api_username:      string
		full_threshold?:   string
		name:              string
		repo_percentage?:  string
	}
}

na_ontap_info :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_info: {
		gather_subset?: [..._]
		state?:         string
	}
}

na_ontap_volume_clone :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_volume_clone: {
		parent_snapshot?:       string
		parent_volume:          string
		qos_policy_group_name?: string
		space_reserve?:         string
		volume_type?:           string
		gid?:                   int
		junction_path?:         string
		name:                   string
		vserver:                string
		parent_vserver?:        string
		state?:                 string
		uid?:                   int
	}
}

na_cdot_user_role :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_cdot_user_role: {
		access_level?:          string
		command_directory_name: string
		name:                   string
		state:                  string
		vserver:                string
	}
}

na_elementsw_access_group :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_access_group: {
		account_id?:           string
		name:                  string
		state:                 string
		volumes?:              string
		attributes?:           string
		from_name?:            string
		initiators?:           string
		virtual_network_id?:   string
		virtual_network_tags?: string
	}
}

netapp_e_amg :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_amg: {
		interfaceType?:                string
		name:                          string
		repoUtilizationWarnThreshold?: string
		state:                         string
		syncIntervalMinutes?:          string
		syncWarnThresholdMinutes?:     string
		manualSync?:                   bool
		recoveryWarnThresholdMinutes?: string
		secondaryArrayId:              string
	}
}

netapp_e_amg_sync :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_amg_sync: {
		api_username:           string
		delete_recovery_point?: bool
		name:                   string
		ssid?:                  string
		state:                  string
		validate_certs?:        bool
		api_password:           string
		api_url:                string
	}
}

netapp_e_iscsi_target :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_iscsi_target: {
		chap_secret?:       string
		log_path?:          string
		name?:              string
		ping?:              bool
		unnamed_discovery?: bool
	}
}

na_ontap_net_port :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_net_port: {
		flowcontrol_admin?:   string
		ports:                string
		state?:               string
		speed_admin?:         string
		autonegotiate_admin?: string
		duplex_admin?:        string
		ipspace?:             string
		mtu?:                 string
		node:                 string
	}
}

na_ontap_ntp :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_ntp: {
		server_name: string
		state?:      string
		version?:    string
	}
}

na_ontap_snapshot :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_snapshot: {
		from_name?:              string
		state?:                  string
		volume:                  string
		async_bool?:             bool
		comment?:                string
		ignore_owners?:          bool
		snapmirror_label?:       string
		snapshot:                string
		snapshot_instance_uuid?: string
		vserver:                 string
	}
}

na_ontap_export_policy_rule :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_export_policy_rule: {
		client_match?:        string
		name:                 string
		protocol?:            string
		rw_rule?:             string
		state?:               string
		allow_suid?:          bool
		ro_rule?:             string
		rule_index?:          string
		super_user_security?: string
		vserver:              string
	}
}

na_ontap_firmware_upgrade :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_firmware_upgrade: {
		install_baseline_image?: bool
		node:                    string
		package?:                string
		state?:                  string
		clear_logs?:             bool
		firmware_type?:          string
		update_type?:            string
		disk_fw?:                string
		shelf_module_fw?:        string
	}
}

na_ontap_lun :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_lun: {
		size?:                string
		size_unit?:           string
		space_allocation?:    bool
		space_reserve?:       bool
		flexvol_name:         string
		force_remove?:        bool
		force_remove_fenced?: bool
		ostype?:              string
		force_resize?:        bool
		name:                 string
		state?:               string
		vserver:              string
	}
}

na_ontap_qos_policy_group :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_qos_policy_group: {
		force?:          bool
		from_name?:      string
		max_throughput?: string
		min_throughput?: string
		name?:           string
		state?:          string
		vserver?:        string
	}
}

na_ontap_vscan_on_demand_task :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_vscan_on_demand_task: {
		file_ext_to_exclude?:    [..._]
		report_log_level?:       string
		scan_files_with_no_ext?: bool
		scan_paths?:             [..._]
		directory_recursion?:    bool
		state?:                  string
		vserver:                 string
		file_ext_to_include?:    [..._]
		scan_priority?:          string
		schedule?:               string
		report_directory?:       string
		max_file_size?:          string
		paths_to_exclude?:       [..._]
		request_timeout?:        string
		task_name:               string
		cross_junction?:         bool
	}
}

na_ontap_cg_snapshot :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_cg_snapshot: {
		snapshot:          string
		state?:            string
		timeout?:          string
		volumes:           string
		vserver:           string
		snapmirror_label?: string
	}
}

na_ontap_disks :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_disks: {
		disk_count?: int
		node:        string
	}
}

na_ontap_export_policy :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_export_policy: {
		from_name?: string
		name:       string
		state?:     string
		vserver?:   string
	}
}

netapp_e_facts :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_facts: {
	}
}

na_ontap_nvme :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_nvme: {
		status_admin?: bool
		vserver:       string
		state?:        string
	}
}

na_ontap_object_store :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_object_store: {
		server?:          string
		state?:           string
		access_key?:      string
		container?:       string
		name:             string
		provider_type?:   string
		secret_password?: string
	}
}

na_ontap_portset :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_portset: {
		ports?:  string
		state?:  string
		type?:   string
		vserver: string
		force?:  bool
		name:    string
	}
}

na_elementsw_cluster_pair :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_cluster_pair: {
		dest_password?: string
		dest_username?: string
		state?:         string
		dest_mvip:      string
	}
}

na_ontap_license :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_license: {
		remove_unused?:  bool
		serial_number?:  string
		state?:          string
		license_codes?:  string
		license_names?:  string
		remove_expired?: bool
	}
}

na_ontap_node :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_node: {
		from_name: string
		name:      string
	}
}

na_ontap_cluster :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_cluster: {
		node_serial_number?: string
		state?:              string
		cluster_ip_address?: string
		cluster_name?:       string
		license_code?:       string
		license_package?:    string
	}
}

na_ontap_igroup_initiator :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_igroup_initiator: {
		initiator_group: string
		names:           string
		state?:          string
		vserver:         string
	}
}

na_ontap_snapshot_policy :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_snapshot_policy: {
		state?:            string
		vserver?:          string
		comment?:          string
		count?:            [..._]
		enabled?:          bool
		name:              string
		schedule?:         [..._]
		snapmirror_label?: [..._]
	}
}

na_ontap_user :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_user: {
		name:                  string
		role_name?:            string
		set_password?:         string
		state?:                string
		vserver:               string
		applications:          [..._]
		authentication_method: string
		lock_user?:            bool
	}
}

netapp_e_volume_copy :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_volume_copy: {
		api_password:                        string
		api_username:                        string
		create_copy_pair_if_does_not_exist?: bool
		start_stop_copy?:                    string
		state:                               string
		validate_certs?:                     string
		api_url:                             string
		destination_volume_id?:              string
		search_volume_id?:                   string
		source_volume_id?:                   string
		volume_copy_pair_id?:                string
	}
}

na_elementsw_backup :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_backup: {
		dest_volume_id:     string
		format?:            string
		script?:            string
		script_parameters?: string
		src_volume_id:      string
		dest_hostname?:     string
		dest_password?:     string
		dest_username?:     string
	}
}

na_ontap_broadcast_domain_ports :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_broadcast_domain_ports: {
		broadcast_domain: string
		ipspace?:         string
		ports?:           string
		state?:           string
	}
}

na_ontap_qos_adaptive_policy_group :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_qos_adaptive_policy_group: {
		absolute_min_iops?:    string
		expected_iops?:        string
		force?:                bool
		name:                  string
		state?:                string
		vserver:               string
		from_name?:            string
		peak_iops?:            string
		peak_iops_allocation?: string
	}
}

na_cdot_qtree :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_cdot_qtree: {
		flexvol_name?: string
		name:          string
		state:         string
		vserver:       string
	}
}

na_elementsw_check_connections :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_check_connections: {
		mvip?: string
		skip?: string
		svip?: string
	}
}

na_ontap_kerberos_realm :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_kerberos_realm: {
		pw_server_ip?:      string
		pw_server_port?:    string
		admin_server_ip?:   string
		admin_server_port?: string
		clock_skew?:        string
		comment?:           string
		kdc_port?:          string
		kdc_vendor?:        string
		realm:              string
		state?:             string
		kdc_ip?:            string
		vserver:            string
	}
}

na_ontap_unix_group :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_unix_group: {
		state?:                string
		users?:                [..._]
		vserver:               string
		id?:                   string
		name:                  string
		skip_name_validation?: bool
	}
}

na_ontap_user_role :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_user_role: {
		command_directory_name: string
		name:                   string
		query?:                 string
		state?:                 string
		vserver:                string
		access_level?:          string
	}
}

na_ontap_volume :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_volume: {
		volume_security_style?:     string
		vserver:                    string
		auto_provision_as?:         string
		junction_path?:             string
		size_unit?:                 string
		space_guarantee?:           string
		type?:                      string
		aggr_list?:                 [..._]
		nvfail_enabled?:            bool
		space_slo?:                 string
		vserver_dr_protection?:     string
		unix_permissions?:          string
		is_infinite?:               bool
		is_online?:                 bool
		policy?:                    string
		tiering_policy?:            string
		time_out?:                  int
		aggregate_name?:            string
		encrypt?:                   bool
		qos_policy_group?:          string
		snapshot_policy?:           string
		atime_update?:              bool
		comment?:                   string
		efficiency_policy?:         string
		size?:                      int
		state?:                     string
		percent_snapshot_space?:    int
		qos_adaptive_policy_group?: string
		snapdir_access?:            bool
		wait_for_completion?:       bool
		aggr_list_multiplier?:      int
		from_name?:                 string
		language?:                  string
		name:                       string
	}
}

na_elementsw_snapshot_schedule :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_snapshot_schedule: {
		days_of_week_minutes?:    string
		name?:                    string
		paused?:                  bool
		schedule_type?:           string
		account_id?:              string
		snapshot_name?:           string
		time_interval_hours?:     string
		username?:                string
		volumes?:                 string
		recurring?:               bool
		days_of_month_minutes?:   string
		retention?:               string
		starting_date?:           string
		time_interval_days?:      string
		days_of_month_hours?:     string
		days_of_week_hours?:      string
		days_of_week_weekdays?:   string
		password?:                string
		state:                    string
		time_interval_minutes?:   string
		days_of_month_monthdays?: string
	}
}

na_ontap_cifs_server :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_cifs_server: {
		force?:           bool
		ou?:              string
		state?:           string
		vserver:          string
		workgroup?:       string
		admin_password?:  string
		admin_user_name?: string
		domain?:          string
		name:             string
		service_state?:   string
	}
}

na_ontap_ldap_client :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_ldap_client: {
		use_start_tls?:    string
		ldap_servers?:     [..._]
		referral_enabled?: string
		state?:            string
		schema?:           string
		session_security?: string
		min_bind_level?:   string
		name:              string
		query_timeout?:    int
		base_dn?:          string
		base_scope?:       string
		vserver:           string
		bind_dn?:          string
		bind_password?:    string
		port?:             int
	}
}

na_ontap_quotas :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_quotas: {
		policy?:           string
		state?:            string
		volume:            string
		vserver:           string
		file_limit?:       string
		qtree?:            string
		quota_target:      string
		set_quota_status?: bool
		threshold?:        string
		type:              string
		disk_limit?:       string
	}
}

na_ontap_ports :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_ports: {
		ipspace?:      string
		names:         [..._]
		portset_type?: string
		resource_name: string
		resource_type: string
		state?:        string
		vserver?:      string
	}
}

na_cdot_user :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_cdot_user: {
		authentication_method: string
		name:                  string
		role_name?:            string
		set_password?:         string
		state:                 string
		vserver:               string
		application:           string
	}
}

na_elementsw_admin_users :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_admin_users: {
		access?:           string
		element_password?: string
		element_username:  string
		state:             string
		acceptEula?:       bool
	}
}

na_ontap_motd :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_motd: {
		message?:           string
		show_cluster_motd?: bool
		state?:             string
		vserver:            string
	}
}

na_ontap_unix_user :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_unix_user: {
		name:       string
		state?:     string
		vserver:    string
		full_name?: string
		group_id?:  string
		id?:        string
	}
}

netapp_e_flashcache :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_flashcache: {
		api_url:         string
		disk_count?:     string
		io_type?:        string
		size_unit?:      string
		ssid:            string
		state:           string
		validate_certs?: bool
		api_password:    string
		api_username:    string
		cache_size_min?: string
		name:            string
	}
}

na_cdot_aggregate :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_cdot_aggregate: {
		name:        string
		state:       string
		disk_count?: string
	}
}

na_elementsw_ldap :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_ldap: {
		groupSearchType?:         string
		searchBindDN?:            string
		searchBindPassword?:      string
		serverURIs?:              string
		state:                    string
		userDNTemplate?:          string
		groupSearchBaseDn?:       string
		groupSearchCustomFilter?: string
		userSearchFilter?:        string
		authType?:                string
		userSearchBaseDN?:        string
	}
}

na_ontap_gather_facts :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_gather_facts: {
		gather_subset?: string
		state?:         string
	}
}

sf_volume_manager :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	sf_volume_manager: {
		volume_id?:    string
		512emulation?: string
		access?:       string
		name:          string
		qos?:          string
		state:         string
		account_id:    string
		attributes?:   string
		size?:         string
		size_unit?:    string
	}
}

na_elementsw_account :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_account: {
		attributes?:       string
		element_username:  string
		from_name?:        string
		initiator_secret?: string
		state:             string
		status?:           string
		target_secret?:    string
	}
}

na_ontap_cifs_acl :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_cifs_acl: {
		share_name:    string
		state?:        string
		user_or_group: string
		vserver:       string
		permission?:   string
	}
}

na_ontap_cluster_peer :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_cluster_peer: {
		dest_hostname:             string
		dest_password?:            string
		source_cluster_name?:      string
		source_intercluster_lifs?: string
		state?:                    string
		dest_cluster_name?:        string
		dest_username?:            string
		passphrase?:               string
		dest_intercluster_lifs?:   string
	}
}

na_ontap_vserver_cifs_security :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_vserver_cifs_security: {
		is_signing_required?:             bool
		kerberos_renew_age?:              int
		session_security_for_ad_ldap?:    string
		smb2_enabled_for_dc_connections?: string
		use_start_tls_for_ad_ldap?:       bool
		lm_compatibility_level?:          string
		is_aes_encryption_enabled?:       bool
		kerberos_ticket_age?:             int
		vserver:                          string
		is_password_complexity_required?: bool
		is_smb_encryption_required?:      bool
		kerberos_clock_skew?:             int
		kerberos_kdc_timeout?:            int
		referral_enabled_for_ad_ldap?:    bool
		smb1_enabled_for_dc_connections?: string
	}
}

netapp_e_asup :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_asup: {
		verbose?:  bool
		active?:   bool
		days?:     string
		end?:      string
		log_path?: string
		start?:    string
		state?:    string
	}
}

na_elementsw_snapshot_restore :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_snapshot_restore: {
		src_volume_id:    string
		account_id:       string
		dest_volume_name: string
		src_snapshot_id:  string
	}
}

na_ontap_igroup :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_igroup: {
		state?:                  string
		force_remove_initiator?: bool
		initiator_group_type?:   string
		initiators?:             string
		name:                    string
		ostype?:                 string
		vserver:                 string
		bind_portset?:           string
		from_name?:              string
	}
}

na_ontap_job_schedule :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_job_schedule: {
		job_hours?:         [..._]
		job_minutes?:       [..._]
		job_months?:        [..._]
		name:               string
		state?:             string
		job_days_of_month?: [..._]
		job_days_of_week?:  [..._]
	}
}

na_elementsw_node :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_node: {
		state?:  string
		node_id: string
	}
}

na_ontap_volume_autosize :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_volume_autosize: {
		minimum_size?:             string
		reset?:                    bool
		shrink_threshold_percent?: int
		volume:                    string
		increment_size?:           string
		maximum_size?:             string
		mode?:                     string
		vserver:                   string
		grow_threshold_percent?:   int
	}
}

netapp_e_mgmt_interface :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_mgmt_interface: {
		state?:              string
		address?:            string
		controller:          string
		name?:               string
		ntp_address?:        string
		ntp_config_method?:  string
		dns_address_backup?: string
		ntp_address_backup?: string
		config_method?:      string
		dns_address?:        string
		subnet_mask?:        string
		channel?:            string
		dns_config_method?:  string
		gateway?:            string
		log_path?:           string
		ssh?:                bool
	}
}

na_ontap_command :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_command: {
		command:      string
		privilege?:   string
		return_dict?: bool
	}
}

na_ontap_iscsi :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_iscsi: {
		state?:         string
		vserver:        string
		service_state?: string
	}
}

na_ontap_nfs :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_nfs: {
		nfsv3_fsid_change?:       string
		nfsv40_referrals?:        string
		nfsv41_acl?:              string
		nfsv41_pnfs?:             string
		nfsv41_referrals?:        string
		nfsv41_write_delegation?: string
		showmount?:               string
		tcp?:                     string
		nfsv4?:                   string
		nfsv4_fsid_change?:       string
		nfsv4_id_domain?:         string
		nfsv4_numeric_ids?:       string
		nfsv41_read_delegation?:  string
		service_state?:           string
		tcp_max_xfer_size?:       int
		vserver:                  string
		nfsv40_write_delegation?: string
		nfsv41?:                  string
		state?:                   string
		udp?:                     string
		nfsv3?:                   string
		nfsv40_acl?:              string
		nfsv40_read_delegation?:  string
		vstorage_state?:          string
	}
}

netapp_e_hostgroup :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_hostgroup: {
		name?:     string
		new_name?: string
		state:     string
		hosts?:    string
		id?:       string
	}
}

sf_volume_access_group_manager :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	sf_volume_access_group_manager: {
		virtual_network_tags?:   string
		volume_access_group_id?: string
		volumes?:                string
		attributes?:             string
		initiators?:             string
		name:                    string
		state:                   string
		virtual_network_id?:     string
	}
}

na_elementsw_initiators :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_initiators: {
		initiators?: string
		state?:      string
	}
}

na_elementsw_volume :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_volume: {
		name:        string
		qos?:        string
		size_unit?:  string
		state:       string
		username?:   string
		access?:     string
		account_id:  string
		attributes?: string
		enable512e?: bool
		password?:   string
		size?:       string
	}
}

na_ontap_broadcast_domain :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_broadcast_domain: {
		name:       string
		ports?:     string
		state?:     string
		from_name?: string
		ipspace?:   string
		mtu?:       string
	}
}

netapp_e_amg_role :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_amg_role: {
		ssid:            string
		validate_certs?: bool
		api_password:    string
		api_url:         string
		api_username:    string
		force?:          bool
		noSync?:         bool
		role:            string
	}
}

netapp_e_auditlog :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_auditlog: {
		force?:       bool
		full_policy?: string
		log_level?:   string
		log_path?:    string
		max_records?: string
		threshold?:   string
	}
}

netapp_e_storagepool :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_storagepool: {
		criteria_drive_count?:          int
		criteria_drive_require_da?:     bool
		criteria_min_usable_capacity?:  float
		reserve_drive_count?:           string
		secure_pool?:                   bool
		criteria_drive_type?:           string
		criteria_size_unit?:            string
		erase_secured_drives?:          bool
		name:                           string
		raid_level?:                    string
		state:                          string
		criteria_drive_interface_type?: string
		criteria_drive_min_size?:       string
		criteria_drive_require_fde?:    bool
		remove_volumes?:                string
	}
}

netapp_e_syslog :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_syslog: {
		components?: string
		log_path?:   string
		port?:       string
		protocol?:   string
		state?:      string
		test?:       bool
		address?:    string
	}
}

na_ontap_fcp :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_fcp: {
		state?:  string
		status?: string
		vserver: string
	}
}

na_ontap_snapmirror :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_snapmirror: {
		connection_type?:     string
		relationship_type?:   string
		source_volume?:       string
		state?:               string
		source_username?:     string
		source_vserver?:      string
		policy?:              string
		schedule?:            string
		source_hostname?:     string
		source_password?:     string
		destination_path?:    string
		destination_volume?:  string
		destination_vserver?: string
		identity_preserve?:   bool
		max_transfer_rate?:   int
		source_path?:         string
	}
}

na_ontap_snmp :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_snmp: {
		access_control: string
		community_name: string
		state?:         string
	}
}

na_ontap_svm_options :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_svm_options: {
		name?:   string
		value?:  string
		vserver: string
	}
}

na_ontap_vscan :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_vscan: {
		enable?: bool
		vserver: string
	}
}

netapp_e_drive_firmware :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_drive_firmware: {
		upgrade_drives_online?:      bool
		wait_for_completion?:        bool
		firmware:                    [..._]
		ignore_inaccessible_drives?: bool
	}
}

na_ontap_cifs :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_cifs: {
		vscan_fileop_profile?: string
		vserver:               string
		path?:                 string
		share_name:            string
		share_properties?:     string
		state?:                string
		symlink_properties?:   string
	}
}

na_ontap_dns :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_dns: {
		domains?:         string
		nameservers?:     string
		skip_validation?: bool
		state?:           string
		vserver:          string
	}
}

na_ontap_net_routes :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_net_routes: {
		metric?:           string
		state?:            string
		vserver:           string
		destination:       string
		from_destination?: string
		from_gateway?:     string
		from_metric?:      string
		gateway:           string
	}
}

na_ontap_cluster_ha :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_cluster_ha: {
		state?: string
	}
}

na_ontap_firewall_policy :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_firewall_policy: {
		service?:    string
		state?:      string
		vserver?:    string
		allow_list?: string
		enable?:     string
		logging?:    string
		node?:       string
		policy?:     string
	}
}

na_ontap_lun_copy :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_lun_copy: {
		destination_path:    string
		destination_vserver: string
		source_path:         string
		source_vserver?:     string
		state?:              string
	}
}

na_ontap_net_vlan :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_net_vlan: {
		node:             string
		parent_interface: string
		state?:           string
		vlanid:           string
	}
}

na_ontap_ndmp :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_ndmp: {
		is_secure_control_connection_enabled?: bool
		tcpnodelay?:                           bool
		abort_on_disk_error?:                  bool
		debug_filter?:                         string
		fh_node_retry_interval?:               int
		secondary_debug_filter?:               string
		vserver:                               string
		per_qtree_exclude_enable?:             bool
		preferred_interface_role?:             [..._]
		restore_vm_cache_size?:                int
		ignore_ctime_enabled?:                 bool
		tcpwinsize?:                           int
		data_port_range?:                      string
		dump_logical_find?:                    string
		enable?:                               bool
		dump_detailed_stats?:                  bool
		fh_dir_retry_interval?:                int
		offset_map_enable?:                    bool
		authtype?:                             [..._]
		backup_log_enable?:                    bool
		debug_enable?:                         bool
	}
}

netapp_e_global :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_global: {
		log_path?: string
		name?:     string
	}
}

sf_check_connections :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	sf_check_connections: {
		mvip?: string
		skip?: string
		svip?: string
	}
}

na_elementsw_volume_pair :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_volume_pair: {
		dest_mvip:      string
		dest_password?: string
		dest_username?: string
		src_account:    string
		state?:         string
		dest_account:   string
		dest_volume:    string
		mode?:          string
		src_volume:     string
	}
}

na_ontap_aggregate :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_aggregate: {
		state?:           string
		disks?:           [..._]
		raid_size?:       string
		raid_type?:       string
		mirror_disks?:    [..._]
		name:             string
		time_out?:        string
		disk_count?:      string
		from_name?:       string
		is_mirrored?:     bool
		wait_for_online?: bool
		disk_size?:       string
		nodes?:           string
		spare_pool?:      string
		disk_type?:       string
		service_state?:   string
		unmount_volumes?: bool
	}
}

na_ontap_autosupport :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_autosupport: {
		from_address?:        string
		hostname_in_subject?: bool
		node_name:            string
		partner_addresses?:   string
		post_url?:            string
		transport?:           string
		mail_hosts?:          string
		noteto?:              string
		proxy_url?:           string
		state?:               string
		support?:             bool
		to_addresses?:        string
	}
}

netapp_e_storage_system :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_storage_system: {
		array_password?:      string
		array_wwn?:           string
		controller_addresses: string
		enable_trace?:        bool
		meta_tags?:           string
		api_password:         string
		api_url:              string
		api_username:         string
		ssid:                 string
		state:                string
		validate_certs?:      bool
	}
}

na_elementsw_volume_clone :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_volume_clone: {
		src_volume_id:    string
		access?:          string
		account_id:       string
		attributes?:      string
		name:             string
		size?:            string
		size_unit?:       string
		src_snapshot_id?: string
	}
}

na_ontap_service_processor_network :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_service_processor_network: {
		is_enabled:           bool
		netmask?:             string
		node:                 string
		state?:               string
		wait_for_completion?: bool
		gateway_ip_address?:  string
		ip_address?:          string
		prefix_length?:       string
		address_type:         string
		dhcp?:                string
	}
}

netapp_e_host :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_host: {
		group?:      string
		host_type?:  string
		log_path?:   string
		name:        string
		ports?:      string
		state?:      string
		force_port?: bool
	}
}

na_ontap_nvme_subsystem :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_nvme_subsystem: {
		skip_mapped_check?: bool
		state?:             string
		subsystem:          string
		vserver:            string
		hosts?:             [..._]
		ostype?:            string
		paths?:             [..._]
		skip_host_check?:   bool
	}
}

na_ontap_security_key_manager :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_security_key_manager: {
		tcp_port?:  string
		ip_address: string
		node?:      string
		state?:     string
	}
}

na_elementsw_cluster :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_cluster: {
		attributes?:             string
		cluster_admin_password?: string
		cluster_admin_username?: string
		management_virtual_ip:   string
		nodes:                   string
		replica_count?:          string
		storage_virtual_ip:      string
		accept_eula?:            bool
	}
}

na_ontap_flexcache :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_flexcache: {
		force_unmount?:        bool
		junction_path?:        string
		origin_volume?:        string
		origin_vserver?:       string
		size?:                 string
		force_offline?:        bool
		origin_cluster?:       string
		auto_provision_as?:    string
		volume:                string
		aggr_list?:            string
		size_unit?:            string
		state?:                string
		time_out?:             string
		vserver:               string
		aggr_list_multiplier?: string
	}
}

na_ontap_interface :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_interface: {
		home_node?:                string
		listen_for_dns_query?:     bool
		netmask?:                  string
		address?:                  string
		admin_status?:             string
		is_dns_update_enabled?:    bool
		role?:                     string
		failover_policy?:          string
		force_subnet_association?: bool
		protocols?:                string
		dns_domain_name?:          string
		interface_name:            string
		is_auto_revert?:           bool
		state?:                    string
		subnet_name?:              string
		vserver:                   string
		firewall_policy?:          string
		home_port?:                string
	}
}

na_cdot_svm :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_cdot_svm: {
		root_volume_security_style?: string
		state:                       string
		name:                        string
		root_volume?:                string
		root_volume_aggregate?:      string
	}
}

na_elementsw_network_interfaces :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_network_interfaces: {
		method:               string
		mtu_1g?:              string
		virtual_network_tag?: string
		lacp_1g?:             string
		dns_nameservers?:     string
		dns_search_domains?:  string
		ip_address_1g:        string
		lacp_10g?:            string
		mtu_10g?:             string
		bond_mode_1g?:        string
		gateway_address_1g:   string
		ip_address_10g:       string
		bond_mode_10g?:       string
		subnet_10g:           string
		subnet_1g:            string
		gateway_address_10g:  string
	}
}

na_ontap_vscan_scanner_pool :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_vscan_scanner_pool: {
		privileged_users?: string
		scanner_policy?:   string
		scanner_pool:      string
		state?:            string
		vserver:           string
		hostnames?:        string
	}
}

netapp_e_auth :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_auth: {
		api_url?:          string
		current_password?: string
		ssid?:             string
		api_password?:     string
		name?:             string
		new_password:      string
		set_admin?:        bool
		validate_certs?:   bool
		api_username?:     string
	}
}

netapp_e_lun_mapping :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_lun_mapping: {
		lun?:         string
		state:        string
		target?:      string
		target_type?: string
		volume_name:  string
	}
}

na_cdot_volume :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_cdot_volume: {
		size_unit?:       string
		vserver:          string
		export_policy?:   string
		infinite?:        bool
		junction_path?:   string
		name:             string
		online?:          bool
		size?:            string
		snapshot_policy?: string
		state:            string
		aggregate_name?:  string
	}
}

na_elementsw_cluster_snmp :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_cluster_snmp: {
		networks?:        string
		snmp_v3_enabled?: bool
		state?:           string
		usm_users?:       string
	}
}

na_elementsw_drive :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_drive: {
		drive_id?:              string
		force_during_bin_sync?: bool
		force_during_upgrade?:  bool
		node_id:                string
		state?:                 string
	}
}

na_ontap_nvme_namespace :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_nvme_namespace: {
		ostype?: string
		path?:   string
		size?:   int
		state?:  string
		vserver: string
	}
}

na_ontap_qtree :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_qtree: {
		flexvol_name:      string
		from_name?:        string
		name:              string
		oplocks?:          string
		security_style?:   string
		unix_permissions?: string
		vserver:           string
		export_policy?:    string
		state?:            string
	}
}

na_ontap_vserver_peer :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_vserver_peer: {
		vserver?:       string
		applications?:  string
		dest_hostname?: string
		dest_password?: string
		dest_username?: string
		peer_cluster?:  string
		peer_vserver?:  string
		state?:         string
	}
}

netapp_e_firmware :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_firmware: {
		wait_for_completion?: bool
		firmware:             string
		ignore_health_check?: bool
		nvsram:               string
	}
}

netapp_e_snapshot_images :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_snapshot_images: {
		api_password:    string
		api_url:         string
		api_username:    string
		snapshot_group:  string
		state:           string
		validate_certs?: string
	}
}

na_cdot_lun :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_cdot_lun: {
		size?:                string
		vserver:              string
		flexvol_name?:        string
		force_remove?:        string
		force_remove_fenced?: string
		force_resize?:        string
		name:                 string
		size_unit?:           string
		state:                string
	}
}

na_ontap_ldap :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_ldap: {
		name:                    string
		skip_config_validation?: string
		state?:                  string
		vserver:                 string
	}
}

na_ontap_net_ifgrp :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_net_ifgrp: {
		mode?:                  string
		name:                   string
		node:                   string
		ports?:                 string
		state?:                 string
		distribution_function?: string
	}
}

na_ontap_lun_map :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_lun_map: {
		initiator_group_name: string
		lun_id?:              string
		path:                 string
		state?:               string
		vserver:              string
	}
}

na_ontap_vscan_on_access_policy :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_vscan_on_access_policy: {
		file_ext_to_include?:    string
		max_file_size?:          string
		paths_to_exclude?:       string
		policy_name:             string
		scan_files_with_no_ext?: string
		file_ext_to_exclude?:    string
		filters?:                string
		is_scan_mandatory?:      bool
		state?:                  string
		vserver:                 string
	}
}

netapp_e_iscsi_interface :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_iscsi_interface: {
		address?:       string
		name:           string
		mtu?:           string
		state?:         string
		subnet_mask?:   string
		config_method?: string
		controller:     string
		gateway?:       string
		log_path?:      string
	}
}

netapp_e_snapshot_group :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_snapshot_group: {
		state:              string
		storage_pool_name:  string
		warning_threshold?: string
		api_username:       string
		base_volume_name:   string
		full_policy?:       string
		name:               string
		repo_pct?:          string
		rollback_priority?: string
		validate_certs?:    bool
		api_password:       string
		api_url:            string
		delete_limit?:      string
	}
}

na_elementsw_cluster_config :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_cluster_config: {
		enable_virtual_volumes?:        bool
		encryption_at_rest?:            string
		modify_cluster_full_threshold?: string
		set_ntp_info?:                  string
	}
}

na_elementsw_vlan :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_elementsw_vlan: {
		address_blocks?: string
		attributes?:     string
		gateway?:        string
		name?:           string
		namespace?:      bool
		netmask?:        string
		svip?:           string
		vlan_tag:        string
		state?:          string
	}
}

na_ontap_ipspace :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_ipspace: {
		from_name?: string
		name:       string
		state?:     string
	}
}

na_ontap_ucadapter :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_ucadapter: {
		node_name:    string
		state?:       string
		type?:        string
		adapter_name: string
		mode?:        string
	}
}

sf_snapshot_schedule_manager :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	sf_snapshot_schedule_manager: {
		volumes?:               string
		name:                   string
		paused?:                string
		recurring?:             string
		starting_date?:         string
		time_interval_hours?:   string
		time_interval_minutes?: string
		retention?:             string
		schedule_id?:           string
		snapshot_name?:         string
		state:                  string
		time_interval_days?:    string
	}
}

na_ontap_net_subnet :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_net_subnet: {
		from_name?:       string
		gateway?:         string
		ip_ranges?:       string
		ipspace?:         string
		name:             string
		state?:           string
		subnet:           string
		broadcast_domain: string
	}
}

na_ontap_svm :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_ontap_svm: {
		snapshot_policy?:            string
		state?:                      string
		comment?:                    string
		from_name?:                  string
		ipspace?:                    string
		language?:                   string
		root_volume_aggregate?:      string
		root_volume_security_style?: string
		aggr_list?:                  string
		allowed_protocols?:          string
		name:                        string
		root_volume?:                string
		subtype?:                    string
	}
}

netapp_e_ldap :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_ldap: {
		search_base:     string
		server:          string
		state?:          string
		user_attribute?: string
		attributes?:     string
		log_path?:       string
		password:        string
		username:        string
		identifier?:     string
		name?:           string
		role_mappings:   string
	}
}

sf_account_manager :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	sf_account_manager: {
		account_id?:       string
		attributes?:       string
		initiator_secret?: string
		name:              string
		new_name?:         string
		state:             string
		status?:           string
		target_secret?:    string
	}
}

na_cdot_license :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	na_cdot_license: {
		licenses?:       string
		remove_expired?: bool
		remove_unused?:  bool
		serial_number?:  string
	}
}

netapp_e_alerts :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_alerts: {
		state?:      string
		test?:       bool
		contact?:    string
		log_path?:   string
		recipients?: string
		sender?:     string
		server?:     string
	}
}

netapp_e_volume :: {
	vars?:       {...}
	tags?:       [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	netapp_e_volume: {
		owning_controller?:                  string
		storage_pool_name?:                  string
		thin_volume_expansion_policy?:       string
		initialization_timeout?:             int
		segment_size_kb?:                    string
		read_cache_enable?:                  bool
		ssd_cache_enabled?:                  bool
		state:                               string
		thin_provision?:                     bool
		thin_volume_growth_alert_threshold?: string
		wait_for_initialization?:            bool
		write_cache_enable?:                 bool
		cache_without_batteries?:            bool
		metadata?:                           {...}
		name:                                string
		read_ahead_enable?:                  bool
		size:                                string
		size_unit?:                          string
		thin_volume_max_repo_size?:          string
		thin_volume_repo_size?:              string
		data_assurance_enabled?:             bool
		workload_name?:                      string
	}
}
