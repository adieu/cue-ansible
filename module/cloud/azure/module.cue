package azure

azure_rm_automationaccount :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_automationaccount: {
		location?:      string
		name:           string
		resource_group: string
		state?:         string
	}
}

azure_rm_loadbalancer :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_loadbalancer: {
		probe_port?:                  string
		public_ip_address_name?:      string
		resource_group:               string
		state?:                       string
		inbound_nat_pools?:           string
		inbound_nat_rules?:           string
		natpool_frontend_port_end?:   string
		probe_fail_count?:            string
		load_distribution?:           string
		natpool_frontend_port_start?: string
		sku?:                         string
		frontend_ip_configurations?:  string
		frontend_port?:               string
		idle_timeout?:                string
		load_balancing_rules?:        string
		probe_interval?:              string
		probe_protocol?:              string
		probe_request_path?:          string
		backend_address_pools?:       string
		backend_port?:                string
		location?:                    string
		name:                         string
		natpool_backend_port?:        string
		natpool_protocol?:            string
		probes?:                      string
		protocol?:                    string
	}
}

azure_rm_manageddisk :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_manageddisk: {
		zone?:                 string
		attach_caching?:       string
		create_option?:        string
		disk_size_gb?:         string
		os_type?:              string
		storage_account_type?: string
		tags?:                 string
		location?:             string
		managed_by?:           string
		name:                  string
		resource_group:        string
		source_uri?:           string
		state?:                string
	}
}

azure_rm_virtualmachineextension_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualmachineextension_info: {
		tags?:                string
		virtual_machine_name: string
		name?:                string
		resource_group:       string
	}
}

azure_rm_webappslot :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_webappslot: {
		state?:                string
		frameworks?:           string
		resource_group:        string
		auto_swap_slot_name?:  string
		container_settings?:   string
		startup_file?:         string
		swap?:                 string
		webapp_name:           string
		app_settings?:         string
		configuration_source?: string
		deployment_source?:    string
		location?:             string
		name:                  string
		purge_app_settings?:   bool
		app_state?:            string
	}
}

azure_rm_acs :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_acs: {
		location?:              string
		orchestration_platform: string
		resource_group:         string
		state?:                 string
		diagnostics_profile:    bool
		linux_profile:          string
		name:                   string
		service_principal?:     string
		agent_pool_profiles:    string
		master_profile:         string
	}
}

azure_rm_azurefirewall :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_azurefirewall: {
		network_rule_collections?: [...]
		resource_group: string
		state?:         string
		application_rule_collections?: [...]
		ip_configurations?: [...]
		location?: string
		name:      string
		nat_rule_collections?: [...]
	}
}

azure_rm_deployment_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_deployment_info: {
		name?:          string
		resource_group: string
	}
}

azure_rm_devtestlabarmtemplate_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabarmtemplate_info: {
		artifact_source_name: string
		lab_name:             string
		name?:                string
		resource_group:       string
	}
}

azure_rm_devtestlabartifactsource :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabartifactsource: {
		lab_name:                  string
		resource_group:            string
		uri?:                      string
		arm_template_folder_path?: string
		display_name?:             string
		folder_path?:              string
		is_enabled?:               bool
		state?:                    string
		branch_ref?:               string
		name:                      string
		security_token?:           string
		source_type?:              string
	}
}

azure_rm_image :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_image: {
		name:           string
		os_type?:       string
		resource_group: string
		source:         _
		state?:         string
		data_disk_sources?: [...]
		location?: string
	}
}

azure_rm_iotdevice_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_iotdevice_info: {
		hub_policy_key:  string
		hub_policy_name: string
		module_id?:      string
		name?:           string
		query?:          string
		top?:            int
		hub:             string
	}
}

azure_rm_keyvault :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_keyvault: {
		location?:                        string
		recover_mode?:                    bool
		sku?:                             string
		access_policies?:                 string
		enable_soft_delete?:              bool
		enabled_for_deployment?:          bool
		enabled_for_template_deployment?: bool
		vault_tenant?:                    string
		enabled_for_disk_encryption?:     bool
		resource_group:                   string
		state?:                           string
		vault_name:                       string
	}
}

azure_rm_resourcegroup_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_resourcegroup_info: {
		name?:           string
		tags?:           string
		list_resources?: string
	}
}

azure_rm_virtualmachinescalesetinstance_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualmachinescalesetinstance_info: {
		tags?:          string
		vmss_name:      string
		instance_id?:   string
		resource_group: string
	}
}

azure_rm_keyvault_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_keyvault_info: {
		tags?:           string
		name?:           string
		resource_group?: string
	}
}

azure_rm_rediscache_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_rediscache_info: {
		tags?:               string
		name?:               string
		resource_group:      string
		return_access_keys?: bool
	}
}

azure_rm_route :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_route: {
		state?:               string
		address_prefix?:      string
		name:                 string
		next_hop_ip_address?: string
		next_hop_type?:       string
		resource_group:       string
		route_table_name:     string
	}
}

azure_rm_iotdevice :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_iotdevice: {
		hub_policy_name: string
		primary_key?:    string
		secondary_key?:  string
		state?:          string
		status?:         bool
		auth_method?:    string
		edge_enabled?:   bool
		hub_policy_key:  string
		name:            string
		twin_tags?: {...}
		desired?: {...}
		hub: string
	}
}

