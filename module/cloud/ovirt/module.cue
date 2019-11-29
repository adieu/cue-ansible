package ovirt

ovirt_api_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_api_info: {
	}
}

ovirt_template :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_template: {
		storage_domain?:           string
		cloud_init?:               string
		memory_max?:               string
		operating_system?:         string
		template_image_disk_name?: string
		clone_permissions?:        bool
		cloud_init_nics?:          string
		id?:                       string
		io_threads?:               string
		memory?:                   string
		vm?:                       string
		sso?:                      bool
		vnic_profile_mappings?:    string
		clone_name?:               string
		cluster_mappings?:         string
		image_provider?:           string
		timezone?:                 string
		description?:              string
		role_mappings?:            string
		state?:                    string
		sysprep?:                  string
		allow_partial_import?:     bool
		ballooning_enabled?:       bool
		name?:                     string
		image_disk?:               string
		memory_guaranteed?:        string
		nics?:                     string
		seal?:                     bool
		cluster?:                  string
		cpu_profile?:              string
		export_domain?:            string
		soundcard_enabled?:        bool
		usb_support?:              bool
		version?:                  string
		domain_mappings?:          string
		exclusive?:                bool
		smartcard_enabled?:        bool
	}
}

ovirt_vnic_profile_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_vnic_profile_info: {
		name?: string
		max?:  int
	}
}

ovirt_auth :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_auth: {
		username?: string
		ca_file?:  string
		kerberos?: bool
		hostname?: string
		insecure?: bool
		password?: string
		state?:    string
		timeout?:  string
		token?:    string
		compress?: bool
		headers?:  string
		url?:      string
	}
}

ovirt_event_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_event_info: {
		wait?:           bool
		case_sensitive?: bool
		from_?:          int
		headers?:        string
		max?:            int
		query?:          string
		search?:         string
	}
}

ovirt_storage_template_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_storage_template_info: {
		max?:            string
		storage_domain?: string
		unregistered?:   bool
	}
}

ovirt_tag :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_tag: {
		parent?:      string
		state?:       string
		vms?:         string
		description?: string
		hosts?:       string
		id?:          string
		name:         string
	}
}

ovirt_group :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_group: {
		namespace?: string
		state?:     string
		authz_name: string
		name:       string
	}
}

ovirt_host_network :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_host_network: {
		check?:         bool
		interface?:     string
		name:           string
		networks?:      string
		bond?:          string
		save?:          bool
		state?:         string
		sync_networks?: bool
		labels?:        string
	}
}

ovirt_quota_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_quota_info: {
		data_center: string
		name?:       string
	}
}

ovirt_vmpool_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_vmpool_info: {
		pattern?: string
	}
}

ovirt_storage_vm_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_storage_vm_info: {
		max?:            string
		storage_domain?: string
		unregistered?:   bool
	}
}

