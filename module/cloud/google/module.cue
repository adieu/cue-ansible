package google

gcp_compute_subnetwork :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_subnetwork: {
		state?:                    string
		env_type?:                 string
		private_ip_google_access?: bool
		project?:                  string
		region:                    string
		auth_kind:                 string
		description?:              string
		secondary_ip_ranges?: [...]
		service_account_file?:  string
		service_account_email?: string
		enable_flow_logs?:      bool
		ip_cidr_range:          string
		name:                   string
		network: {...}
		scopes?: [...]
		service_account_contents?: string
	}
}

gcp_compute_target_ssl_proxy_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_ssl_proxy_info: {
		service_account_file?: string
		auth_kind:             string
		env_type?:             string
		filters?: [...]
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
	}
}

gcp_compute_target_tcp_proxy_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_tcp_proxy_info: {
		env_type?: string
		filters?: [...]
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
	}
}

gcp_compute_target_vpn_gateway_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_vpn_gateway_info: {
		filters?: [...]
		region:                    string
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		project?:                  string
		scopes?: [...]
	}
}

gcp_runtimeconfig_variable :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_runtimeconfig_variable: {
		service_account_contents?: string
		service_account_file?:     string
		value?:                    string
		auth_kind:                 string
		env_type?:                 string
		name:                      string
		project?:                  string
		text?:                     string
		config:                    string
		scopes?: [...]
		service_account_email?: string
		state?:                 string
	}
}

gcspanner :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcspanner: {
		database_name?:         string
		force_instance_delete?: bool
		instance_display_name?: string
		instance_id:            string
		node_count?:            string
		state?:                 string
		configuration:          string
	}
}

gcp_appengine_firewall_rule_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_appengine_firewall_rule_info: {
		service_account_email?: string
		service_account_file?:  string
		auth_kind:              string
		env_type?:              string
		project?:               string
		scopes?: [...]
		service_account_contents?: string
	}
}

gcp_compute_route :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_route: {
		next_hop_instance?: {...}
		next_hop_ip?: string
		priority?:    int
		project?:     string
		scopes?: [...]
		service_account_email?: string
		dest_range:             string
		description?:           string
		name:                   string
		network: {...}
		next_hop_gateway?: string
		next_hop_vpn_tunnel?: {...}
		state?:                    string
		auth_kind:                 string
		service_account_file?:     string
		service_account_contents?: string
		tags?: [...]
		env_type?: string
	}
}

gcp_logging_metric :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_logging_metric: {
		name:                   string
		service_account_email?: string
		metric_descriptor: {...}
		state?: string
		label_extractors?: {...}
		scopes?: [...]
		service_account_file?: string
		bucket_options?: {...}
		description?:              string
		filter:                    string
		project?:                  string
		service_account_contents?: string
		value_extractor?:          string
		auth_kind:                 string
		env_type?:                 string
	}
}

gcp_compute_instance_template_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_instance_template_info: {
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		filters?: [...]
	}
}

gcp_compute_network_endpoint_group_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_network_endpoint_group_info: {
		scopes?: [...]
		service_account_contents?: string
		zone:                      string
		env_type?:                 string
		filters?: [...]
		service_account_email?: string
		service_account_file?:  string
		auth_kind:              string
		project?:               string
	}
}

gcp_compute_vpn_tunnel :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_vpn_tunnel: {
		local_traffic_selector?: [...]
		name:     string
		peer_ip?: string
		region:   string
		remote_traffic_selector?: [...]
		service_account_file?:     string
		auth_kind:                 string
		ike_version?:              int
		project?:                  string
		service_account_contents?: string
		target_vpn_gateway?: {...}
		description?: string
		scopes?: [...]
		service_account_email?: string
		env_type?:              string
		router?: {...}
		shared_secret: string
		state?:        string
	}
}

gcp_redis_instance_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_redis_instance_info: {
		service_account_email?: string
		service_account_file?:  string
		auth_kind:              string
		env_type?:              string
		project?:               string
		region:                 string
		scopes?: [...]
		service_account_contents?: string
	}
}

gcp_cloudtasks_queue_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_cloudtasks_queue_info: {
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		location:                  string
	}
}

gcp_compute_ssl_certificate :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_ssl_certificate: {
		certificate:               string
		description?:              string
		env_type?:                 string
		name?:                     string
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		private_key:               string
		project?:                  string
		scopes?: [...]
		state?: string
	}
}

gcp_compute_instance_group_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_instance_group_info: {
		service_account_email?: string
		env_type?:              string
		filters?: [...]
		project?: string
		scopes?: [...]
		auth_kind:                 string
		service_account_contents?: string
		service_account_file?:     string
		zone:                      string
	}
}

gcp_compute_target_pool :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_pool: {
		auth_kind: string
		health_check?: {...}
		region:                 string
		service_account_email?: string
		backup_pool?: {...}
		env_type?:                 string
		service_account_contents?: string
		service_account_file?:     string
		failover_ratio?:           string
		instances?: [...]
		state?:       string
		description?: string
		name:         string
		project?:     string
		scopes?: [...]
		session_affinity?: string
	}
}

gcp_compute_target_tcp_proxy :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_tcp_proxy: {
		description?: string
		project?:     string
		scopes?: [...]
		service: {...}
		service_account_contents?: string
		state?:                    string
		auth_kind:                 string
		env_type?:                 string
		name:                      string
		proxy_header?:             string
		service_account_email?:    string
		service_account_file?:     string
	}
}

gcdns_zone :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcdns_zone: {
		service_account_email?: string
		state?:                 string
		zone:                   string
		credentials_file?:      string
		description?:           string
		pem_file?:              string
		project_id?:            string
	}
}

gcp_bigquery_dataset :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_bigquery_dataset: {
		default_encryption_configuration?: {...}
		default_table_expiration_ms?: int
		labels?: {...}
		project?: string
		dataset_reference: {...}
		service_account_contents?: string
		service_account_file?:     string
		state?:                    string
		access?: [...]
		auth_kind:                        string
		env_type?:                        string
		friendly_name?:                   string
		name?:                            string
		service_account_email?:           string
		default_partition_expiration_ms?: int
		description?:                     string
		location?:                        string
		scopes?: [...]
	}
}

gcp_compute_target_instance :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_instance: {
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		description?:              string
		env_type?:                 string
		name:                      string
		state?:                    string
		zone:                      string
		instance: {...}
		nat_policy?: string
		project?:    string
	}
}

gcp_pubsub_topic_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_pubsub_topic_info: {
		service_account_file?: string
		auth_kind:             string
		env_type?:             string
		project?:              string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
	}
}