azure_rm_mariadbfirewallrule :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mariadbfirewallrule: {
		end_ip_address?:   string
		name:              string
		resource_group:    string
		server_name:       string
		start_ip_address?: string
		state?:            string
	}
}

azure_rm_sqlserver_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_sqlserver_info: {
		resource_group: string
		server_name?:   string
	}
}

azure_rm_aks_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_aks_info: {
		name?:            string
		resource_group?:  string
		show_kubeconfig?: string
		tags?:            string
	}
}

azure_rm_containerregistry :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_containerregistry: {
		resource_group:      string
		sku?:                string
		state?:              string
		admin_user_enabled?: bool
		location?:           string
		name:                string
	}
}

azure_rm_iotdevicemodule :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_iotdevicemodule: {
		secondary_key?:  string
		hub_policy_key:  string
		hub_policy_name: string
		device:          string
		hub:             string
		name:            string
		primary_key?:    string
		state?:          string
		twin_tags?: {...}
		auth_method?: string
		desired?: {...}
	}
}

azure_rm_mysqlconfiguration :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mysqlconfiguration: {
		name:           string
		resource_group: string
		server_name:    string
		state?:         string
		value?:         string
	}
}

azure_rm_mysqlserver_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mysqlserver_info: {
		tags?: [...]
		name?:          string
		resource_group: string
	}
}

azure_rm_rediscachefirewallrule :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_rediscachefirewallrule: {
		start_ip_address?: string
		state?:            string
		cache_name:        string
		end_ip_address?:   string
		name:              string
		resource_group:    string
	}
}

azure_rm_virtualnetworkgateway :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualnetworkgateway: {
		ip_configurations?: string
		name:               string
		sku?:               string
		state?:             string
		vpn_type?:          string
		bgp_settings?:      string
		enable_bgp?:        string
		gateway_type?:      string
		location?:          string
		resource_group:     string
		virtual_network:    string
	}
}

azure_rm_autoscale_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_autoscale_info: {
		name?:          string
		resource_group: string
		tags?:          string
	}
}

azure_rm_devtestlabvirtualnetwork :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabvirtualnetwork: {
		resource_group: string
		state?:         string
		description?:   string
		lab_name:       string
		location?:      string
		name:           string
	}
}

azure_rm_dnsrecordset :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_dnsrecordset: {
		state?:         string
		time_to_live?:  string
		zone_name:      string
		record_mode?:   string
		record_type:    string
		records?:       string
		relative_name:  string
		resource_group: string
	}
}

azure_rm_loadbalancer_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_loadbalancer_info: {
		resource_group?: string
		tags?:           string
		name?:           string
	}
}

azure_rm_postgresqldatabase_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_postgresqldatabase_info: {
		name?:          string
		resource_group: string
		server_name:    string
	}
}

azure_rm_servicebustopicsubscription :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_servicebustopicsubscription: {
		forward_to?:                                     string
		name:                                            string
		auto_delete_on_idle_in_seconds?:                 int
		max_delivery_count?:                             int
		requires_session?:                               bool
		status?:                                         string
		topic:                                           string
		duplicate_detection_time_in_seconds?:            int
		resource_group:                                  string
		namespace:                                       string
		state?:                                          string
		dead_lettering_on_filter_evaluation_exceptions?: bool
		dead_lettering_on_message_expiration?:           bool
		default_message_time_to_live_seconds?:           int
		enable_batched_operations?:                      bool
		forward_dead_lettered_messages_to?:              string
		lock_duration_in_seconds?:                       int
	}
}

azure_rm_sqldatabase_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_sqldatabase_info: {
		name?:              string
		resource_group:     string
		server_name:        string
		tags?:              string
		elastic_pool_name?: string
	}
}

azure_rm_manageddisk_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_manageddisk_info: {
		name?:           string
		resource_group?: string
		tags?: [...]
	}
}

azure_rm_roleassignment :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_roleassignment: {
		assignee_object_id?: string
		name?:               string
		role_definition_id?: string
		scope?:              string
		state?:              string
	}
}

azure_rm_subnet :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_subnet: {
		name:            string
		resource_group:  string
		route_table?:    string
		security_group?: string
		service_endpoints?: [...]
		state?:               string
		virtual_network_name: string
		address_prefix_cidr?: string
	}
}

azure_rm_virtualmachinescalesetinstance :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualmachinescalesetinstance: {
		latest_model?:  bool
		power_state:    string
		resource_group: string
		state?:         string
		vmss_name:      string
		instance_id:    string
	}
}

azure_rm_deployment :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_deployment: {
		parameters?: {...}
		state?: string
		template?: {...}
		template_link?:                      string
		wait_for_deployment_polling_period?: string
		deployment_mode?:                    string
		name?:                               string
		parameters_link?:                    string
		resource_group:                      string
		wait_for_deployment_completion?:     bool
		location?:                           string
	}
}

azure_rm_gallery :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_gallery: {
		description?:   string
		location?:      string
		name:           string
		resource_group: string
		state?:         string
	}
}

azure_rm_mysqlconfiguration_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mysqlconfiguration_info: {
		name?:          string
		resource_group: string
		server_name:    string
	}
}

azure_rm_routetable_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_routetable_info: {
		tags?:           string
		name?:           string
		resource_group?: string
	}
}