ovirt_vm :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_vm: {
		snapshot_name?:                string
		boot_devices?:                 string
		cpu_cores?:                    string
		graphical_console?:            string
		host?:                         string
		id?:                           string
		memory_max?:                   string
		custom_properties?:            string
		export_ova?:                   string
		high_availability?:            bool
		kvm?:                          string
		migrate?:                      bool
		storage_domain?:               string
		soundcard_enabled?:            bool
		use_latest_template_version?:  bool
		ballooning_enabled?:           bool
		clone?:                        bool
		exclusive?:                    bool
		kernel_params_persist?:        bool
		next_run?:                     bool
		quota_id?:                     string
		cd_iso?:                       string
		cluster_mappings?:             string
		cpu_threads?:                  string
		instance_type?:                string
		kernel_path?:                  string
		state?:                        string
		sso?:                          bool
		type?:                         string
		affinity_group_mappings?:      string
		clone_permissions?:            bool
		cpu_sockets?:                  string
		domain_mappings?:              string
		numa_nodes?:                   string
		smartcard_enabled?:            bool
		vmware?:                       string
		template_version?:             string
		force?:                        bool
		lease?:                        string
		serial_console?:               bool
		comment?:                      string
		name?:                         string
		placement_policy?:             string
		sysprep?:                      string
		ticket?:                       bool
		cpu_shares?:                   string
		custom_emulated_machine?:      string
		memory?:                       string
		serial_policy_value?:          string
		snapshot_vm?:                  string
		timezone?:                     string
		boot_menu?:                    bool
		disk_format?:                  string
		io_threads?:                   string
		serial_policy?:                string
		vnic_profile_mappings?:        string
		watchdog?:                     string
		allow_partial_import?:         bool
		cpu_mode?:                     string
		high_availability_priority?:   string
		template?:                     string
		export_domain?:                string
		lun_mappings?:                 string
		nics?:                         string
		stateless?:                    bool
		usb_support?:                  bool
		cloud_init?:                   string
		cloud_init_persist?:           bool
		disks?:                        string
		force_migrate?:                bool
		host_devices?:                 string
		kernel_params?:                string
		delete_protected?:             bool
		description?:                  string
		initrd_path?:                  string
		memory_guaranteed?:            string
		operating_system?:             string
		rng_device?:                   string
		cpu_pinning?:                  string
		numa_tune_mode?:               string
		reassign_bad_macs?:            bool
		role_mappings?:                string
		affinity_label_mappings?:      string
		cloud_init_nics?:              string
		cluster?:                      string
		custom_compatibility_version?: string
		xen?:                          string
	}
}

ovirt_affinity_label_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_affinity_label_info: {
		host?: string
		name?: string
		vm?:   string
	}
}

ovirt_job :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_job: {
		state?: string
		steps?: [...]
		description: string
	}
}

ovirt_snapshot_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_snapshot_info: {
		description?: string
		snapshot_id?: string
		vm:           string
	}
}

ovirt_snapshot :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_snapshot: {
		description?:         string
		keep_days_old?:       string
		snapshot_id?:         string
		use_memory?:          bool
		disk_id?:             string
		disk_name?:           string
		download_image_path?: string
		state?:               string
		upload_image_path?:   string
		vm_name:              string
	}
}

ovirt_tag_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_tag_info: {
		host?: string
		name?: string
		vm?:   string
	}
}

ovirt_vmpool :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_vmpool: {
		vm_count?:    string
		vm_per_user?: string
		description?: string
		id?:          string
		state?:       string
		prestarted?:  string
		template?:    string
		type?:        string
		vm?: {...}
		cluster?: string
		comment?: string
		name:     string
	}
}

ovirt_datacenter :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_datacenter: {
		description?:           string
		force?:                 bool
		local?:                 bool
		mac_pool?:              string
		name:                   string
		comment?:               string
		compatibility_version?: string
		id?:                    string
		quota_mode?:            string
		state?:                 string
	}
}

ovirt_cluster :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_cluster: {
		firewall_type?:                        string
		serial_policy_value?:                  string
		spice_proxy?:                          string
		ksm_numa?:                             bool
		switch_type?:                          string
		threads_as_cores?:                     bool
		trusted_service?:                      bool
		description?:                          string
		fence_skip_if_gluster_quorum_not_met?: bool
		host_reason?:                          bool
		id?:                                   string
		migration_compressed?:                 string
		name:                                  string
		scheduling_policy_properties?:         string
		state?:                                string
		ballooning?:                           bool
		compatibility_version?:                string
		cpu_type?:                             string
		migration_bandwidth_limit?:            string
		fence_enabled?:                        bool
		fence_skip_if_gluster_bricks_up?:      bool
		ha_reservation?:                       bool
		migration_policy?:                     string
		virt?:                                 bool
		gluster?:                              bool
		network?:                              string
		resilience_policy?:                    string
		rng_sources?:                          string
		ksm?:                                  bool
		migration_bandwidth?:                  string
		scheduling_policy?:                    string
		serial_policy?:                        string
		comment?:                              string
		cpu_arch?:                             string
		external_network_providers?:           string
		fence_skip_if_sd_active?:              bool
		vm_reason?:                            bool
		fence_connectivity_threshold?:         string
		fence_skip_if_connectivity_broken?:    bool
		gluster_tuned_profile?:                string
		memory_policy?:                        string
		data_center?:                          string
		mac_pool?:                             string
		migration_auto_converge?:              string
	}
}