gcp_url_map :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_url_map: {
		default_service: string
		host_rules?:     string
		path_matchers?:  string
		url_map_name:    string
	}
}

gcp_compute_image_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_image_info: {
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		filters?: [...]
		project?: string
	}
}

gcp_compute_router_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_router_info: {
		env_type?:                 string
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		filters?: [...]
		project?: string
		region:   string
		scopes?: [...]
	}
}

gcp_compute_target_https_proxy_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_https_proxy_info: {
		filters?: [...]
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
	}
}

gcp_compute_target_vpn_gateway :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_vpn_gateway: {
		auth_kind:             string
		description?:          string
		env_type?:             string
		project?:              string
		service_account_file?: string
		name:                  string
		network: {...}
		region: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		state?:                    string
	}
}

gcp_logging_metric_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_logging_metric_info: {
		env_type?: string
		project?:  string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
	}
}

gcp_compute_instance_group_manager :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_instance_group_manager: {
		name:                      string
		service_account_contents?: string
		service_account_email?:    string
		env_type?:                 string
		project?:                  string
		service_account_file?:     string
		target_pools?: [...]
		zone:               string
		auth_kind:          string
		base_instance_name: string
		description?:       string
		instance_template: {...}
		named_ports?: [...]
		state?: string
		scopes?: [...]
		target_size?: int
	}
}

gcp_compute_reservation :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_reservation: {
		auth_kind: string
		scopes?: [...]
		zone:                  string
		service_account_file?: string
		specific_reservation: {...}
		description?:                   string
		env_type?:                      string
		name:                           string
		project?:                       string
		service_account_contents?:      string
		service_account_email?:         string
		specific_reservation_required?: bool
		state?:                         string
	}
}

gcp_compute_node_template_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_node_template_info: {
		env_type?: string
		filters?: [...]
		region:                    string
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		project?:                  string
		scopes?: [...]
	}
}

gcp_compute_snapshot_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_snapshot_info: {
		filters?: [...]
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
	}
}

gcp_compute_target_instance_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_instance_info: {
		env_type?: string
		filters?: [...]
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_file?:     string
		zone:                      string
		auth_kind:                 string
		service_account_email?:    string
	}
}

gcp_container_cluster :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_container_cluster: {
		auth_kind:           string
		description?:        string
		initial_node_count?: int
		kubectl_context?:    string
		locations?: [...]
		monitoring_service?:       string
		service_account_contents?: string
		addons_config?: {...}
		tpu_ipv4_cidr_block?:   string
		logging_service?:       string
		service_account_email?: string
		enable_tpu?:            bool
		name?:                  string
		location:               string
		service_account_file?:  string
		network_policy?: {...}
		kubectl_path?: string
		node_config?: {...}
		private_cluster_config?: {...}
		project?: string
		resource_labels?: {...}
		env_type?: string
		default_max_pods_constraint?: {...}
		ip_allocation_policy?: {...}
		master_auth?: {...}
		master_authorized_networks_config?: {...}
		state?:             string
		subnetwork?:        string
		cluster_ipv4_cidr?: string
		network?:           string
		scopes?: [...]
		legacy_abac?: {...}
	}
}

gcp_filestore_instance_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_filestore_instance_info: {
		auth_kind: string
		env_type?: string
		project?:  string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		zone:                      string
	}
}

gcp_spanner_instance_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_spanner_instance_info: {
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		project?:                  string
		scopes?: [...]
	}
}

gcp_cloudscheduler_job :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_cloudscheduler_job: {
		http_target?: {...}
		pubsub_target?: {...}
		scopes?: [...]
		service_account_email?: string
		app_engine_http_target?: {...}
		env_type?:  string
		state?:     string
		time_zone?: string
		project?:   string
		retry_config?: {...}
		service_account_file?:     string
		auth_kind:                 string
		schedule?:                 string
		region:                    string
		service_account_contents?: string
		description?:              string
		name:                      string
	}
}

gcp_compute_disk_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_disk_info: {
		filters?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		project?:                  string
		scopes?: [...]
		zone: string
	}
}

gcpubsub_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcpubsub_info: {
		view:   string
		state?: string
		topic?: string
	}
}

gcp_compute_forwarding_rule :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_forwarding_rule: {
		target?: {...}
		description?: string
		ip_address?:  string
		name:         string
		network?: {...}
		port_range?: string
		ports?: [...]
		region: string
		scopes?: [...]
		all_ports?: bool
		backend_service?: {...}
		env_type?:                 string
		ip_version?:               string
		service_account_contents?: string
		subnetwork?: {...}
		state?:                 string
		auth_kind:              string
		load_balancing_scheme?: string
		service_account_email?: string
		service_account_file?:  string
		ip_protocol?:           string
		network_tier?:          string
		project?:               string
		service_label?:         string
	}
}

gcp_compute_global_forwarding_rule :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_global_forwarding_rule: {
		auth_kind:   string
		ip_version?: string
		target:      string
		ip_address?: string
		metadata_filters?: [...]
		name: string
		network?: {...}
		port_range?:  string
		project?:     string
		state?:       string
		env_type?:    string
		ip_protocol?: string
		scopes?: [...]
		service_account_contents?: string
		description?:              string
		load_balancing_scheme?:    string
		service_account_email?:    string
		service_account_file?:     string
	}
}

gcp_compute_image :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_image: {
		env_type?:             string
		family?:               string
		project?:              string
		service_account_file?: string
		source_disk_encryption_key?: {...}
		auth_kind: string
		guest_os_features?: [...]
		name: string
		scopes?: [...]
		source_type?: string
		state?:       string
		description?: string
		labels?: {...}
		source_disk_id?: string
		disk_size_gb?:   int
		licenses?: [...]
		raw_disk?: {...}
		service_account_contents?: string
		service_account_email?:    string
		source_disk?: {...}
		image_encryption_key?: {...}
	}
}

gcp_container_node_pool_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_container_node_pool_info: {
		auth_kind: string
		cluster: {...}
		location: string
		project?: string
		scopes?: [...]
		service_account_file?:     string
		env_type?:                 string
		service_account_contents?: string
		service_account_email?:    string
	}
}

gcp_kms_key_ring_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_kms_key_ring_info: {
		location: string
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
	}
}

gcp_pubsub_subscription_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_pubsub_subscription_info: {
		service_account_email?: string
		service_account_file?:  string
		auth_kind:              string
		env_type?:              string
		project?:               string
		scopes?: [...]
		service_account_contents?: string
	}
}

gce_eip :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gce_eip: {
		name:   string
		region: string
		state?: string
	}
}