azure_rm_trafficmanagerendpoint_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_trafficmanagerendpoint_info: {
		name?:          string
		profile_name:   string
		resource_group: string
		type?:          string
	}
}

azure_rm_devtestlabpolicy_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabpolicy_info: {
		lab_name:        string
		name?:           string
		policy_set_name: string
		resource_group:  string
		tags?: [...]
	}
}

azure_rm_iothub_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_iothub_info: {
		list_consumer_groups?: bool
		name?:                 string
		show_stats?:           bool
		list_keys?:            bool
		resource_group?:       string
		show_endpoint_health?: bool
		show_quota_metrics?:   bool
		tags?: [...]
		test_route_message?: string
	}
}

azure_rm_mariadbserver :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mariadbserver: {
		sku?:            string
		state?:          string
		storage_mb?:     int
		version?:        string
		admin_username?: string
		enforce_ssl?:    bool
		resource_group:  string
		name:            string
		admin_password?: string
		create_mode?:    string
		location?:       string
	}
}

azure_rm_sqldatabase :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_sqldatabase: {
		recovery_services_recovery_point_resource_id?: string
		state?:                                        string
		zone_redundant?:                               bool
		location?:                                     string
		force_update?:                                 bool
		read_scale?:                                   bool
		resource_group:                                string
		restore_point_in_time?:                        string
		edition?:                                      string
		name:                                          string
		sample_name?:                                  string
		source_database_deletion_date?:                string
		source_database_id?:                           string
		max_size_bytes?:                               string
		create_mode?:                                  string
		elastic_pool_name?:                            string
		server_name:                                   string
		collation?:                                    string
	}
}

azure_rm_sqlserver :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_sqlserver: {
		identity?:       string
		location?:       string
		name:            string
		resource_group:  string
		state?:          string
		version?:        string
		admin_password?: string
		admin_username?: string
	}
}

azure_rm_webapp_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_webapp_info: {
		name?:                   string
		resource_group?:         string
		return_publish_profile?: bool
		tags?:                   string
	}
}

azure_rm_azurefirewall_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_azurefirewall_info: {
		name?:           string
		resource_group?: string
	}
}

azure_rm_cdnprofile :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_cdnprofile: {
		location?:      string
		name:           string
		resource_group: string
		sku?:           string
		state?:         string
	}
}

azure_rm_devtestlabpolicy :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabpolicy: {
		resource_group:  string
		state?:          string
		threshold?:      _
		description?:    string
		fact_name?:      string
		lab_name:        string
		name:            string
		policy_set_name: string
	}
}

azure_rm_devtestlabvirtualmachine :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabvirtualmachine: {
		notes?:                      string
		os_type?:                    string
		storage_type?:               string
		vm_size?:                    string
		lab_subnet?:                 string
		image?:                      string
		lab_name:                    string
		name:                        string
		allow_claim?:                string
		resource_group:              string
		state?:                      string
		user_name?:                  string
		expiration_date?:            string
		disallow_public_ip_address?: string
		password?:                   string
		ssh_key?:                    string
		artifacts?: [...]
	}
}

azure_rm_iothubconsumergroup :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_iothubconsumergroup: {
		event_hub?:     string
		hub:            string
		name?:          string
		resource_group: string
		state?:         string
	}
}

azure_rm_mysqlfirewallrule_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mysqlfirewallrule_info: {
		resource_group: string
		server_name:    string
		name?:          string
	}
}

azure_rm_postgresqlserver_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_postgresqlserver_info: {
		name?:          string
		resource_group: string
		tags?: [...]
	}
}

azure_rm_resource_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_resource_info: {
		resource_type?:  string
		subresource?:    string
		url?:            string
		api_version?:    string
		provider?:       string
		resource_group?: string
		resource_name?:  string
	}
}

azure_rm_trafficmanagerprofile_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_trafficmanagerprofile_info: {
		name?:           string
		resource_group?: string
		tags?:           string
	}
}

azure_rm_virtualmachine :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualmachine: {
		storage_account_name?:           string
		virtual_network_name?:           string
		virtual_network_resource_group?: string
		storage_blob_name?:              string
		license_type?:                   string
		network_interface_names?: [...]
		os_disk_name?: string
		plan?: {...}
		accept_terms?:   bool
		admin_username?: string
		vm_size?:        string
		zones?: [...]
		os_disk_caching?:             string
		os_type?:                     string
		ssh_password_enabled?:        bool
		subnet_name?:                 string
		allocated?:                   bool
		availability_set?:            string
		data_disks?:                  string
		location?:                    string
		image:                        string
		managed_disk_type?:           string
		os_disk_size_gb?:             string
		winrm?:                       string
		public_ip_allocation_method?: string
		short_hostname?:              string
		ssh_public_keys?:             string
		storage_container_name?:      string
		admin_password?:              string
		boot_diagnostics?:            string
		custom_data?:                 string
		open_ports?:                  string
		vm_identity?:                 string
		generalized?:                 bool
		remove_on_absent?: [...]
		resource_group: string
		restarted?:     bool
		name:           string
		started?:       bool
		state?:         string
	}
}

azure_rm_virtualnetwork :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualnetwork: {
		address_prefixes_cidr?:  string
		dns_servers?:            string
		location?:               string
		name:                    string
		purge_address_prefixes?: bool
		purge_dns_servers?:      bool
		resource_group:          string
		state?:                  string
	}
}