ovirt_host_pm :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_host_pm: {
		address?:         string
		password?:        string
		port?:            string
		state?:           string
		username?:        string
		encrypt_options?: bool
		name:             string
		options?:         string
		order?:           string
		type?:            string
	}
}

ovirt_storage_domain_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_storage_domain_info: {
		pattern?: string
	}
}

ovirt_vnic_profile :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_vnic_profile: {
		custom_properties?: string
		data_center:        string
		migratable?:        bool
		network_filter?:    string
		pass_through?:      string
		state?:             string
		description?:       string
		name:               string
		network:            string
		port_mirroring?:    bool
		qos?:               string
	}
}

ovirt_host :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_host: {
		activate?:                 bool
		check_upgrade?:            bool
		id?:                       string
		iscsi?:                    string
		kernel_params?:            string
		override_iptables?:        bool
		timeout?:                  string
		hosted_engine?:            string
		name:                      string
		password?:                 string
		power_management_enabled?: bool
		public_key?:               bool
		state?:                    string
		comment?:                  string
		force?:                    bool
		kdump_integration?:        string
		reboot_after_upgrade?:     bool
		spm_priority?:             string
		address?:                  string
		cluster?:                  string
		override_display?:         bool
		vgpu_placement?:           string
	}
}

ovirt_instance_type :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_instance_type: {
		cpu_mode?:                   string
		host?:                       string
		io_threads?:                 string
		memory_max?:                 string
		name?:                       string
		rng_period?:                 string
		boot_devices?:               string
		id?:                         string
		operating_system?:           string
		cpu_threads?:                string
		high_availability?:          bool
		high_availability_priority?: string
		state?:                      string
		watchdog?:                   string
		memory?:                     string
		rng_device?:                 string
		cpu_pinning?:                string
		description?:                string
		graphical_console?:          string
		placement_policy?:           string
		soundcard_enabled?:          bool
		virtio_scsi?:                bool
		cpu_cores?:                  string
		smartcard_enabled?:          bool
		ballooning_enabled?:         bool
		nics?:                       string
		rng_bytes?:                  string
		serial_console?:             bool
		cpu_sockets?:                string
		memory_guaranteed?:          string
		usb_support?:                bool
	}
}

ovirt_scheduling_policy_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_scheduling_policy_info: {
		id:    string
		name?: string
	}
}

ovirt_user :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_user: {
		name:       string
		namespace?: string
		state?:     string
		authz_name: string
	}
}

ovirt_external_provider :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_external_provider: {
		authentication_keys?: string
		name?:                string
		state?:               string
		type?:                string
		url?:                 string
		username?:            string
		authentication_url?:  string
		data_center?:         string
		description?:         string
		network_type?:        string
		password?:            string
		read_only?:           bool
		tenant_name?:         string
	}
}

ovirt_external_provider_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_external_provider_info: {
		name?: string
		type:  string
	}
}

ovirt_host_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_host_info: {
		all_content?:     bool
		cluster_version?: string
		pattern?:         string
	}
}

ovirt_datacenter_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_datacenter_info: {
		pattern?: string
	}
}

ovirt_permission :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_permission: {
		authz_name:   string
		object_id?:   string
		object_name?: string
		state?:       string
		user_name?:   string
		group_name?:  string
		namespace?:   string
		object_type?: string
		quota_name?:  string
		role?:        string
	}
}

ovirt_role :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_role: {
		description?:    string
		id?:             string
		name?:           string
		permits?:        string
		state?:          string
		administrative?: bool
	}
}

ovirt_vm_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_vm_info: {
		all_content?:    bool
		case_sensitive?: bool
		max?:            string
		next_run?:       bool
		pattern?:        string
	}
}

ovirt_affinity_group :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_affinity_group: {
		hosts?:          string
		vm_enforcing?:   bool
		host_enforcing?: bool
		description?:    string
		host_rule?:      string
		name:            string
		state?:          string
		vm_rule?:        string
		vms?:            string
		cluster?:        string
	}
}