gce_lb :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gce_lb: {
		httphealthcheck_timeout?:         string
		members?:                         string
		credentials_file?:                string
		httphealthcheck_interval?:        string
		name?:                            string
		port_range?:                      string
		region?:                          string
		state?:                           string
		httphealthcheck_healthy_count?:   string
		httphealthcheck_port?:            string
		pem_file?:                        string
		service_account_email?:           string
		httphealthcheck_name?:            string
		httphealthcheck_unhealthy_count?: string
		httphealthcheck_path?:            string
		project_id?:                      string
		protocol?:                        string
		external_ip?:                     string
		httphealthcheck_host?:            string
	}
}

gcpubsub :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcpubsub: {
		subscription?:  string
		topic:          string
		ack_deadline?:  string
		name?:          string
		publish?:       string
		pull?:          string
		push_endpoint?: string
		state?:         string
	}
}

gcp_compute_global_address_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_global_address_info: {
		service_account_email?: string
		service_account_file?:  string
		auth_kind:              string
		env_type?:              string
		filters?: [...]
		project?: string
		scopes?: [...]
		service_account_contents?: string
	}
}

gcp_compute_instance :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_instance: {
		network_interfaces?: [...]
		scopes?: [...]
		service_account_contents?: string
		state?:                    string
		guest_accelerators?: [...]
		labels?: {...}
		metadata?: {...}
		hostname?:              string
		machine_type?:          string
		min_cpu_platform?:      string
		service_account_email?: string
		service_accounts?: [...]
		can_ip_forward?: bool
		disks?: [...]
		env_type?:             string
		zone:                  string
		service_account_file?: string
		shielded_instance_config?: {...}
		tags?: {...}
		project?: string
		scheduling?: {...}
		status?:              string
		auth_kind:            string
		deletion_protection?: bool
		name?:                string
	}
}

gcp_tpu_node :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_tpu_node: {
		env_type?: string
		labels?: {...}
		name:                      string
		auth_kind:                 string
		network?:                  string
		project?:                  string
		state?:                    string
		accelerator_type:          string
		cidr_block:                string
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		tensorflow_version:        string
		zone:                      string
		description?:              string
		scheduling_config?: {...}
		scopes?: [...]
	}
}

gce_instance_template :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gce_instance_template: {
		nic_gce_struct?:              string
		project_id?:                  string
		service_account_email?:       string
		subnetwork_region?:           string
		disk_auto_delete?:            bool
		pem_file?:                    string
		preemptible?:                 bool
		service_account_permissions?: string
		name?:                        string
		credentials_file?:            string
		disk_type?:                   string
		external_ip?:                 string
		image_family?:                string
		metadata?:                    string
		size?:                        string
		source?:                      string
		can_ip_forward?:              bool
		subnetwork?:                  string
		tags?:                        string
		state?:                       string
		description?:                 string
		disks?:                       string
		disks_gce_struct?:            string
		image?:                       string
		network?:                     string
		automatic_restart?:           bool
	}
}

gcp_backend_service :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_backend_service: {
		backend_service_name:   string
		state?:                 string
		timeout?:               string
		port_name?:             string
		project_id?:            string
		protocol?:              string
		service_account_email?: string
		backends:               string
		credentials_file?:      string
		enable_cdn?:            bool
		healthchecks:           string
	}
}

gcp_compute_https_health_check_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_https_health_check_info: {
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		filters?: [...]
	}
}

gce_labels :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gce_labels: {
		labels?:            string
		resource_location?: string
		resource_name?:     string
		resource_type?:     string
		resource_url?:      string
	}
}

gcp_compute_disk :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_disk: {
		auth_kind:                  string
		physical_block_size_bytes?: int
		state?:                     string
		type?:                      string
		disk_encryption_key?: {...}
		project?: string
		scopes?: [...]
		source_snapshot?: {...}
		service_account_file?: string
		description?:          string
		labels?: {...}
		name:                      string
		service_account_contents?: string
		source_image?:             string
		source_image_encryption_key?: {...}
		source_snapshot_encryption_key?: {...}
		zone:      string
		env_type?: string
		licenses?: [...]
		service_account_email?: string
		size_gb?:               int
	}
}

gcp_dns_resource_record_set :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_dns_resource_record_set: {
		service_account_file?: string
		target?: [...]
		type:      string
		auth_kind: string
		managed_zone: {...}
		service_account_contents?: string
		service_account_email?:    string
		state?:                    string
		ttl?:                      int
		env_type?:                 string
		name:                      string
		project?:                  string
		scopes?: [...]
	}
}

gcp_pubsub_topic :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_pubsub_topic: {
		env_type?: string
		labels?: {...}
		message_storage_policy?: {...}
		name:          string
		project?:      string
		state?:        string
		auth_kind:     string
		kms_key_name?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
	}
}

gcp_runtimeconfig_config :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_runtimeconfig_config: {
		auth_kind:    string
		description?: string
		project?:     string
		scopes?: [...]
		service_account_contents?: string
		env_type?:                 string
		name:                      string
		service_account_email?:    string
		service_account_file?:     string
		state?:                    string
	}
}

gcp_runtimeconfig_config_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_runtimeconfig_config_info: {
		service_account_email?: string
		service_account_file?:  string
		auth_kind:              string
		env_type?:              string
		project?:               string
		scopes?: [...]
		service_account_contents?: string
	}
}

gcp_compute_interconnect_attachment :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_interconnect_attachment: {
		state?:                    string
		bandwidth?:                string
		description?:              string
		env_type?:                 string
		service_account_email?:    string
		service_account_file?:     string
		service_account_contents?: string
		type?:                     string
		auth_kind:                 string
		edge_availability_domain?: string
		name:                      string
		project?:                  string
		router: {...}
		admin_enabled?: bool
		candidate_subnets?: [...]
		region:         string
		vlan_tag8021q?: int
		interconnect?:  string
		scopes?: [...]
	}
}

gcp_compute_interconnect_attachment_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_interconnect_attachment_info: {
		service_account_contents?: string
		service_account_file?:     string
		auth_kind:                 string
		scopes?: [...]
		project?:               string
		region:                 string
		service_account_email?: string
		env_type?:              string
		filters?: [...]
	}
}

gcp_compute_instance_group_manager_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_instance_group_manager_info: {
		auth_kind: string
		project?:  string
		env_type?: string
		filters?: [...]
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		zone:                      string
	}
}