azure_rm_aks :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_aks: {
		agent_pool_profiles?: string
		linux_profile?:       string
		location?:            string
		service_principal?:   string
		state?:               string
		resource_group:       string
		aad_profile?:         string
		addon?: {...}
		dns_prefix?:         string
		enable_rbac?:        bool
		kubernetes_version?: string
		name:                string
		network_profile?:    string
	}
}

azure_rm_postgresqldatabase :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_postgresqldatabase: {
		force_update?:  bool
		name:           string
		resource_group: string
		server_name:    string
		state?:         string
		charset?:       string
		collation?:     string
	}
}

azure_rm_securitygroup :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_securitygroup: {
		purge_default_rules?: bool
		purge_rules?:         bool
		resource_group:       string
		rules?:               string
		state?:               string
		default_rules?:       string
		location?:            string
		name?:                string
	}
}

azure_rm_webapp :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_webapp: {
		frameworks?:                      string
		scm_type?:                        string
		skip_custom_domain_verification?: bool
		purge_app_settings?:              bool
		ttl_in_seconds?:                  string
		container_settings?:              string
		deployment_source?:               string
		dns_registration?:                bool
		https_only?:                      bool
		plan?:                            string
		app_settings?:                    string
		location?:                        string
		state?:                           string
		app_state?:                       string
		client_affinity_enabled?:         bool
		name:                             string
		resource_group:                   string
		startup_file?:                    string
	}
}

azure_rm_appserviceplan_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_appserviceplan_info: {
		name?:           string
		resource_group?: string
		tags?:           string
	}
}

azure_rm_devtestlabenvironment :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabenvironment: {
		resource_group: string
		state?:         string
		user_name:      string
		deployment_parameters?: [...]
		deployment_template?: string
		lab_name:             string
		location?:            string
		name:                 string
	}
}

azure_rm_galleryimageversion_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_galleryimageversion_info: {
		gallery_name:       string
		name?:              string
		resource_group:     string
		gallery_image_name: string
	}
}

azure_rm_devtestlab_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlab_info: {
		tags?: [...]
		name?:           string
		resource_group?: string
	}
}

azure_rm_dnszone :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_dnszone: {
		resource_group: string
		state?:         string
		type?:          string
		name:           string
		registration_virtual_networks?: [...]
		resolution_virtual_networks?: [...]
	}
}

azure_rm_loganalyticsworkspace :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_loganalyticsworkspace: {
		intelligence_packs?: {...}
		location?:          string
		name:               string
		resource_group:     string
		retention_in_days?: string
		sku?:               string
		state?:             string
	}
}

azure_rm_mariadbconfiguration :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mariadbconfiguration: {
		resource_group: string
		server_name:    string
		state?:         string
		value?:         string
		name:           string
	}
}

azure_rm_mariadbserver_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mariadbserver_info: {
		name?:          string
		resource_group: string
		tags?: [...]
	}
}

azure_rm_appserviceplan :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_appserviceplan: {
		is_linux?:          bool
		location?:          string
		name:               string
		number_of_workers?: string
		resource_group:     string
		sku?:               string
		state?:             string
	}
}

azure_rm_devtestlabartifactsource_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabartifactsource_info: {
		lab_name:       string
		name?:          string
		resource_group: string
		tags?: [...]
	}
}

azure_rm_dnszone_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_dnszone_info: {
		name?:           string
		resource_group?: string
		tags?:           string
	}
}

azure_rm_keyvaultkey :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_keyvaultkey: {
		state?:        string
		byok_file?:    string
		key_name:      string
		keyvault_uri:  string
		pem_file?:     string
		pem_password?: string
	}
}

azure_rm_mariadbdatabase :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mariadbdatabase: {
		name:           string
		resource_group: string
		server_name:    string
		state?:         string
		charset?:       string
		collation?:     string
		force_update?:  bool
	}
}

azure_rm_resource :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_resource: {
		resource_type?:  string
		url?:            string
		body?:           string
		resource_group?: string
		resource_name?:  string
		status_code?: [...]
		idempotency?:      bool
		method?:           string
		subresource?:      string
		api_version?:      string
		polling_interval?: int
		polling_timeout?:  int
		provider?:         string
		state?:            string
	}
}

azure_rm_devtestlabcustomimage :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabcustomimage: {
		author?:           string
		description?:      string
		linux_os_state?:   string
		name:              string
		resource_group:    string
		state?:            string
		lab_name:          string
		source_vm?:        string
		windows_os_state?: string
	}
}

azure_rm_devtestlabvirtualnetwork_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabvirtualnetwork_info: {
		resource_group: string
		lab_name:       string
		name?:          string
	}
}

azure_rm_publicipaddress :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_publicipaddress: {
		resource_group:     string
		sku?:               string
		state?:             string
		allocation_method?: string
		domain_name?:       string
		idle_timeout?:      int
		location?:          string
		name:               string
		version?:           string
		ip_tags?:           string
	}
}

azure_rm_servicebus_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_servicebus_info: {
		topic?:             string
		type?:              string
		name?:              string
		namespace?:         string
		resource_group?:    string
		show_sas_policies?: bool
		tags?:              string
	}
}