ovirt_network :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_network: {
		clusters?:          string
		comment?:           string
		id?:                string
		vlan_tag?:          string
		vm_network?:        bool
		data_center?:       string
		description?:       string
		external_provider?: string
		label?:             string
		mtu?:               string
		name:               string
		state?:             string
	}
}

ovirt_nic_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_nic_info: {
		name?: string
		vm:    string
	}
}

ovirt_user_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_user_info: {
		pattern?: string
	}
}

ovirt_cluster_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_cluster_info: {
		pattern?: string
	}
}

ovirt_nic :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_nic: {
		linked?:      bool
		mac_address?: string
		network?:     string
		profile?:     string
		template?:    string
		id?:          string
		name:         string
		state?:       string
		vm?:          string
		interface?:   string
	}
}

ovirt_storage_domain :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_storage_domain: {
		glusterfs?:                     string
		posixfs?:                       string
		data_center?:                   string
		destroy?:                       bool
		managed_block_storage?:         string
		state?:                         string
		wipe_after_delete?:             bool
		backup?:                        bool
		iscsi?:                         string
		domain_function?:               string
		host?:                          string
		nfs?:                           string
		comment?:                       string
		critical_space_action_blocker?: string
		fcp?:                           string
		format?:                        bool
		id?:                            string
		localfs?:                       string
		name?:                          string
		warning_low_space?:             string
		description?:                   string
		discard_after_delete?:          bool
	}
}

ovirt_group_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_group_info: {
		pattern?: string
	}
}

ovirt_mac_pool :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_mac_pool: {
		allow_duplicates?: bool
		description?:      string
		id?:               string
		name:              string
		ranges?:           string
		state?:            string
	}
}

ovirt_network_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_network_info: {
		pattern?: string
	}
}

ovirt_permission_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_permission_info: {
		authz_name:  string
		group_name?: string
		namespace?:  string
		user_name?:  string
	}
}

ovirt_affinity_label :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_affinity_label: {
		hosts?:   string
		name:     string
		state?:   string
		vms?:     string
		cluster?: string
	}
}

ovirt_disk_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_disk_info: {
		pattern?: string
	}
}

ovirt_quota :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_quota: {
		storage_grace?:     string
		cluster_grace?:     string
		cluster_threshold?: string
		clusters?:          string
		description?:       string
		id?:                string
		name:               string
		state?:             string
		storages?:          string
		data_center:        string
		storage_threshold?: string
	}
}

ovirt_storage_connection :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_storage_connection: {
		force?:         bool
		storage?:       string
		nfs_version?:   string
		path?:          string
		state?:         string
		target?:        string
		type?:          string
		username?:      string
		vfs_type?:      string
		address?:       string
		id?:            string
		mount_options?: string
		nfs_timeout?:   string
		password?:      string
		port?:          string
		nfs_retrans?:   string
	}
}

ovirt_template_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_template_info: {
		pattern?: string
	}
}

ovirt_event :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_event: {
		custom_id?:      int
		host?:           string
		origin?:         string
		storage_domain?: string
		template?:       string
		user?:           string
		vm?:             string
		cluster?:        string
		data_center?:    string
		description?:    string
		id?:             string
		severity?:       string
		state?:          string
	}
}

ovirt_disk :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_disk: {
		bootable?:              bool
		name?:                  string
		state?:                 string
		wipe_after_delete?:     bool
		vm_id?:                 string
		vm_name?:               string
		force?:                 bool
		id?:                    string
		logical_unit?:          string
		openstack_volume_type?: string
		profile?:               string
		size?:                  string
		sparsify?:              bool
		description?:           string
		download_image_path?:   string
		host?:                  string
		activate?:              bool
		content_type?:          string
		interface?:             string
		storage_domains?:       string
		quota_id?:              string
		shareable?:             bool
		sparse?:                bool
		storage_domain?:        string
		image_provider?:        string
		upload_image_path?:     string
		format?:                string
	}
}

ovirt_host_storage_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	when?: string
	tags?: [...string]
	name?:     string
	register?: string
	ovirt_host_storage_info: {
		fcp?:   string
		host:   string
		iscsi?: string
	}
}