gcp_compute_network_endpoint_group :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_network_endpoint_group: {
		network_endpoint_type?: string
		service_account_email?: string
		network: {...}
		scopes?: [...]
		service_account_contents?: string
		service_account_file?:     string
		state?:                    string
		subnetwork?: {...}
		name:          string
		project?:      string
		auth_kind:     string
		description?:  string
		env_type?:     string
		zone:          string
		default_port?: int
	}
}

gcp_compute_target_https_proxy :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_https_proxy: {
		project?:                  string
		service_account_contents?: string
		ssl_certificates: [...]
		name:                   string
		quic_override?:         string
		service_account_email?: string
		ssl_policy?: {...}
		state?: string
		url_map: {...}
		auth_kind: string
		scopes?: [...]
		service_account_file?: string
		description?:          string
		env_type?:             string
	}
}

gcp_compute_target_ssl_proxy :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_ssl_proxy: {
		proxy_header?:          string
		service_account_email?: string
		service_account_file?:  string
		ssl_certificates: [...]
		auth_kind: string
		project?:  string
		scopes?: [...]
		service: {...}
		ssl_policy?: {...}
		state?:                    string
		env_type?:                 string
		description?:              string
		name:                      string
		service_account_contents?: string
	}
}

gcp_storage_bucket_access_control :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_storage_bucket_access_control: {
		entity:                    string
		env_type?:                 string
		project?:                  string
		role?:                     string
		service_account_contents?: string
		service_account_email?:    string
		auth_kind:                 string
		bucket: {...}
		service_account_file?: string
		state?:                string
		scopes?: [...]
	}
}

gcp_compute_backend_service_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_backend_service_info: {
		service_account_email?: string
		service_account_file?:  string
		auth_kind:              string
		env_type?:              string
		filters?: [...]
		project?: string
		scopes?: [...]
		service_account_contents?: string
	}
}

gcp_compute_firewall_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_firewall_info: {
		env_type?: string
		filters?: [...]
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
	}
}

gcp_compute_node_template :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_node_template: {
		node_affinity_labels?: {...}
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		state?:                    string
		description?:              string
		node_type?:                string
		auth_kind:                 string
		env_type?:                 string
		project?:                  string
		region:                    string
		name?:                     string
		node_type_flexibility?: {...}
		service_account_file?: string
	}
}

gcp_kms_crypto_key_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_kms_crypto_key_info: {
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		key_ring:                  string
		project?:                  string
		scopes?: [...]
	}
}

gcp_compute_autoscaler :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_autoscaler: {
		target: {...}
		zone:         string
		auth_kind:    string
		description?: string
		env_type?:    string
		name:         string
		scopes?: [...]
		state?: string
		autoscaling_policy: {...}
		project?:                  string
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
	}
}

gcp_compute_health_check :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_health_check: {
		https_health_check?: {...}
		project?: string
		ssl_health_check?: {...}
		state?:    string
		auth_kind: string
		http2_health_check?: {...}
		scopes?: [...]
		service_account_contents?: string
		description?:              string
		env_type?:                 string
		http_health_check?: {...}
		name:                   string
		service_account_email?: string
		service_account_file?:  string
		unhealthy_threshold?:   int
		check_interval_sec?:    int
		healthy_threshold?:     int
		tcp_health_check?: {...}
		timeout_sec?: int
		type?:        string
	}
}

gcp_compute_http_health_check :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_http_health_check: {
		state?:               string
		timeout_sec?:         int
		unhealthy_threshold?: int
		host?:                string
		port?:                int
		scopes?: [...]
		project?:                  string
		request_path?:             string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		healthy_threshold?:        int
		name:                      string
		check_interval_sec?:       int
		description?:              string
		service_account_contents?: string
	}
}

gcp_mlengine_version_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_mlengine_version_info: {
		service_account_file?: string
		auth_kind:             string
		env_type?:             string
		model: {...}
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
	}
}

gc_storage :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gc_storage: {
		bucket:        string
		dest?:         string
		expiration?:   string
		object?:       string
		region?:       string
		src?:          string
		force?:        bool
		gs_access_key: string
		gs_secret_key: string
		headers?:      string
		mode:          string
		permission?:   string
		versioning?:   bool
	}
}

gcdns_record :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcdns_record: {
		project_id?:            string
		service_account_email?: string
		state?:                 string
		ttl?:                   string
		type:                   string
		zone_id?:               string
		credentials_file?:      string
		overwrite?:             bool
		pem_file?:              string
		record:                 string
		record_data?:           string
		zone?:                  string
	}
}

gcp_compute_target_http_proxy :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_http_proxy: {
		env_type?:              string
		name:                   string
		service_account_email?: string
		service_account_file?:  string
		state?:                 string
		auth_kind:              string
		description?:           string
		project?:               string
		scopes?: [...]
		service_account_contents?: string
		url_map: {...}
	}
}

gcp_iam_role :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_iam_role: {
		name:                  string
		project?:              string
		service_account_file?: string
		state?:                string
		env_type?:             string
		included_permissions?: [...]
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		stage?:                    string
		title?:                    string
		auth_kind:                 string
		description?:              string
	}
}

gcp_kms_crypto_key :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_kms_crypto_key: {
		auth_kind: string
		labels?: {...}
		project?:                  string
		rotation_period?:          string
		service_account_contents?: string
		service_account_file?:     string
		key_ring:                  string
		name:                      string
		env_type?:                 string
		version_template?: {...}
		purpose?: string
		scopes?: [...]
		service_account_email?: string
		state?:                 string
	}
}

gcp_runtimeconfig_variable_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_runtimeconfig_variable_info: {
		service_account_file?: string
		auth_kind:             string
		config:                string
		env_type?:             string
		project?:              string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
	}
}

gcp_target_proxy :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_target_proxy: {
		target_proxy_name: string
		target_proxy_type: string
		url_map_name?:     string
	}
}

gcp_compute_region_disk :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_region_disk: {
		physical_block_size_bytes?: int
		scopes?: [...]
		service_account_email?: string
		type?:                  string
		labels?: {...}
		licenses?: [...]
		service_account_file?: string
		source_snapshot_encryption_key?: {...}
		region:                    string
		service_account_contents?: string
		source_snapshot?: {...}
		state?:       string
		description?: string
		project?:     string
		env_type?:    string
		name:         string
		replica_zones: [...]
		size_gb?:  int
		auth_kind: string
		disk_encryption_key?: {...}
	}
}

gcp_compute_snapshot :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_snapshot: {
		auth_kind:              string
		service_account_email?: string
		name:                   string
		snapshot_encryption_key?: {...}
		source_disk: {...}
		source_disk_encryption_key?: {...}
		zone?:     string
		env_type?: string
		scopes?: [...]
		service_account_file?: string
		state?:                string
		description?:          string
		labels?: {...}
		project?:                  string
		service_account_contents?: string
	}
}