azure_rm_sqlfirewallrule_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_sqlfirewallrule_info: {
		name?:          string
		resource_group: string
		server_name:    string
	}
}

azure_rm_availabilityset_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_availabilityset_info: {
		name?:           string
		resource_group?: string
		tags?:           string
	}
}

azure_rm_loganalyticsworkspace_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_loganalyticsworkspace_info: {
		show_shared_keys?:        string
		show_usages?:             string
		tags?:                    string
		name?:                    string
		resource_group:           string
		show_intelligence_packs?: string
		show_management_groups?:  string
	}
}

azure_rm_mariadbdatabase_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mariadbdatabase_info: {
		resource_group: string
		server_name:    string
		name?:          string
	}
}

azure_rm_subnet_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_subnet_info: {
		resource_group:       string
		virtual_network_name: string
		name?:                string
	}
}

azure_rm_virtualmachine_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualmachine_info: {
		name?:           string
		resource_group?: string
		tags?:           string
	}
}

azure_rm_containerinstance :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_containerinstance: {
		ip_address?:            string
		registry_login_server?: string
		registry_password?:     string
		restart_policy?:        string
		registry_username?:     string
		resource_group:         string
		containers?:            string
		dns_name_label?:        string
		force_update?:          bool
		location?:              string
		name:                   string
		os_type?:               string
		ports?: [...]
		state?: string
	}
}

azure_rm_devtestlab :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlab: {
		premium_data_disks?: bool
		resource_group:      string
		state?:              string
		storage_type?:       string
		location?:           string
		name:                string
	}
}

azure_rm_devtestlabcustomimage_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabcustomimage_info: {
		lab_name:       string
		name?:          string
		resource_group: string
		tags?: [...]
	}
}

azure_rm_dnsrecordset_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_dnsrecordset_info: {
		record_type?:    string
		relative_name?:  string
		resource_group?: string
		top?:            int
		zone_name?:      string
	}
}

azure_rm_mariadbfirewallrule_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mariadbfirewallrule_info: {
		name?:          string
		resource_group: string
		server_name:    string
	}
}

azure_rm_postgresqlfirewallrule_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_postgresqlfirewallrule_info: {
		name?:          string
		resource_group: string
		server_name:    string
	}
}

azure_rm_snapshot :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_snapshot: {
		creation_data?: {...}
		location?:      string
		name?:          string
		os_type?:       string
		resource_group: string
		sku?: {...}
		state?: string
	}
}

azure_rm_virtualmachinescalesetextension :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualmachinescalesetextension: {
		protected_settings?:         string
		settings?:                   string
		state?:                      string
		type?:                       string
		type_handler_version?:       string
		auto_upgrade_minor_version?: bool
		location?:                   string
		name?:                       string
		vmss_name:                   string
		publisher?:                  string
		resource_group:              string
	}
}

azure_rm_cdnprofile_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_cdnprofile_info: {
		name?:           string
		resource_group?: string
		tags?:           string
	}
}

azure_rm_keyvaultsecret :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_keyvaultsecret: {
		secret_value?: string
		state?:        string
		keyvault_uri:  string
		secret_name:   string
	}
}

azure_rm_trafficmanagerprofile :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_trafficmanagerprofile: {
		state?:          string
		dns_config?:     string
		location?:       string
		monitor_config?: string
		name:            string
		profile_status?: string
		resource_group:  string
		routing_method?: string
	}
}

azure_rm_virtualmachineextension :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualmachineextension: {
		virtual_machine_extension_type?: string
		auto_upgrade_minor_version?:     bool
		location?:                       string
		protected_settings?:             string
		state?:                          string
		type_handler_version?:           string
		name:                            string
		publisher?:                      string
		resource_group:                  string
		settings?:                       string
		virtual_machine_name?:           string
	}
}

azure_rm_virtualnetwork_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualnetwork_info: {
		resource_group?: string
		tags?:           string
		name?:           string
	}
}

azure_rm_applicationsecuritygroup_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_applicationsecuritygroup_info: {
		name?:           string
		resource_group?: string
		tags?:           string
	}
}

azure_rm_cosmosdbaccount_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_cosmosdbaccount_info: {
		retrieve_keys?:               string
		tags?:                        string
		name?:                        string
		resource_group?:              string
		retrieve_connection_strings?: bool
	}
}

azure_rm_securitygroup_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_securitygroup_info: {
		name?:          string
		resource_group: string
		tags?:          string
	}
}

azure_rm_batchaccount :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_batchaccount: {
		auto_storage_account?: string
		key_vault?:            string
		location?:             string
		name:                  string
		pool_allocation_mode?: string
		resource_group:        string
		state?:                string
	}
}

azure_rm_devtestlabschedule :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabschedule: {
		time?:          string
		time_zone_id?:  string
		lab_name:       string
		name:           string
		resource_group: string
		state?:         string
	}
}

azure_rm_postgresqlserver :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_postgresqlserver: {
		name:            string
		state?:          string
		version?:        string
		create_mode?:    string
		admin_username?: string
		enforce_ssl?:    bool
		location?:       string
		resource_group:  string
		sku?:            string
		storage_mb?:     int
		admin_password?: string
	}
}

azure_rm_routetable :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_routetable: {
		disable_bgp_route_propagation?: bool
		location?:                      string
		name:                           string
		resource_group:                 string
		state?:                         string
	}
}