gcp_container_node_pool :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_container_node_pool: {
		initial_node_count:     int
		service_account_email?: string
		service_account_file?:  string
		autoscaling?: {...}
		conditions?: [...]
		config?: {...}
		cluster: {...}
		version?: string
		max_pods_constraint?: {...}
		name?:                     string
		service_account_contents?: string
		env_type?:                 string
		location:                  string
		management?: {...}
		state?:    string
		auth_kind: string
		project?:  string
		scopes?: [...]
	}
}

gcp_mlengine_model_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_mlengine_model_info: {
		env_type?: string
		project?:  string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
	}
}

gcp_pubsub_subscription :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_pubsub_subscription: {
		retain_acked_messages?: bool
		scopes?: [...]
		topic: {...}
		ack_deadline_seconds?:  int
		auth_kind:              string
		service_account_email?: string
		service_account_file?:  string
		name:                   string
		project?:               string
		env_type?:              string
		labels?: {...}
		push_config?: {...}
		service_account_contents?: string
		state?:                    string
		expiration_policy?: {...}
		message_retention_duration?: string
	}
}

gcp_cloudtasks_queue :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_cloudtasks_queue: {
		service_account_contents?: string
		service_account_file?:     string
		name?:                     string
		rate_limits?: {...}
		retry_config?: {...}
		scopes?: [...]
		state?:                 string
		location:               string
		project?:               string
		service_account_email?: string
		auth_kind:              string
		env_type?:              string
		status?:                string
		app_engine_routing_override?: {...}
	}
}

gcp_compute_network_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_network_info: {
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		filters?: [...]
	}
}

gcp_spanner_database_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_spanner_database_info: {
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		instance: {...}
	}
}

gcp_sql_instance :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_sql_instance: {
		backend_type?: string
		scopes?: [...]
		service_account_contents?: string
		master_instance_name?:     string
		max_disk_size?:            int
		name:                      string
		project?:                  string
		connection_name?:          string
		env_type?:                 string
		failover_replica?: {...}
		instance_type?: string
		region?:        string
		settings?: {...}
		state?:        string
		ipv6_address?: string
		replica_configuration?: {...}
		service_account_email?: string
		service_account_file?:  string
		auth_kind:              string
		database_version?:      string
	}
}

gcp_compute_address_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_address_info: {
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		env_type?:                 string
		filters?: [...]
		project?: string
		region:   string
		scopes?: [...]
		auth_kind: string
	}
}

gcp_iam_role_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_iam_role_info: {
		service_account_file?: string
		auth_kind:             string
		env_type?:             string
		project?:              string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
	}
}

gcp_compute_ssl_policy :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_ssl_policy: {
		service_account_file?: string
		auth_kind:             string
		custom_features?: [...]
		description?:              string
		env_type?:                 string
		min_tls_version?:          string
		profile?:                  string
		service_account_contents?: string
		state?:                    string
		name:                      string
		project?:                  string
		scopes?: [...]
		service_account_email?: string
	}
}

gcp_dns_managed_zone_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_dns_managed_zone_info: {
		auth_kind: string
		dns_name?: [...]
		env_type?: string
		project?:  string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
	}
}

gcp_forwarding_rule :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_forwarding_rule: {
		state:                string
		target?:              string
		address?:             string
		forwarding_rule_name: string
		port_range?:          string
		protocol?:            string
		region?:              string
	}
}

gcp_serviceusage_service :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_serviceusage_service: {
		auth_kind:                   string
		disable_dependent_services?: bool
		env_type?:                   string
		name:                        string
		scopes?: [...]
		service_account_file?:     string
		project?:                  string
		service_account_contents?: string
		service_account_email?:    string
		state?:                    string
	}
}

gcp_sql_database :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_sql_database: {
		project?:              string
		service_account_file?: string
		env_type?:             string
		charset?:              string
		collation?:            string
		instance:              string
		name:                  string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		auth_kind:                 string
		state?:                    string
	}
}

gcp_cloudbuild_trigger_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_cloudbuild_trigger_info: {
		service_account_email?: string
		service_account_file?:  string
		auth_kind:              string
		env_type?:              string
		project?:               string
		scopes?: [...]
		service_account_contents?: string
	}
}

gcp_compute_region_disk_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_region_disk_info: {
		service_account_contents?: string
		service_account_email?:    string
		env_type?:                 string
		region:                    string
		scopes?: [...]
		service_account_file?: string
		auth_kind:             string
		filters?: [...]
		project?: string
	}
}

gcp_compute_reservation_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_reservation_info: {
		project?:               string
		service_account_email?: string
		filters?: [...]
		env_type?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_file?:     string
		zone:                      string
		auth_kind:                 string
	}
}

gcp_iam_service_account_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_iam_service_account_info: {
		auth_kind: string
		env_type?: string
		project?:  string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
	}
}

gcp_bigquery_table :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_bigquery_table: {
		time_partitioning?: {...}
		auth_kind:        string
		expiration_time?: int
		external_data_configuration?: {...}
		friendly_name?:         string
		name?:                  string
		service_account_email?: string
		dataset?:               string
		description?:           string
		env_type?:              string
		schema?: {...}
		service_account_file?: string
		num_rows?:             int
		view?: {...}
		state?: string
		table_reference?: {...}
		clustering?: [...]
		encryption_configuration?: {...}
		labels?: {...}
		project?: string
		scopes?: [...]
		service_account_contents?: string
	}
}

gcp_compute_node_group_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_node_group_info: {
		scopes?: [...]
		service_account_email?: string
		service_account_file?:  string
		zone:                   string
		env_type?:              string
		filters?: [...]
		service_account_contents?: string
		auth_kind:                 string
		project?:                  string
	}
}

gcp_compute_global_address :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_global_address: {
		purpose?:              string
		service_account_file?: string
		description?:          string
		env_type?:             string
		prefix_length?:        int
		scopes?: [...]
		service_account_email?:    string
		auth_kind:                 string
		name:                      string
		service_account_contents?: string
		network?: {...}
		project?:      string
		ip_version?:   string
		state?:        string
		address?:      string
		address_type?: string
	}
}

gcp_compute_router :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_router: {
		scopes?: [...]
		auth_kind: string
		bgp?: {...}
		description?: string
		env_type?:    string
		name:         string
		network: {...}
		region:                    string
		service_account_email?:    string
		project?:                  string
		service_account_contents?: string
		service_account_file?:     string
		state?:                    string
	}
}