azure_rm_virtualmachinescalesetextension_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualmachinescalesetextension_info: {
		name?:          string
		resource_group: string
		vmss_name:      string
	}
}

azure_rm_keyvaultkey_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_keyvaultkey_info: {
		name?:             string
		show_deleted_key?: bool
		tags?: [...]
		vault_uri: string
		version?:  string
	}
}

azure_rm_mysqlserver :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mysqlserver: {
		sku?:            string
		storage_mb?:     int
		admin_password?: string
		create_mode?:    string
		location?:       string
		name:            string
		version?:        string
		admin_username?: string
		enforce_ssl?:    bool
		resource_group:  string
		state?:          string
	}
}

azure_rm_servicebusqueue :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_servicebusqueue: {
		forward_to?:                           string
		max_delivery_count?:                   int
		requires_session?:                     bool
		state?:                                string
		namespace:                             string
		requires_duplicate_detection?:         bool
		auto_delete_on_idle_in_seconds?:       int
		duplicate_detection_time_in_seconds?:  int
		enable_express?:                       bool
		enable_partitioning?:                  bool
		max_size_in_mb?:                       int
		default_message_time_to_live_seconds?: int
		enable_batched_operations?:            bool
		lock_duration_in_seconds?:             int
		resource_group:                        string
		dead_lettering_on_message_expiration?: bool
		forward_dead_lettered_messages_to?:    string
		name:                                  string
		status?:                               string
	}
}

azure_rm_containerinstance_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_containerinstance_info: {
		name?:          string
		resource_group: string
		tags?:          string
	}
}

azure_rm_functionapp :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_functionapp: {
		resource_group:      string
		state?:              string
		storage_account:     string
		app_settings?:       string
		container_settings?: string
		location?:           string
		name:                string
		plan?:               string
	}
}

azure_rm_postgresqlfirewallrule :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_postgresqlfirewallrule: {
		end_ip_address?:   string
		name:              string
		resource_group:    string
		server_name:       string
		start_ip_address?: string
		state?:            string
	}
}

azure_rm_servicebustopic :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_servicebustopic: {
		default_message_time_to_live_seconds?: int
		enable_express?:                       bool
		support_ordering?:                     bool
		duplicate_detection_time_in_seconds?:  int
		enable_batched_operations?:            bool
		name:                                  string
		requires_duplicate_detection?:         bool
		resource_group:                        string
		auto_delete_on_idle_in_seconds?:       int
		enable_partitioning?:                  bool
		max_size_in_mb?:                       int
		namespace:                             string
		status?:                               string
		state?:                                string
	}
}

azure_rm_storageaccount_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_storageaccount_info: {
		name?:                   string
		resource_group?:         string
		show_blob_cors?:         bool
		show_connection_string?: bool
		tags?:                   string
	}
}

azure_rm_aksversion_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_aksversion_info: {
		location: string
		version?: string
	}
}

azure_rm_automationaccount_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_automationaccount_info: {
		list_keys?:       bool
		list_statistics?: bool
		list_usages?:     bool
		name?:            string
		resource_group:   string
		tags?: [...]
	}
}

azure_rm_mariadbconfiguration_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mariadbconfiguration_info: {
		name?:          string
		resource_group: string
		server_name:    string
	}
}

azure_rm_mysqldatabase :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mysqldatabase: {
		name:           string
		resource_group: string
		server_name:    string
		state?:         string
		charset?:       string
		collation?:     string
		force_update?:  bool
	}
}

azure_rm_mysqldatabase_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mysqldatabase_info: {
		name?:          string
		resource_group: string
		server_name:    string
	}
}

azure_rm_appgateway :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_appgateway: {
		backend_http_settings_collection?: string
		location?:                         string
		frontend_ip_configurations?:       string
		ssl_certificates?:                 string
		state?:                            string
		frontend_ports?:                   string
		name:                              string
		resource_group:                    string
		http_listeners?:                   string
		probes?:                           string
		redirect_configurations?:          string
		request_routing_rules?:            string
		sku?:                              string
		authentication_certificates?:      string
		backend_address_pools?:            string
		gateway_ip_configurations?:        string
		ssl_policy?:                       string
	}
}

azure_rm_autoscale :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_autoscale: {
		profiles?:      string
		resource_group: string
		state?:         string
		target?:        string
		enabled?:       bool
		location?:      string
		name:           string
		notifications?: string
	}
}

azure_rm_devtestlabartifact_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabartifact_info: {
		artifact_source_name: string
		lab_name:             string
		name?:                string
		resource_group:       string
	}
}

azure_rm_devtestlabenvironment_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabenvironment_info: {
		user_name:      string
		lab_name:       string
		name?:          string
		resource_group: string
		tags?: [...]
	}
}

azure_rm_functionapp_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_functionapp_info: {
		name?:           string
		resource_group?: string
		tags?:           string
	}
}

azure_rm_resourcegroup :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_resourcegroup: {
		location?:              string
		name:                   string
		state?:                 string
		force_delete_nonempty?: bool
	}
}

azure_rm_cdnendpoint :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_cdnendpoint: {
		is_compression_enabled?:        bool
		is_http_allowed?:               bool
		is_https_allowed?:              bool
		purge?:                         bool
		resource_group:                 string
		location?:                      string
		origins:                        string
		origin_host_header?:            string
		origin_path?:                   string
		profile_name:                   string
		query_string_caching_behavior?: string
		started?:                       bool
		content_types_to_compress?: [...]
		name: string
		purge_content_paths?: [...]
		state?: string
	}
}

azure_rm_cdnendpoint_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_cdnendpoint_info: {
		name?:          string
		profile_name:   string
		resource_group: string
		tags?:          string
	}
}

azure_rm_containerregistry_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_containerregistry_info: {
		name?:                 string
		resource_group:        string
		retrieve_credentials?: bool
		tags?:                 string
	}
}

azure_rm_image_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_image_info: {
		name?:           string
		resource_group?: string
		tags?:           string
	}
}

azure_rm_iothub :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_iothub: {
		enable_file_upload_notifications?: bool
		name:                              string
		sku?:                              string
		unit?:                             int
		routing_endpoints?: [...]
		state?: string
		event_endpoint?: {...}
		ip_filters?: [...]
		location?:      string
		resource_group: string
		routes?: [...]
	}
}

azure_rm_lock_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_lock_info: {
		managed_resource_id?: string
		name:                 string
		resource_group?:      string
	}
}

azure_rm_roledefinition_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_roledefinition_info: {
		id?:        string
		role_name?: string
		scope:      string
		type?:      string
	}
}

azure_rm_devtestlabschedule_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabschedule_info: {
		name?:          string
		resource_group: string
		tags?: [...]
		lab_name: string
	}
}

azure_rm_networkinterface :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_networkinterface: {
		create_with_security_group?:  bool
		name:                         string
		open_ports?:                  string
		public_ip_allocation_method?: string
		state?:                       string
		dns_servers?: [...]
		private_ip_allocation_method?:  string
		security_group?:                string
		subnet_name:                    string
		virtual_network:                string
		os_type?:                       string
		resource_group:                 string
		public_ip?:                     bool
		public_ip_address_name?:        string
		enable_accelerated_networking?: bool
		enable_ip_forwarding?:          bool
		ip_configurations?:             string
		location?:                      string
		private_ip_address?:            string
	}
}

azure_rm_rediscache :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_rediscache: {
		enable_non_ssl_port?:             bool
		maxmemory_policy?:                string
		maxmemory_reserved?:              string
		reboot?:                          string
		shard_count?:                     int
		location?:                        string
		static_ip?:                       string
		wait_for_provisioning?:           bool
		maxfragmentationmemory_reserved?: string
		name:                             string
		notify_keyspace_events?:          string
		state?:                           string
		subnet?:                          string
		tenant_settings?: {...}
		regenerate_key?: string
		resource_group:  string
		sku?:            string
	}
}

azure_rm_trafficmanagerendpoint :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_trafficmanagerendpoint: {
		resource_group:       string
		state?:               string
		target?:              string
		target_resource_id?:  string
		type:                 string
		enabled?:             bool
		priority?:            int
		min_child_endpoints?: int
		name:                 string
		profile_name:         string
		weight?:              int
		geo_mapping?: [...]
		location?: string
	}
}

azure_rm_hdinsightcluster :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_hdinsightcluster: {
		resource_group: string
		state?:         string
		tier?:          string
		compute_profile_roles?: [...]
		cluster_version?: string
		location?:        string
		name:             string
		os_type?:         string
		storage_accounts?: [...]
		cluster_definition?: string
	}
}

azure_rm_lock :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_lock: {
		managed_resource_id?: string
		name:                 string
		resource_group?:      string
		state?:               string
		level?:               string
	}
}

azure_rm_virtualnetworkpeering_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualnetworkpeering_info: {
		name?:           string
		resource_group:  string
		virtual_network: string
	}
}

azure_rm_hdinsightcluster_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_hdinsightcluster_info: {
		name?:           string
		resource_group?: string
		tags?:           string
	}
}

azure_rm_mysqlfirewallrule :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_mysqlfirewallrule: {
		start_ip_address: string
		state?:           string
		end_ip_address:   string
		name:             string
		resource_group:   string
		server_name:      string
	}
}

azure_rm_publicipaddress_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_publicipaddress_info: {
		name?:           string
		resource_group?: string
		tags?:           string
	}
}

azure_rm_availabilityset :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_availabilityset: {
		location?:                     string
		name:                          string
		platform_fault_domain_count?:  int
		platform_update_domain_count?: int
		resource_group:                string
		sku?:                          string
		state?:                        string
	}
}

azure_rm_gallery_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_gallery_info: {
		name?:           string
		resource_group?: string
	}
}

azure_rm_networkinterface_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_networkinterface_info: {
		name?:           string
		resource_group?: string
		tags?:           string
	}
}

azure_rm_roledefinition :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_roledefinition: {
		state?:             string
		assignable_scopes?: string
		description?:       string
		name:               string
		permissions?:       string
		scope?:             string
	}
}

azure_rm_servicebus :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_servicebus: {
		name:           string
		resource_group: string
		sku?:           string
		state?:         string
		location?:      string
	}
}