gcp_compute_target_pool_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_pool_info: {
		project?: string
		region:   string
		scopes?: [...]
		service_account_contents?: string
		auth_kind:                 string
		env_type?:                 string
		service_account_file?:     string
		filters?: [...]
		service_account_email?: string
	}
}

gcp_resourcemanager_project_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_resourcemanager_project_info: {
		auth_kind: string
		env_type?: string
		project?:  string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
	}
}

gcp_sourcerepo_repository :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_sourcerepo_repository: {
		service_account_file?: string
		state?:                string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		project?:                  string
		auth_kind:                 string
		env_type?:                 string
		name:                      string
	}
}

gce_snapshot :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gce_snapshot: {
		project_id:            string
		service_account_email: string
		snapshot_name?:        string
		state?:                string
		credentials_file:      string
		disks?:                string
		instance_name:         string
	}
}

gcp_cloudfunctions_cloud_function :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_cloudfunctions_cloud_function: {
		https_trigger?: {...}
		service_account_file?:     string
		state?:                    string
		description?:              string
		entry_point?:              string
		name:                      string
		project?:                  string
		service_account_contents?: string
		service_account_email?:    string
		source_archive_url?:       string
		source_repository?: {...}
		environment_variables?: {...}
		location:           string
		source_upload_url?: string
		trigger_http?:      bool
		env_type?:          string
		labels?: {...}
		runtime?: string
		scopes?: [...]
		timeout?:             string
		auth_kind:            string
		available_memory_mb?: int
		event_trigger?: {...}
	}
}

gcp_compute_target_http_proxy_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_target_http_proxy_info: {
		service_account_file?: string
		auth_kind:             string
		env_type?:             string
		filters?: [...]
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
	}
}

gcp_dns_resource_record_set_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_dns_resource_record_set_info: {
		service_account_file?: string
		auth_kind:             string
		env_type?:             string
		managed_zone: {...}
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
	}
}

gcp_spanner_database :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_spanner_database: {
		extra_statements?: [...]
		instance: {...}
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		name:                      string
		state?:                    string
	}
}

gcp_cloudscheduler_job_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_cloudscheduler_job_info: {
		region: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		project?:                  string
	}
}

gcp_compute_route_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_route_info: {
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		filters?: [...]
		project?: string
		scopes?: [...]
	}
}

gcp_serviceusage_service_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_serviceusage_service_info: {
		service_account_file?: string
		auth_kind:             string
		env_type?:             string
		project?:              string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
	}
}

gcp_compute_http_health_check_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_http_health_check_info: {
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		filters?: [...]
		project?: string
		scopes?: [...]
	}
}

gcp_container_cluster_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_container_cluster_info: {
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		location:                  string
		project?:                  string
		scopes?: [...]
	}
}

gcp_compute_backend_bucket_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_backend_bucket_info: {
		auth_kind: string
		env_type?: string
		filters?: [...]
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
	}
}

gcp_compute_backend_service :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_backend_service: {
		connection_draining?: {...}
		port_name?:               string
		affinity_cookie_ttl_sec?: int
		auth_kind:                string
		enable_cdn?:              bool
		env_type?:                string
		protocol?:                string
		scopes?: [...]
		health_checks: [...]
		iap?: {...}
		load_balancing_scheme?:    string
		security_policy?:          string
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		timeout_sec?:              int
		backends?: [...]
		cdn_policy?: {...}
		description?:      string
		name:              string
		project?:          string
		session_affinity?: string
		state?:            string
	}
}

gcp_compute_instance_template :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_instance_template: {
		auth_kind: string
		name:      string
		scopes?: [...]
		service_account_contents?: string
		state?:                    string
		service_account_file?:     string
		description?:              string
		env_type?:                 string
		project?:                  string
		properties?: {...}
		service_account_email?: string
	}
}

gcp_compute_region_backend_service :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_region_backend_service: {
		auth_kind: string
		backends?: [...]
		connection_draining?: {...}
		description?: string
		project?:     string
		env_type?:    string
		health_checks: [...]
		region: string
		scopes?: [...]
		service_account_contents?: string
		state?:                    string
		service_account_email?:    string
		service_account_file?:     string
		session_affinity?:         string
		timeout_sec?:              int
		load_balancing_scheme?:    string
		name:                      string
		protocol?:                 string
	}
}

gcp_compute_url_map :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_url_map: {
		env_type?: string
		scopes?: [...]
		tests?: [...]
		auth_kind: string
		path_matchers?: [...]
		service_account_email?: string
		state?:                 string
		default_service: {...}
		host_rules?: [...]
		name:                      string
		service_account_file?:     string
		description?:              string
		project?:                  string
		service_account_contents?: string
	}
}

gce_img :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gce_img: {
		pem_file?:              string
		source?:                string
		timeout?:               string
		description?:           string
		name:                   string
		service_account_email?: string
		state?:                 string
		zone?:                  string
		family?:                string
		project_id?:            string
	}
}

gce_net :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gce_net: {
		subnet_region?:         string
		target_tags?:           string
		credentials_file?:      string
		fwname?:                string
		pem_file?:              string
		state?:                 string
		name?:                  string
		service_account_email?: string
		src_tags?:              string
		src_range?:             string
		subnet_name?:           string
		allowed?:               string
		ipv4_range?:            string
		mode?:                  string
		project_id?:            string
		subnet_desc?:           string
	}
}

gcp_iam_service_account :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_iam_service_account: {
		name?:                     string
		project?:                  string
		service_account_contents?: string
		state?:                    string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		display_name?:             string
		env_type?:                 string
		scopes?: [...]
	}
}

gcp_resourcemanager_project :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_resourcemanager_project: {
		name?:                     string
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		id:                        string
		scopes?: [...]
		state?: string
		labels?: {...}
		parent?: {...}
		project?: string
	}
}

gce :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gce: {
		tags?:                        string
		image?:                       string
		image_family?:                string
		network?:                     string
		state?:                       string
		ip_forward?:                  bool
		metadata?:                    string
		name?:                        string
		persistent_boot_disk?:        bool
		disk_auto_delete?:            bool
		disks?:                       string
		external_ip?:                 string
		external_projects?:           string
		service_account_permissions?: string
		subnetwork?:                  string
		zone:                         string
		instance_names?:              string
		service_account_email?:       string
		pem_file?:                    string
		preemptible?:                 bool
		project_id?:                  string
		credentials_file?:            string
		disk_size?:                   string
		machine_type?:                string
		num_instances?:               string
	}
}