azure_rm_virtualmachinescaleset :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualmachinescaleset: {
		os_type?:              string
		security_group?:       string
		upgrade_policy?:       string
		admin_password?:       string
		managed_disk_type?:    string
		remove_on_absent?:     string
		ssh_password_enabled?: bool
		application_gateway?:  string
		overprovision?:        bool
		custom_data?:          string
		resource_group:        string
		state?:                string
		tier?:                 string
		zones?: [...]
		image:                           string
		location?:                       string
		os_disk_caching?:                string
		short_hostname?:                 string
		subnet_name?:                    string
		capacity?:                       string
		name:                            string
		ssh_public_keys?:                string
		virtual_network_name?:           string
		enable_accelerated_networking?:  bool
		single_placement_group?:         bool
		vm_size?:                        string
		data_disks?:                     string
		load_balancer?:                  string
		admin_username?:                 string
		virtual_network_resource_group?: string
	}
}

azure_rm_virtualmachinescaleset_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualmachinescaleset_info: {
		format?:         string
		name?:           string
		resource_group?: string
		tags?:           string
	}
}

azure_rm_applicationsecuritygroup :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_applicationsecuritygroup: {
		resource_group: string
		state?:         string
		location?:      string
		name:           string
	}
}

azure_rm_devtestlabvirtualmachine_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_devtestlabvirtualmachine_info: {
		resource_group: string
		tags?: [...]
		lab_name: string
		name?:    string
	}
}

azure_rm_galleryimage :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_galleryimage: {
		description?:           string
		release_note_uri?:      string
		eula?:                  string
		privacy_statement_uri?: string
		identifier: {...}
		name:     string
		os_state: string
		purchase_plan?: {...}
		disallowed?: {...}
		gallery_name: string
		os_type:      string
		recommended?: {...}
		resource_group:    string
		state?:            string
		end_of_life_date?: string
		location?:         string
	}
}

azure_rm_storageaccount :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_storageaccount: {
		account_type?: string
		blob_cors?: [...]
		force_delete_nonempty?: bool
		kind?:                  string
		location?:              string
		access_tier?:           string
		custom_domain?:         string
		https_only?:            bool
		name?:                  string
		resource_group:         string
		state?:                 string
	}
}

azure_rm_monitorlogprofile :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_monitorlogprofile: {
		locations?: [...]
		name: string
		retention_policy?: {...}
		service_bus_rule_id?: string
		state?:               string
		storage_account?:     _
		categories?: [...]
		location?: string
	}
}

azure_rm_postgresqlconfiguration :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_postgresqlconfiguration: {
		name:           string
		resource_group: string
		server_name:    string
		state?:         string
		value?:         string
	}
}

azure_rm_postgresqlconfiguration_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_postgresqlconfiguration_info: {
		resource_group: string
		server_name:    string
		name?:          string
	}
}

azure_rm_roleassignment_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_roleassignment_info: {
		assignee?:           string
		name?:               string
		role_definition_id?: string
		scope?:              string
	}
}

azure_rm_virtualnetworkpeering :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualnetworkpeering: {
		name:                          string
		remote_virtual_network?:       string
		use_remote_gateways?:          bool
		virtual_network:               string
		allow_forwarded_traffic?:      bool
		allow_gateway_transit?:        bool
		allow_virtual_network_access?: bool
		resource_group:                string
		state?:                        string
	}
}

azure_rm_cosmosdbaccount :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_cosmosdbaccount: {
		consistency_policy?:                string
		database_account_offer_type?:       string
		ip_range_filter?:                   string
		enable_gremlin?:                    bool
		is_virtual_network_filter_enabled?: bool
		resource_group:                     string
		virtual_network_rules?: [...]
		enable_automatic_failover?: bool
		enable_cassandra?:          bool
		geo_rep_locations?: [...]
		kind?:                            string
		name:                             string
		enable_multiple_write_locations?: bool
		enable_table?:                    bool
		location?:                        string
		state?:                           string
	}
}

azure_rm_galleryimage_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_galleryimage_info: {
		resource_group: string
		gallery_name:   string
		name?:          string
	}
}

azure_rm_galleryimageversion :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_galleryimageversion: {
		publishing_profile: {...}
		resource_group:     string
		state?:             string
		gallery_image_name: string
		gallery_name:       string
		location?:          string
		name:               string
	}
}

azure_rm_servicebussaspolicy :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_servicebussaspolicy: {
		resource_group:            string
		rights:                    string
		state?:                    string
		topic?:                    string
		name:                      string
		queue?:                    string
		regenerate_primary_key?:   bool
		regenerate_secondary_key?: bool
		namespace:                 string
	}
}

azure_rm_sqlfirewallrule :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_sqlfirewallrule: {
		server_name:       string
		start_ip_address?: string
		state?:            string
		end_ip_address?:   string
		name:              string
		resource_group:    string
	}
}

azure_rm_storageblob :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_storageblob: {
		blob?:                string
		content_encoding?:    string
		content_language?:    string
		src?:                 string
		state?:               string
		cache_control?:       string
		force?:               bool
		public_access?:       string
		resource_group:       string
		container:            string
		content_md5?:         string
		storage_account_name: string
		blob_type?:           string
		content_disposition?: string
		content_type?:        string
		dest?:                string
	}
}

azure_rm_virtualmachineimage_info :: {
	register?:   string
	notify?:     string | [...string]
	become?:     bool
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	azure_rm_virtualmachineimage_info: {
		version?:   string
		location:   string
		offer?:     string
		publisher?: string
		sku?:       string
	}
}