gcp_cloudbuild_trigger :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_cloudbuild_trigger: {
		disabled?: bool
		name?:     string
		scopes?: [...]
		state?:                string
		auth_kind:             string
		env_type?:             string
		id?:                   string
		project?:              string
		service_account_file?: string
		substitutions?: {...}
		trigger_template?: {...}
		filename?: string
		ignored_files?: [...]
		service_account_email?: string
		build?: {...}
		description?: string
		included_files?: [...]
		service_account_contents?: string
	}
}

gcp_compute_subnetwork_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_subnetwork_info: {
		service_account_file?:     string
		auth_kind:                 string
		project?:                  string
		region:                    string
		service_account_contents?: string
		env_type?:                 string
		filters?: [...]
		scopes?: [...]
		service_account_email?: string
	}
}

gcp_iam_service_account_key :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_iam_service_account_key: {
		service_account?: {...}
		service_account_email?: string
		auth_kind:              string
		project?:               string
		path?:                  string
		private_key_type?:      string
		scopes?: [...]
		service_account_contents?: string
		service_account_file?:     string
		state?:                    string
		env_type?:                 string
		key_algorithm?:            string
	}
}

gcp_redis_instance :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_redis_instance: {
		region:                    string
		memory_size_gb:            int
		name:                      string
		display_name?:             string
		project?:                  string
		state?:                    string
		auth_kind:                 string
		authorized_network?:       string
		redis_version?:            string
		reserved_ip_range?:        string
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		alternative_location_id?:  string
		location_id?:              string
		redis_configs?: {...}
		scopes?: [...]
		tier?:     string
		env_type?: string
		labels?: {...}
	}
}

gce_tag :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gce_tag: {
		service_account_email?: string
		state?:                 string
		tags:                   string
		zone?:                  string
		instance_name?:         string
		instance_pattern?:      string
		pem_file?:              string
		project_id?:            string
	}
}

gcp_compute_ssl_certificate_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_ssl_certificate_info: {
		env_type?: string
		filters?: [...]
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
	}
}

gcp_storage_object :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_storage_object: {
		overwrite?: bool
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		action?:                   string
		auth_kind:                 string
		dest?:                     string
		env_type?:                 string
		state?:                    string
		bucket?:                   string
		project?:                  string
		service_account_file?:     string
		src?:                      string
	}
}

gcp_compute_global_forwarding_rule_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_global_forwarding_rule_info: {
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		filters?: [...]
	}
}

gcp_compute_node_group :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_node_group: {
		service_account_contents?: string
		size:                      int
		state?:                    string
		zone:                      string
		auth_kind:                 string
		env_type?:                 string
		name?:                     string
		node_template: {...}
		project?: string
		scopes?: [...]
		service_account_email?: string
		service_account_file?:  string
		description?:           string
	}
}

gcp_compute_health_check_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_health_check_info: {
		service_account_email?: string
		service_account_file?:  string
		auth_kind:              string
		env_type?:              string
		filters?: [...]
		project?: string
		scopes?: [...]
		service_account_contents?: string
	}
}

gcp_compute_instance_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_instance_info: {
		auth_kind: string
		project?:  string
		scopes?: [...]
		service_account_contents?: string
		service_account_file?:     string
		env_type?:                 string
		filters?: [...]
		service_account_email?: string
		zone:                   string
	}
}

gcp_compute_network :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_network: {
		description?: string
		env_type?:    string
		ipv4_range?:  string
		project?:     string
		routing_config?: {...}
		service_account_contents?: string
		state?:                    string
		auth_kind:                 string
		auto_create_subnetworks?:  bool
		name:                      string
		scopes?: [...]
		service_account_email?: string
		service_account_file?:  string
	}
}

gcp_compute_vpn_tunnel_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_vpn_tunnel_info: {
		service_account_file?: string
		auth_kind:             string
		env_type?:             string
		filters?: [...]
		service_account_contents?: string
		project?:                  string
		region:                    string
		scopes?: [...]
		service_account_email?: string
	}
}

gcp_dns_managed_zone :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_dns_managed_zone: {
		dnssec_config?: {...}
		env_type?: string
		scopes?: [...]
		visibility?: string
		description: string
		dns_name:    string
		private_visibility_config?: {...}
		auth_kind:                 string
		name:                      string
		state?:                    string
		project?:                  string
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		labels?: {...}
		name_server_set?: string
	}
}

gcp_storage_bucket :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_storage_bucket: {
		project?:              string
		service_account_file?: string
		website?: {...}
		location?: string
		env_type?: string
		name?:     string
		owner?: {...}
		predefined_default_object_acl?: string
		scopes?: [...]
		versioning?: {...}
		default_object_acl?: [...]
		logging?: {...}
		metageneration?:           int
		service_account_contents?: string
		state?:                    string
		acl?: [...]
		cors?: [...]
		lifecycle?: {...}
		service_account_email?: string
		storage_class?:         string
		auth_kind:              string
	}
}

gcp_compute_address :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_address: {
		scopes?: [...]
		service_account_file?:     string
		address_type?:             string
		description?:              string
		network_tier?:             string
		region:                    string
		state?:                    string
		auth_kind:                 string
		env_type?:                 string
		project?:                  string
		service_account_contents?: string
		subnetwork?: {...}
		address?:               string
		name:                   string
		purpose?:               string
		service_account_email?: string
	}
}

gcp_compute_backend_bucket :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_backend_bucket: {
		bucket_name: string
		cdn_policy?: {...}
		name: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		description?:              string
		enable_cdn?:               bool
		env_type?:                 string
		project?:                  string
		state?:                    string
	}
}

gcp_compute_instance_group :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_instance_group: {
		network?: {...}
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_file?:     string
		subnetwork?: {...}
		auth_kind:              string
		description?:           string
		service_account_email?: string
		zone:                   string
		env_type?:              string
		region?:                string
		named_ports?: [...]
		state?: string
		instances?: [...]
		name?: string
	}
}

gcp_compute_region_backend_service_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_region_backend_service_info: {
		service_account_file?: string
		env_type?:             string
		filters?: [...]
		project?: string
		region:   string
		scopes?: [...]
		service_account_contents?: string
		auth_kind:                 string
		service_account_email?:    string
	}
}

gcp_filestore_instance :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_filestore_instance: {
		zone:         string
		description?: string
		file_shares: [...]
		networks: [...]
		project?:              string
		service_account_file?: string
		tier:                  string
		auth_kind:             string
		env_type?:             string
		labels?: {...}
		service_account_email?:    string
		service_account_contents?: string
		state?:                    string
		name:                      string
		scopes?: [...]
	}
}

gcp_healthcheck :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_healthcheck: {
		service_account_email?:       string
		check_interval?:              string
		credentials_file?:            string
		host_header:                  string
		request_path?:                string
		service_account_permissions?: string
		timeout?:                     string
		unhealthy_threshold?:         string
		healthcheck_type:             string
		healthy_threshold?:           string
		port?:                        string
		healthcheck_name:             string
		project_id?:                  string
		state:                        string
	}
}

gcp_kms_key_ring :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_kms_key_ring: {
		env_type?: string
		location:  string
		name:      string
		scopes?: [...]
		service_account_contents?: string
		state?:                    string
		auth_kind:                 string
		project?:                  string
		service_account_email?:    string
		service_account_file?:     string
	}
}

gcp_sql_database_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_sql_database_info: {
		auth_kind: string
		env_type?: string
		instance:  string
		project?:  string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
	}
}

gce_pd :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gce_pd: {
		disk_type?:             string
		name:                   string
		pem_file?:              string
		service_account_email?: string
		size_gb?:               string
		credentials_file?:      string
		detach_only?:           bool
		image?:                 string
		instance_name?:         string
		mode?:                  string
		snapshot?:              string
		project_id?:            string
		state?:                 string
		zone?:                  string
		delete_on_termination?: bool
	}
}

gcp_appengine_firewall_rule :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_appengine_firewall_rule: {
		env_type?: string
		scopes?: [...]
		service_account_contents?: string
		source_range:              string
		state?:                    string
		auth_kind:                 string
		description?:              string
		project?:                  string
		service_account_email?:    string
		service_account_file?:     string
		action:                    string
		priority?:                 int
	}
}

gcp_sql_instance_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_sql_instance_info: {
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		project?:                  string
	}
}

gcp_cloudfunctions_cloud_function_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_cloudfunctions_cloud_function_info: {
		service_account_email?: string
		service_account_file?:  string
		auth_kind:              string
		env_type?:              string
		location:               string
		project?:               string
		scopes?: [...]
		service_account_contents?: string
	}
}

gcp_mlengine_model :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_mlengine_model: {
		default_version?: {...}
		env_type?:                  string
		name:                       string
		service_account_email?:     string
		service_account_contents?:  string
		service_account_file?:      string
		state?:                     string
		auth_kind:                  string
		online_prediction_logging?: bool
		project?:                   string
		regions?: [...]
		scopes?: [...]
		description?: string
		labels?: {...}
		online_prediction_console_logging?: bool
	}
}

gcp_compute_autoscaler_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_autoscaler_info: {
		service_account_contents?: string
		zone:                      string
		scopes?: [...]
		env_type?: string
		filters?: [...]
		project?:               string
		service_account_email?: string
		service_account_file?:  string
		auth_kind:              string
	}
}

gcp_compute_https_health_check :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_https_health_check: {
		state?:                 string
		timeout_sec?:           int
		env_type?:              string
		healthy_threshold?:     int
		port?:                  int
		request_path?:          string
		service_account_email?: string
		check_interval_sec?:    int
		description?:           string
		name:                   string
		project?:               string
		scopes?: [...]
		host?:                     string
		auth_kind:                 string
		service_account_contents?: string
		service_account_file?:     string
		unhealthy_threshold?:      int
	}
}

gcp_compute_url_map_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_url_map_info: {
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		filters?: [...]
	}
}

gcp_mlengine_version :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_mlengine_version: {
		manual_scaling?: {...}
		name:                  string
		python_version?:       string
		runtime_version?:      string
		service_account_file?: string
		deployment_uri:        string
		framework?:            string
		is_default?:           bool
		project?:              string
		auto_scaling?: {...}
		env_type?:     string
		machine_type?: string
		model: {...}
		scopes?: [...]
		service_account?: string
		auth_kind:        string
		description?:     string
		labels?: {...}
		state?:                    string
		prediction_class?:         string
		service_account_contents?: string
		service_account_email?:    string
	}
}

gcp_spanner_instance :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_spanner_instance: {
		display_name: string
		project?:     string
		scopes?: [...]
		service_account_contents?: string
		state?:                    string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		config:                    string
		env_type?:                 string
		labels?: {...}
		name:        string
		node_count?: int
	}
}

gcp_sql_user :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_sql_user: {
		scopes?: [...]
		state?: string
		host:   string
		instance: {...}
		name:                      string
		password?:                 string
		project?:                  string
		auth_kind:                 string
		env_type?:                 string
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
	}
}

gcp_bigquery_dataset_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_bigquery_dataset_info: {
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		project?:                  string
	}
}

gcp_bigquery_table_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_bigquery_table_info: {
		env_type?: string
		project?:  string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		dataset?:                  string
	}
}

gcp_compute_forwarding_rule_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_forwarding_rule_info: {
		filters?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		project?:                  string
		region:                    string
		scopes?: [...]
	}
}

gcp_compute_ssl_policy_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_ssl_policy_info: {
		auth_kind: string
		env_type?: string
		filters?: [...]
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
	}
}

gcp_sourcerepo_repository_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_sourcerepo_repository_info: {
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
		project?:                  string
		scopes?: [...]
	}
}

gcp_sql_user_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_sql_user_info: {
		instance: {...}
		project?: string
		scopes?: [...]
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		auth_kind:                 string
		env_type?:                 string
	}
}

gcp_tpu_node_info :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_tpu_node_info: {
		service_account_contents?: string
		service_account_email?:    string
		service_account_file?:     string
		zone:                      string
		auth_kind:                 string
		env_type?:                 string
		project?:                  string
		scopes?: [...]
	}
}

gce_mig :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gce_mig: {
		template?:              string
		name:                   string
		named_ports?:           string
		size?:                  string
		service_account_email?: string
		state?:                 string
		zone:                   string
		autoscaling?:           string
		credentials_file?:      string
		project_id?:            string
	}
}

gcp_compute_firewall :: {
	with_items?: [...string]
	become?: bool
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?:       string
	connection?: string
	name?:       string
	register?:   string
	gcp_compute_firewall: {
		destination_ranges?: [...]
		disabled?: bool
		priority?: int
		project?:  string
		target_tags?: [...]
		service_account_file?: string
		source_tags?: [...]
		state?:       string
		description?: string
		env_type?:    string
		network?: {...}
		scopes?: [...]
		service_account_email?: string
		auth_kind:              string
		name:                   string
		source_service_accounts?: [...]
		target_service_accounts?: [...]
		allowed?: [...]
		denied?: [...]
		direction?:                string
		service_account_contents?: string
		source_ranges?: [...]
	}
}
