package amazon

aws_caller_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_caller_info: {
	}
}

aws_config_aggregation_authorization :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_config_aggregation_authorization: {
		authorized_account_id?: string
		authorized_aws_region?: string
		state?:                 string
	}
}

data_pipeline :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	data_pipeline: {
		objects?: [...{...}]
		timeout?: int
		values?: [...{...}]
		version?:     string
		description?: string
		name:         string
		parameters?: [...{...}]
		state?: string
		tags?: {...}
	}
}

ec2_eip_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_eip_info: {
		filters?: {...}
	}
}

elasticache :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elasticache: {
		cache_engine_version?:  string
		cache_port?:            int
		wait?:                  bool
		zone?:                  string
		cache_parameter_group?: string
		engine?:                string
		cache_security_groups?: [...string]
		hard_modify?:        bool
		name:                string
		node_type?:          string
		num_nodes?:          int
		cache_subnet_group?: string
		security_group_ids?: [...string]
		state: string
	}
}

elb_target_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elb_target_info: {
		get_unused_target_groups?: bool
		instance_id:               string
	}
}

aws_config_delivery_channel :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_config_delivery_channel: {
		name:                string
		s3_bucket?:          string
		s3_prefix?:          string
		sns_topic_arn?:      string
		state?:              string
		delivery_frequency?: string
	}
}

ecs_taskdefinition :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ecs_taskdefinition: {
		force_create?: bool
		launch_type?:  string
		revision?:     int
		volumes?: [...{...}]
		containers?: [...string]
		cpu?:                string
		family?:             string
		network_mode?:       string
		state:               string
		task_role_arn?:      string
		arn?:                string
		execution_role_arn?: string
		memory?:             string
	}
}

iam_cert :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam_cert: {
		cert?:       string
		dup_ok?:     bool
		name:        string
		new_name?:   string
		new_path?:   string
		path?:       string
		state:       string
		cert_chain?: string
		key?:        string
	}
}

iam_managed_policy :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam_managed_policy: {
		only_version?:       bool
		policy?:             string
		policy_description?: string
		policy_name:         string
		state?:              string
		fail_on_delete?:     bool
		make_default?:       bool
	}
}

route53 :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	route53: {
		health_check?: string
		overwrite?:    bool
		state:         string
		value?: [...]
		hosted_zone_id?:               string
		record:                        string
		ttl?:                          int
		vpc_id?:                       string
		wait?:                         bool
		wait_timeout?:                 int
		alias_evaluate_target_health?: bool
		alias_hosted_zone_id?:         string
		failover?:                     string
		type:                          string
		alias?:                        bool
		identifier?:                   string
		private_zone?:                 bool
		region?:                       string
		retry_interval?:               int
		weight?:                       int
		zone?:                         string
	}
}

ec2_ami_copy :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_ami_copy: {
		name?:         string
		tag_equality?: bool
		tags?: {...}
		wait_timeout?:   int
		kms_key_id?:     string
		encrypted?:      bool
		source_image_id: string
		source_region:   string
		wait?:           bool
		description?:    string
	}
}

ec2_vpc_igw :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_igw: {
		state?: string
		tags?: {...}
		vpc_id: string
	}
}

ec2_vpc_nat_gateway :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_nat_gateway: {
		allocation_id?:          string
		eip_address?:            string
		subnet_id?:              string
		wait?:                   bool
		wait_timeout?:           int
		client_token?:           string
		if_exist_do_not_create?: bool
		nat_gateway_id?:         string
		release_eip?:            bool
		state?:                  string
	}
}

aws_acm :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_acm: {
		private_key?:       string
		state?:             string
		certificate?:       string
		certificate_arn?:   string
		certificate_chain?: string
		domain_name?:       string
		name_tag?:          string
	}
}

dynamodb_table :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	dynamodb_table: {
		range_key_name?: string
		range_key_type?: string
		read_capacity?:  int
		state?:          string
		tags?: {...}
		hash_key_name?: string
		hash_key_type?: string
		indexes?: [...{...}]
		name:                     string
		wait_for_active_timeout?: int
		write_capacity?:          int
	}
}

execute_lambda :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	execute_lambda: {
		wait?:         bool
		dry_run?:      bool
		function_arn?: string
		name?:         string
		payload?: {...}
		tail_log?:          bool
		version_qualifier?: string
	}
}

cloudwatchlogs_log_group_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	cloudwatchlogs_log_group_info: {
		log_group_name?: string
	}
}

ec2_vpc_nacl_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_nacl_info: {
		filters?: {...}
		nacl_ids?: [...]
	}
}

ec2_vpc_vpn :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_vpn: {
		static_only?: bool
		tags?: {...}
		connection_type?:     string
		purge_routes?:        bool
		wait_timeout?:        int
		customer_gateway_id?: string
		delay?:               int
		filters?: {...}
		tunnel_options?: [...{...}]
		purge_tags?: bool
		routes?: [...string]
		state?:             string
		vpn_connection_id?: string
		vpn_gateway_id?:    string
	}
}

ec2_vpc_vgw :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_vgw: {
		state?: string
		tags?: {...}
		type?:           string
		vpc_id?:         string
		vpn_gateway_id?: string
		wait_timeout?:   int
		asn?:            int
		name?:           string
	}
}

iam_policy :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam_policy: {
		policy_json?:     string
		policy_name:      string
		skip_duplicates?: bool
		state:            string
		iam_name:         string
		iam_type:         string
		policy_document?: string
	}
}

aws_application_scaling_policy :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_application_scaling_policy: {
		policy_name:       string
		resource_id:       string
		service_namespace: string
		state:             string
		step_scaling_policy_configuration?: {...}
		target_tracking_scaling_policy_configuration?: {...}
		maximum_tasks?:          int
		override_task_capacity?: bool
		policy_type:             string
		scalable_dimension:      string
		minimum_tasks?:          int
	}
}

aws_glue_connection :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_glue_connection: {
		connection_type?: string
		description?:     string
		match_criteria?: [...string]
		security_groups?: [...string]
		state:       string
		catalog_id?: string
		connection_properties: {...}
		name:       string
		subnet_id?: string
	}
}

aws_s3_bucket_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_s3_bucket_info: {
	}
}

dms_endpoint :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	dms_endpoint: {
		password?:     string
		sslmode?:      string
		username?:     string
		databasename?: string
		elasticsearchsettings?: {...}
		extraconnectionattributes?: string
		kmskeyid?:                  string
		mongodbsettings?: {...}
		kinesissettings?: {...}
		wait?:           bool
		certificatearn?: string
		dynamodbsettings?: {...}
		endpointtype?:            string
		enginename?:              string
		externaltabledefinition?: string
		timeout?:                 int
		dmstransfersettings?: {...}
		retries?:              int
		serviceaccessrolearn?: string
		state?:                string
		tags?: {...}
		endpointidentifier?: string
		port?:               int
		s3settings?: {...}
		servername?: string
	}
}

ec2_launch_template :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_launch_template: {
		elastic_gpu_specifications?: [...{...}]
		image_id?: string
		instance_market_options?: {...}
		key_name?: string
		placement?: {...}
		security_group_ids?: [...string]
		template_name?: string
		block_device_mappings?: [...{...}]
		ebs_optimized?: bool
		security_groups?: [...string]
		tags?: {...}
		template_id?: string
		network_interfaces?: [...{...}]
		cpu_options?: {...}
		credit_specification?: {...}
		default_version?:                      string
		disable_api_termination?:              bool
		iam_instance_profile?:                 string
		instance_initiated_shutdown_behavior?: string
		kernel_id?:                            string
		ram_disk_id?:                          string
		state?:                                string
		user_data?:                            string
		instance_type?:                        string
		monitoring?: {...}
	}
}

ec2_transit_gateway_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_transit_gateway_info: {
		filters?: {...}
		transit_gateway_ids?: [...]
	}
}

sns_topic :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	sns_topic: {
		state?: string
		subscriptions?: [...{...}]
		delivery_policy?: {...}
		display_name?: string
		name:          string
		policy?: {...}
		purge_subscriptions?: bool
	}
}

aws_waf_condition :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_waf_condition: {
		waf_regional?: bool
		filters?: [...{...}]
		name:           string
		purge_filters?: bool
		state?:         string
		type?:          string
	}
}

ec2_ami :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_ami: {
		enhanced_networking?: bool
		instance_id?:         string
		kernel_id?:           string
		no_reboot?:           bool
		state?:               string
		architecture?:        string
		description?:         string
		device_mapping?: [...{...}]
		launch_permissions?: {...}
		root_device_name?:  string
		sriov_net_support?: string
		tags?: {...}
		wait_timeout?: int
		billing_products?: [...string]
		image_location?:      string
		name?:                string
		wait?:                bool
		delete_snapshot?:     bool
		purge_tags?:          bool
		ramdisk_id?:          string
		virtualization_type?: string
		image_id?:            string
	}
}

ec2_asg_lifecycle_hook :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_asg_lifecycle_hook: {
		default_result?:          string
		lifecycle_hook_name:      string
		notification_meta_data?:  string
		notification_target_arn?: string
		autoscaling_group_name:   string
		heartbeat_timeout?:       int
		role_arn?:                string
		state?:                   string
		transition:               string
	}
}

ec2_key :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_key: {
		wait_timeout?: int
		force?:        bool
		key_material?: string
		name:          string
		state?:        string
		wait?:         bool
	}
}

iam :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam: {
		state: string
		trust_policy?: {...}
		iam_type?:         string
		access_key_state?: string
		key_count?:        int
		access_key_ids?: [...]
		trust_policy_filepath?: string
		password?:              string
		name:                   string
		new_name?:              string
		new_path?:              string
		path?:                  string
		update_password?:       string
		groups?: [...]
	}
}

rds_instance :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	rds_instance: {
		new_db_instance_identifier?:            string
		read_replica?:                          bool
		publicly_accessible?:                   bool
		s3_bucket_name?:                        string
		wait?:                                  bool
		backup_retention_period?:               int
		creation_source?:                       string
		max_allocated_storage?:                 int
		multi_az?:                              bool
		performance_insights_retention_period?: int
		allow_major_version_upgrade?:           bool
		engine_version?:                        string
		db_parameter_group_name?:               string
		db_subnet_group_name?:                  string
		enable_iam_database_authentication?:    bool
		enable_performance_insights?:           bool
		storage_encrypted?:                     bool
		auto_minor_version_upgrade?:            bool
		db_name?:                               string
		monitoring_interval?:                   int
		restore_time?:                          string
		source_region?:                         string
		apply_immediately?:                     bool
		kms_key_id?:                            string
		promotion_tier?:                        string
		skip_final_snapshot?:                   bool
		storage_type?:                          string
		snapshot_identifier?:                   string
		allocated_storage?:                     int
		final_db_snapshot_identifier?:          string
		force_failover?:                        bool
		license_model?:                         string
		processor_features?: {...}
		enable_cloudwatch_logs_exports?: [...]
		option_group_name?:               string
		performance_insights_kms_key_id?: string
		preferred_backup_window?:         string
		domain?:                          string
		force_update_password?:           bool
		s3_prefix?:                       string
		vpc_security_group_ids?: [...]
		copy_tags_to_snapshot?:        bool
		db_instance_class?:            string
		engine?:                       string
		preferred_maintenance_window?: string
		availability_zone?:            string
		db_security_groups?: [...]
		monitoring_role_arn?:           string
		tde_credential_arn?:            string
		character_set_name?:            string
		db_snapshot_identifier?:        string
		tde_credential_password?:       string
		port?:                          int
		s3_ingestion_role_arn?:         string
		source_engine?:                 string
		ca_certificate_identifier?:     string
		db_cluster_identifier?:         string
		db_instance_identifier:         string
		domain_iam_role_name?:          string
		master_user_password?:          string
		state?:                         string
		use_latest_restorable_time?:    bool
		purge_cloudwatch_logs_exports?: bool
		master_username?:               string
		purge_tags?:                    bool
		source_db_instance_identifier?: string
		timezone?:                      string
		iops?:                          int
		source_engine_version?:         string
		tags?: {...}
	}
}

aws_glue_job :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_glue_job: {
		command_name?: string
		connections?: [...string]
		description?:        string
		max_retries?:        int
		role:                string
		allocated_capacity?: int
		default_arguments?: {...}
		max_concurrent_runs?:    int
		name:                    string
		state:                   string
		timeout?:                int
		command_script_location: string
	}
}

aws_s3_cors :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_s3_cors: {
		name: string
		rules?: [...]
		state: string
	}
}

aws_waf_rule :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_waf_rule: {
		waf_regional?: bool
		conditions?: [...{...}]
		metric_name?:      string
		name:              string
		purge_conditions?: bool
		state?:            string
	}
}

cloudformation_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	cloudformation_info: {
		stack_name?:      string
		stack_policy?:    bool
		stack_resources?: bool
		stack_template?:  bool
		all_facts?:       bool
		stack_events?:    bool
	}
}

ec2_vpc_endpoint :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_endpoint: {
		client_token?: string
		policy_file?:  string
		route_table_ids?: [...string]
		service?:         string
		vpc_id?:          string
		wait?:            bool
		wait_timeout?:    int
		policy?:          string
		state?:           string
		vpc_endpoint_id?: string
	}
}

ecs_task :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ecs_task: {
		container_instances?: [...string]
		overrides?: {...}
		started_by?:      string
		task_definition?: string
		cluster?:         string
		count?:           int
		launch_type?:     string
		network_configuration?: {...}
		operation: string
		task?:     string
	}
}

route53_health_check :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	route53_health_check: {
		type:              string
		failure_threshold: int
		ip_address?:       string
		port?:             int
		request_interval:  int
		resource_path?:    string
		state:             string
		fqdn?:             string
		string_match?:     string
	}
}

iam_mfa_device_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam_mfa_device_info: {
		user_name?: string
	}
}

lambda_event :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	lambda_event: {
		version?:            int
		alias:               string
		event_source?:       string
		lambda_function_arn: string
		source_params: {...}
		state: string
	}
}

aws_eks_cluster :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_eks_cluster: {
		wait?:         bool
		wait_timeout?: int
		name:          string
		role_arn?:     string
		security_groups?: [...string]
		state?: string
		subnets?: [...string]
		version?: string
	}
}

aws_region_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_region_info: {
		filters?: {...}
	}
}

aws_secret :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_secret: {
		kms_key_id?:        string
		name:               string
		secret_type?:       string
		state?:             string
		description?:       string
		rotation_interval?: int
		rotation_lambda?:   string
		secret?:            string
		tags?: {...}
		recovery_window?: int
	}
}

aws_ses_identity_policy :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_ses_identity_policy: {
		policy?:     string
		policy_name: string
		state?:      string
		identity:    string
	}
}

ec2_metadata_facts :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_metadata_facts: {
	}
}

ecs_cluster :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ecs_cluster: {
		delay?:  int
		name:    string
		repeat?: int
		state:   string
	}
}

rds_subnet_group :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	rds_subnet_group: {
		description?: string
		name:         string
		state:        string
		subnets?: [...]
	}
}

aws_codebuild :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_codebuild: {
		description?:    string
		encryption_key?: string
		environment: {...}
		service_role?:       string
		timeout_in_minutes?: int
		tags?: [...{...}]
		vpc_config?: {...}
		artifacts: {...}
		cache?: {...}
		name: string
		source: {...}
		state?: string
	}
}

ec2_scaling_policy :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_scaling_policy: {
		min_adjustment_step?: int
		name:                 string
		scaling_adjustment?:  int
		state:                string
		adjustment_type?:     string
		asg_name:             string
		cooldown?:            int
	}
}

ec2_snapshot :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_snapshot: {
		device_name?:           string
		snapshot_id?:           string
		wait_timeout?:          int
		description?:           string
		instance_id?:           string
		last_snapshot_min_age?: int
		snapshot_tags?: {...}
		state?:     string
		volume_id?: string
		wait?:      bool
	}
}

ec2_vpc_nat_gateway_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_nat_gateway_info: {
		filters?: {...}
		nat_gateway_ids?: [...string]
	}
}

cloudwatchlogs_log_group :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	cloudwatchlogs_log_group: {
		retention?: int
		state?:     string
		tags?: {...}
		kms_key_id?:    string
		log_group_name: string
		overwrite?:     bool
	}
}

ec2_elb :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_elb: {
		enable_availability_zone?: bool
		instance_id:               string
		state:                     string
		wait?:                     bool
		wait_timeout?:             int
		ec2_elbs?: [...]
	}
}

aws_config_recorder :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_config_recorder: {
		name: string
		recording_group?: {...}
		role_arn?: string
		state?:    string
	}
}

aws_direct_connect_connection :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_direct_connect_connection: {
		connection_id?:          string
		forced_update?:          bool
		link_aggregation_group?: string
		location?:               string
		name?:                   string
		state?:                  string
		bandwidth?:              string
	}
}

aws_direct_connect_virtual_interface :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_direct_connect_virtual_interface: {
		customer_address?:   string
		id_to_associate?:    string
		public?:             bool
		virtual_gateway_id?: string
		vlan?:               int
		address_type?:       string
		amazon_address?:     string
		authentication_key?: string
		bgp_asn?:            int
		cidr?: [...string]
		name?:                 string
		state?:                string
		virtual_interface_id?: string
	}
}

aws_elasticbeanstalk_app :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_elasticbeanstalk_app: {
		app_name?:           string
		description?:        string
		state?:              string
		terminate_by_force?: bool
	}
}

aws_ses_identity :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_ses_identity: {
		complaint_notifications?: {...}
		delivery_notifications?: {...}
		feedback_forwarding?: bool
		identity:             string
		state?:               string
		bounce_notifications?: {...}
	}
}

aws_waf_web_acl :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_waf_web_acl: {
		state?:          string
		waf_regional?:   bool
		default_action?: string
		metric_name?:    string
		name:            string
		purge_rules?:    bool
		rules?: [...{...}]
	}
}

ec2_vpc_net_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_net_info: {
		filters?: {...}
		vpc_ids?: [...string]
	}
}

iam_group :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam_group: {
		managed_policy?: [...]
		name:          string
		purge_policy?: bool
		purge_users?:  bool
		state:         string
		users?: [...]
	}
}

iam_password_policy :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam_password_policy: {
		require_lowercase?: bool
		require_symbols?:   bool
		allow_pw_change?:   bool
		min_pw_length?:     int
		pw_reuse_prevent?:  int
		require_uppercase?: bool
		state:              string
		pw_expire?:         bool
		pw_max_age?:        int
		require_numbers?:   bool
	}
}

lambda :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	lambda: {
		state?:             string
		memory_size?:       int
		name:               string
		s3_object_version?: string
		vpc_security_group_ids?: [...string]
		zip_file?: string
		environment_variables?: {...}
		handler?:   string
		s3_bucket?: string
		tags?: {...}
		tracing_mode?: string
		description?:  string
		role?:         string
		runtime?:      string
		vpc_subnet_ids?: [...string]
		dead_letter_arn?: string
		s3_key?:          string
		timeout?:         int
	}
}

lambda_policy :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	lambda_policy: {
		statement_id:        string
		version?:            int
		action:              string
		function_name:       string
		source_account?:     string
		source_arn?:         string
		state?:              string
		alias?:              string
		event_source_token?: string
		principal:           string
	}
}

aws_api_gateway :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_api_gateway: {
		deploy_desc?:  string
		stage?:        string
		state?:        string
		swagger_dict?: string
		swagger_file?: string
		swagger_text?: string
		api_id?:       string
	}
}

dms_replication_subnet_group :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	dms_replication_subnet_group: {
		state?: string
		subnet_ids?: [...string]
		description?: string
		identifier?:  string
	}
}

ec2_instance :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_instance: {
		availability_zone?: string
		image?: {...}
		security_group?: string
		tags?: {...}
		instance_initiated_shutdown_behavior?: string
		name?:                                 string
		placement_group?:                      string
		security_groups?: [...]
		network?: {...}
		state?:         string
		user_data?:     string
		instance_type?: string
		key_name?:      string
		launch_template?: {...}
		termination_protection?: bool
		tower_callback?: {...}
		volumes?: [...]
		vpc_subnet_id?:            string
		wait?:                     bool
		wait_timeout?:             int
		cpu_credit_specification?: string
		detailed_monitoring?:      bool
		instance_role?:            string
		ebs_optimized?:            bool
		purge_tags?:               bool
		cpu_options?: {...}
		filters?: {...}
		image_id?: string
		instance_ids?: [...]
		tenancy?: string
	}
}

ec2_vpc_dhcp_option :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_dhcp_option: {
		dhcp_options_id?:  string
		domain_name?:      string
		inherit_existing?: bool
		netbios_name_servers?: [...string]
		netbios_node_type?: int
		tags?: {...}
		delete_old?: bool
		dns_servers?: [...string]
		ntp_servers?: [...string]
		state?:  string
		vpc_id?: string
	}
}

ec2_vpc_endpoint_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_endpoint_info: {
		filters?: {...}
		query: string
		vpc_endpoint_ids?: [...string]
	}
}

ec2_vpc_net :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_net: {
		dns_hostnames?: bool
		dns_support?:   bool
		name:           string
		tags?: {...}
		cidr_block: [...string]
		dhcp_opts_id?: string
		ipv6_cidr?:    bool
		multi_ok?:     bool
		purge_cidrs?:  bool
		state?:        string
		tenancy?:      string
	}
}

sts_assume_role :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	sts_assume_role: {
		duration_seconds?:  int
		external_id?:       string
		mfa_serial_number?: string
		mfa_token?:         string
		policy?:            string
		role_arn:           string
		role_session_name:  string
	}
}

aws_ses_rule_set :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_ses_rule_set: {
		active?: bool
		force?:  bool
		name:    string
		state?:  string
	}
}

cloudfront_distribution :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	cloudfront_distribution: {
		default_origin_domain_name?: string
		logging?: {...}
		comment?: string
		default_cache_behavior?: {...}
		distribution_id?: string
		enabled?:         bool
		origins?: [...{...}]
		tags?: {...}
		default_root_object?:          string
		e_tag?:                        string
		purge_origins?:                bool
		wait?:                         bool
		state?:                        string
		caller_reference?:             string
		default_origin_path?:          string
		http_version?:                 string
		purge_aliases?:                bool
		purge_cache_behaviors?:        bool
		purge_custom_error_responses?: bool
		cache_behaviors?: [...{...}]
		ipv6_enabled?: bool
		purge_tags?:   bool
		viewer_certificate?: {...}
		alias?: string
		restrictions?: {...}
		aliases?: [...string]
		price_class?:  string
		wait_timeout?: int
		web_acl_id?:   string
		custom_error_responses?: [...{...}]
	}
}

cloudtrail :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	cloudtrail: {
		enable_log_file_validation?: bool
		enable_logging?:             bool
		include_global_events?:      bool
		kms_key_id?:                 string
		s3_key_prefix?:              string
		tags?: {...}
		cloudwatch_logs_role_arn?:      string
		is_multi_region_trail?:         bool
		name:                           string
		s3_bucket_name?:                string
		sns_topic_name?:                string
		state:                          string
		cloudwatch_logs_log_group_arn?: string
	}
}

ec2_vpc_nacl :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_nacl: {
		subnets?: [...]
		tags?: {...}
		vpc_id?: string
		egress?: [...]
		ingress?: [...]
		nacl_id?: string
		name?:    string
		state?:   string
	}
}

kinesis_stream :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	kinesis_stream: {
		name:              string
		retention_period?: int
		wait_timeout?:     int
		encryption_state?: string
		key_id?:           string
		shards?:           int
		state?:            string
		tags?: {...}
		wait?:            bool
		encryption_type?: string
	}
}

redshift_subnet_group :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	redshift_subnet_group: {
		state?:             string
		group_description?: string
		group_name:         string
		group_subnets?: [...string]
	}
}

dynamodb_ttl :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	dynamodb_ttl: {
		attribute_name: string
		state?:         string
		table_name:     string
	}
}

elasticache_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elasticache_info: {
		name?: string
	}
}

iam_user_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam_user_info: {
		group?: string
		name?:  string
		path?:  string
	}
}

route53_zone :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	route53_zone: {
		comment?:           string
		delegation_set_id?: string
		hosted_zone_id?:    string
		state?:             string
		vpc_id?:            string
		vpc_region?:        string
		zone:               string
	}
}

sqs_queue :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	sqs_queue: {
		default_visibility_timeout?: int
		delivery_delay?:             int
		maximum_message_size?:       int
		message_retention_period?:   int
		name:                        string
		policy?: {...}
		receive_message_wait_time?: int
		redrive_policy?: {...}
		state?: string
	}
}

ec2_lc :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_lc: {
		classic_link_vpc_id?: string
		instance_type:        string
		security_groups?: [...string]
		spot_price?: float
		user_data?:  string
		volumes?: [...{...}]
		vpc_id?:                      string
		assign_public_ip?:            bool
		ebs_optimized?:               bool
		key_name?:                    string
		ramdisk_id?:                  string
		associate_public_ip_address?: bool
		instance_id?:                 string
		placement_tenancy?:           string
		image_id?:                    string
		instance_monitoring?:         bool
		instance_profile_name?:       string
		kernel_id?:                   string
		name:                         string
		state?:                       string
		user_data_path?:              string
		classic_link_vpc_security_groups?: [...string]
	}
}

iam_user :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam_user: {
		managed_policy?: [...]
		name:          string
		purge_policy?: bool
		state:         string
	}
}

lightsail :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	lightsail: {
		wait_timeout?:  int
		zone?:          string
		blueprint_id?:  string
		bundle_id?:     string
		name:           string
		state?:         string
		user_data?:     string
		key_pair_name?: string
		wait?:          bool
	}
}

aws_az_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_az_info: {
		filters?: {...}
	}
}

ec2_ami_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_ami_info: {
		describe_image_attributes?: bool
		executable_users?: [...string]
		filters?: {...}
		image_ids?: [...string]
		owners?: [...string]
	}
}

ec2_elb_lb :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_elb_lb: {
		idle_timeout?:       int
		purge_instance_ids?: bool
		purge_listeners?:    bool
		purge_subnets?:      bool
		purge_zones?:        bool
		scheme?:             string
		stickiness?: {...}
		wait?:                    bool
		cross_az_load_balancing?: bool
		instance_ids?: [...]
		listeners?: [...]
		name: string
		access_logs?: {...}
		connection_draining_timeout?: int
		security_group_names?: [...]
		state: string
		tags?: {...}
		wait_timeout?: int
		zones?: [...]
		health_check?: {...}
		security_group_ids?: [...]
		subnets?: [...]
		validate_certs?: bool
	}
}

ec2_snapshot_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_snapshot_info: {
		filters?: {...}
		owner_ids?: [...string]
		restorable_by_user_ids?: [...string]
		snapshot_ids?: [...string]
	}
}

ecs_ecr :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ecs_ecr: {
		delete_policy?:        bool
		force_set_policy?:     bool
		image_tag_mutability?: string
		name:                  string
		policy?:               string
		registry_id?:          string
		state?:                string
	}
}

elb_application_lb :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elb_application_lb: {
		name:             string
		purge_listeners?: bool
		subnets?: [...]
		http2?:        bool
		idle_timeout?: int
		tags?: {...}
		wait?: bool
		listeners?: [...]
		scheme?:                string
		access_logs_s3_prefix?: string
		state?:                 string
		deletion_protection?:   bool
		purge_rules?:           bool
		purge_tags?:            bool
		security_groups?: [...]
		wait_timeout?:          int
		access_logs_enabled?:   bool
		access_logs_s3_bucket?: string
	}
}

aws_config_rule :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_config_rule: {
		description?:         string
		execution_frequency?: string
		input_parameters?:    string
		name:                 string
		scope?: {...}
		source?: {...}
		state?: string
	}
}

aws_netapp_cvs_FileSystems :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_netapp_cvs_FileSystems: {
		region:        string
		serviceLevel?: string
		state:         string
		creationToken: string
		exportPolicy?: {...}
		quotaInBytes?: int
	}
}

elb_classic_lb_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elb_classic_lb_info: {
		names?: [...]
	}
}

s3_bucket :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	s3_bucket: {
		encryption?: string
		name:        string
		purge_tags?: bool
		s3_url?:     string
		tags?: {...}
		ceph?:              bool
		encryption_key_id?: string
		force?:             bool
		policy?:            string
		requester_pays?:    bool
		state?:             string
		versioning?:        bool
	}
}

ec2_vpc_peer :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_peer: {
		state?: string
		tags?: {...}
		vpc_id?:        string
		peer_owner_id?: string
		peer_region?:   string
		peer_vpc_id?:   string
		peering_id?:    string
	}
}

ec2_vpc_route_table_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_route_table_info: {
		filters?: {...}
	}
}

aws_acm_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_acm_info: {
		statuses?: [...string]
		tags?: {...}
		certificate_arn?: string
		domain_name?:     string
	}
}

aws_batch_compute_environment :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_batch_compute_environment: {
		compute_environment_name: string
		service_role:             string
		state?:                   string
		subnets: [...string]
		bid_percentage?:            int
		ec2_key_pair?:              string
		minv_cpus:                  int
		type:                       string
		compute_environment_state?: string
		desiredv_cpus?:             int
		image_id?:                  string
		instance_types: [...string]
		maxv_cpus:            int
		spot_iam_fleet_role?: string
		tags?: {...}
		compute_resource_type: string
		instance_role:         string
		security_group_ids: [...string]
	}
}

cloudformation :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	cloudformation: {
		create_timeout?: int
		stack_name:      string
		tags?: {...}
		termination_protection?: bool
		capabilities?: [...string]
		on_create_failure?: string
		template_body?:     string
		template_parameters?: {...}
		template_url?:      string
		backoff_delay?:     int
		backoff_max_delay?: int
		create_changeset?:  bool
		disable_rollback?:  bool
		state?:             string
		template_format?:   string
		backoff_retries?:   int
		changeset_name?:    string
		events_limit?:      int
		notification_arns?: string
		role_arn?:          string
		stack_policy?:      string
		template?:          string
	}
}

ec2_asg :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_asg: {
		replace_batch_size?:    int
		desired_capacity?:      int
		metrics_granularity?:   string
		min_size?:              int
		replace_all_instances?: bool
		state?:                 string
		health_check_type?:     string
		launch_config_name?:    string
		name:                   string
		metrics_list?: [...string]
		vpc_zone_identifier?: [...string]
		health_check_period?: int
		placement_group?:     string
		termination_policies?: [...string]
		target_group_arns?: [...string]
		lc_check?: bool
		load_balancers?: [...string]
		replace_instances?: [...string]
		default_cooldown?:   int
		metrics_collection?: bool
		notification_topic?: string
		suspend_processes?: [...string]
		max_size?: int
		notification_types?: [...string]
		tags?: [...{...}]
		wait_for_instances?: bool
		wait_timeout?:       int
		availability_zones?: [...string]
		launch_template?: {...}
		lt_check?: bool
	}
}

ec2_elb_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_elb_info: {
		names?: [...]
	}
}

ec2_vpc_igw_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_igw_info: {
		filters?: {...}
		internet_gateway_ids?: [...string]
	}
}

elasticache_snapshot :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elasticache_snapshot: {
		bucket?:         string
		cluster_id?:     string
		name:            string
		replication_id?: string
		state?:          string
		target?:         string
	}
}

lambda_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	lambda_info: {
		event_source_arn?: string
		function_name?:    string
		query:             string
	}
}

rds_instance_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	rds_instance_info: {
		db_instance_identifier?: string
		filters?: {...}
	}
}

ec2_transit_gateway :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_transit_gateway: {
		auto_associate?: bool
		auto_attach?:    bool
		description?:    string
		state?:          string
		tags?: {...}
		transit_gateway_id?: string
		vpn_ecmp_support?:   bool
		wait?:               bool
		wait_timeout?:       int
		asn?:                int
		auto_propagate?:     bool
		dns_support?:        bool
		purge_tags?:         bool
	}
}

ec2_win_password :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_win_password: {
		key_file?:       string
		key_passphrase?: string
		wait?:           bool
		wait_timeout?:   int
		instance_id:     string
		key_data?:       string
	}
}

aws_inspector_target :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_inspector_target: {
		name:   string
		state?: string
		tags?: {...}
	}
}

aws_kms_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_kms_info: {
		filters?: {...}
		pending_deletion?: bool
	}
}

ec2_asg_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_asg_info: {
		name?: string
		tags?: {...}
	}
}

ec2_eip :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_eip: {
		release_on_disassociation?: bool
		state?:                     string
		tag_name?:                  string
		tag_value?:                 string
		wait_timeout?:              int
		allow_reassociation?:       bool
		device_id?:                 string
		in_vpc?:                    bool
		private_ip_address?:        string
		public_ip?:                 string
		public_ipv4_pool?:          string
		reuse_existing_ip_allowed?: bool
	}
}

ec2_group :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_group: {
		state?:       string
		vpc_id?:      string
		description?: string
		group_id?:    string
		name?:        string
		purge_rules?: bool
		purge_tags?:  bool
		rules_egress?: [...{...}]
		purge_rules_egress?: bool
		rules?: [...{...}]
		tags?: {...}
	}
}

ec2_lc_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_lc_info: {
		name?: [...string]
		sort?:       string
		sort_end?:   int
		sort_order?: string
		sort_start?: int
	}
}

efs_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	efs_info: {
		id?:   string
		name?: string
		tags?: {...}
		targets?: [...string]
	}
}

iam_policy_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam_policy_info: {
		iam_name:     string
		iam_type:     string
		policy_name?: string
	}
}

iam_role :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam_role: {
		max_session_duration?: int
		name:                  string
		purge_policies?:       bool
		tags?: {...}
		boundary?:                string
		create_instance_profile?: bool
		managed_policy?: [...]
		path?:                        string
		purge_tags?:                  bool
		state?:                       string
		assume_role_policy_document?: string
		delete_instance_profile?:     bool
		description?:                 string
	}
}

iam_saml_federation :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam_saml_federation: {
		name:                    string
		saml_metadata_document?: string
		state?:                  string
	}
}

aws_direct_connect_gateway :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_direct_connect_gateway: {
		direct_connect_gateway_id?: string
		name?:                      string
		state?:                     string
		virtual_gateway_id?:        string
		wait_timeout?:              int
		amazon_asn:                 string
	}
}

aws_direct_connect_link_aggregation_group :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_direct_connect_link_aggregation_group: {
		name?:                       string
		num_connections?:            int
		bandwidth?:                  string
		connection_id?:              string
		delete_with_disassociation?: bool
		link_aggregation_group_id?:  string
		location?:                   string
		min_links?:                  int
		force_delete?:               bool
		state?:                      string
		wait?:                       bool
		wait_timeout?:               int
	}
}

efs :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	efs: {
		name?:             string
		performance_mode?: string
		purge_tags?:       bool
		state?:            string
		targets?: [...{...}]
		encrypt?:                         bool
		id?:                              string
		kms_key_id?:                      string
		wait?:                            bool
		wait_timeout?:                    int
		provisioned_throughput_in_mibps?: float
		tags?: {...}
		throughput_mode?: string
	}
}

rds_param_group :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	rds_param_group: {
		purge_tags?: bool
		state:       string
		tags?: {...}
		description?: string
		engine?:      string
		immediate?:   bool
		name:         string
		params?: {...}
	}
}

redshift_cross_region_snapshots :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	redshift_cross_region_snapshots: {
		snapshot_retention_period: int
		state:                     string
		cluster_name:              string
		destination_region:        string
		region:                    string
		snapshot_copy_grant?:      string
	}
}

ec2 :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2: {
		monitoring?:    bool
		region?:        string
		count_tag?:     _
		ebs_optimized?: bool
		image:          string
		kernel?:        string
		network_interfaces?: [...]
		placement_group?:   string
		private_ip?:        string
		source_dest_check?: bool
		id?:                string
		spot_type?:         string
		spot_wait_timeout?: int
		tenancy?:           string
		vpc_subnet_id?:     string
		exact_count?:       int
		group_id?: [...]
		instance_ids?: [...]
		instance_initiated_shutdown_behavior?: string
		instance_type:                         string
		ramdisk?:                              string
		spot_price?:                           string
		termination_protection?:               bool
		group?: [...]
		instance_tags?: {...}
		key_name?:              string
		spot_launch_group?:     string
		wait?:                  bool
		assign_public_ip?:      bool
		count?:                 int
		instance_profile_name?: string
		user_data?:             string
		wait_timeout?:          int
		state?:                 string
		volumes?: [...]
		zone?: string
	}
}

ec2_tag :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_tag: {
		resource: string
		state?:   string
		tags: {...}
		purge_tags?: bool
	}
}

ec2_vpc_vgw_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_vgw_info: {
		vpn_gateway_ids?: [...string]
		filters?: {...}
	}
}

cloudfront_origin_access_identity :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	cloudfront_origin_access_identity: {
		origin_access_identity_id?: string
		state?:                     string
		caller_reference?:          string
		comment?:                   string
	}
}

ec2_placement_group :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_placement_group: {
		name:      string
		state?:    string
		strategy?: string
	}
}

ec2_vol_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vol_info: {
		filters?: {...}
	}
}

elb_classic_lb :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elb_classic_lb: {
		listeners?: [...]
		scheme?: string
		stickiness?: {...}
		subnets?: [...]
		validate_certs?: bool
		access_logs?: {...}
		purge_subnets?: bool
		security_group_ids?: [...]
		cross_az_load_balancing?: bool
		purge_listeners?:         bool
		security_group_names?: [...]
		tags?: {...}
		wait?:         bool
		wait_timeout?: int
		zones?: [...]
		connection_draining_timeout?: int
		health_check?: {...}
		idle_timeout?: int
		instance_ids?: [...]
		name:                string
		purge_instance_ids?: bool
		purge_zones?:        bool
		state:               string
	}
}

lambda_alias :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	lambda_alias: {
		name:              string
		state:             string
		description?:      string
		function_name:     string
		function_version?: int
	}
}

aws_netapp_cvs_pool :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_netapp_cvs_pool: {
		from_name?:    string
		name:          string
		region:        string
		serviceLevel?: string
		sizeInBytes?:  int
		state:         string
		vendorID?:     string
	}
}

aws_step_functions_state_machine :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_step_functions_state_machine: {
		definition?: string
		name:        string
		purge_tags?: bool
		role_arn?:   string
		state?:      string
		tags?: {...}
	}
}

ec2_instance_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_instance_info: {
		instance_ids?: [...]
		filters?: {...}
	}
}

ec2_lc_find :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_lc_find: {
		name_regex:  string
		sort_order?: string
		limit?:      int
	}
}

ec2_metric_alarm :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_metric_alarm: {
		statistic?: string
		threshold?: float
		name:       string
		ok_actions?: [...string]
		period?: int
		dimensions?: {...}
		insufficient_data_actions?: [...string]
		evaluation_periods?: int
		metric?:             string
		comparison?:         string
		description?:        string
		state?:              string
		unit?:               string
		alarm_actions?: [...string]
		namespace?: string
	}
}

ec2_vpc_dhcp_option_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_dhcp_option_info: {
		dhcp_options_ids?: [...string]
		dry_run?: bool
		filters?: {...}
	}
}

redshift_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	redshift_info: {
		cluster_identifier?: string
		tags?: {...}
	}
}

s3_logging :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	s3_logging: {
		name:           string
		state?:         string
		target_bucket?: string
		target_prefix?: string
	}
}

aws_s3 :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_s3: {
		dest?: string
		metadata?: {...}
		src?:                   string
		version?:               string
		object?:                string
		overwrite?:             string
		bucket:                 string
		encrypt?:               bool
		encryption_kms_key_id?: string
		headers?: {...}
		ignore_nonexistent_bucket?: bool
		mode:                       string
		permission?: [...string]
		encryption_mode?: string
		expiry?:          int
		marker?:          string
		max_keys?:        int
		retries?:         int
		rgw?:             bool
		dualstack?:       bool
		prefix?:          string
		s3_url?:          string
	}
}

cloudfront_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	cloudfront_info: {
		distribution?:                     bool
		distribution_config?:              bool
		distribution_id?:                  string
		invalidation?:                     bool
		list_distributions?:               bool
		list_streaming_distributions?:     bool
		origin_access_identity?:           bool
		domain_name_alias?:                string
		list_invalidations?:               bool
		list_origin_access_identities?:    bool
		origin_access_identity_config?:    bool
		origin_access_identity_id?:        string
		streaming_distribution?:           bool
		streaming_distribution_config?:    bool
		list_distributions_by_web_acl_id?: bool
		all_lists?:                        bool
		invalidation_id?:                  string
		summary?:                          bool
	}
}

route53_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	route53_info: {
		health_check_id?: string
		max_items?:       string
		next_marker?:     string
		resource_id?: [...string]
		start_record_name?:   string
		type?:                string
		delegation_set_id?:   string
		dns_name?:            string
		hosted_zone_id?:      string
		hosted_zone_method?:  string
		query:                string
		change_id?:           string
		health_check_method?: string
	}
}

ec2_eni_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_eni_info: {
		filters?: {...}
	}
}

ec2_placement_group_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_placement_group_info: {
		names?: [...string]
	}
}

ecs_taskdefinition_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ecs_taskdefinition_info: {
		task_definition: string
	}
}

iam_server_certificate_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam_server_certificate_info: {
		name: string
	}
}

ec2_vpc_vpn_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_vpn_info: {
		filters?: {...}
		vpn_connection_ids?: [...string]
	}
}

elb_target_group_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elb_target_group_info: {
		collect_targets_health?: bool
		load_balancer_arn?:      string
		names?: [...]
		target_group_arns?: [...]
	}
}

sns :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	sns: {
		http?:              string
		lambda?:            string
		message_structure?: string
		msg:                string
		topic:              string
		sms?:               string
		sqs?:               string
		subject?:           string
		application?:       string
		email?:             string
		email_json?:        string
		https?:             string
		message_attributes?: {...}
	}
}

aws_sgw_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_sgw_info: {
		gather_tapes?:       bool
		gather_volumes?:     bool
		gather_file_shares?: bool
		gather_local_disks?: bool
	}
}

aws_waf_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_waf_info: {
		waf_regional?: bool
		name?:         string
	}
}

ec2_group_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_group_info: {
		filters?: {...}
	}
}

ec2_vpc_peering_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_peering_info: {
		filters?: {...}
		peer_connection_ids?: [...string]
	}
}

ec2_vpc_route_table :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_route_table: {
		tags?: {...}
		vpc_id:  string
		lookup?: string
		propagating_vgw_ids?: [...string]
		purge_tags?:     bool
		route_table_id?: string
		state?:          string
		purge_routes?:   bool
		purge_subnets?:  bool
		routes?: [...string]
		subnets?: [...string]
	}
}

ecs_attribute :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ecs_attribute: {
		attributes: [...{...}]
		cluster:         string
		ec2_instance_id: string
		state?:          string
	}
}

aws_kms :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_kms: {
		alias?:                        string
		description?:                  string
		enabled?:                      bool
		policy_clean_invalid_entries?: bool
		policy_mode?:                  string
		purge_grants?:                 bool
		tags?: {...}
		policy?: string
		policy_grant_types?: [...string]
		policy_role_arn?: string
		state?:           string
		key_id?:          string
		purge_tags?:      bool
		grants?: [...{...}]
		policy_role_name?: string
	}
}

cloudwatchevent_rule :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	cloudwatchevent_rule: {
		description?:         string
		event_pattern?:       string
		name:                 string
		role_arn?:            string
		schedule_expression?: string
		state?:               string
		targets?: [...{...}]
	}
}

ec2_eni :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_eni: {
		instance_id?:                        string
		private_ip_address?:                 string
		secondary_private_ip_address_count?: int
		security_groups?: [...string]
		subnet_id?:                            string
		allow_reassignment?:                   bool
		device_index?:                         int
		description?:                          string
		purge_secondary_private_ip_addresses?: bool
		attached?:                             bool
		delete_on_termination?:                bool
		eni_id?:                               string
		secondary_private_ip_addresses?: [...string]
		state?:             string
		force_detach?:      bool
		source_dest_check?: bool
	}
}

redshift :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	redshift: {
		cluster_type?:                string
		command:                      string
		identifier:                   string
		number_of_nodes?:             int
		skip_final_cluster_snapshot?: bool
		vpc_security_group_ids?: [...string]
		cluster_subnet_group_name?:    string
		node_type?:                    string
		password?:                     string
		preferred_maintenance_window?: string
		wait_timeout?:                 int
		cluster_security_groups?: [...string]
		enhanced_vpc_routing?:                bool
		wait?:                                bool
		encrypted?:                           bool
		final_cluster_snapshot_identifier?:   string
		availability_zone?:                   string
		cluster_version?:                     string
		db_name?:                             string
		new_cluster_identifier?:              string
		username?:                            string
		allow_version_upgrade?:               bool
		elastic_ip?:                          string
		port?:                                int
		publicly_accessible?:                 bool
		cluster_parameter_group_name?:        string
		automated_snapshot_retention_period?: int
	}
}

s3_lifecycle :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	s3_lifecycle: {
		status?:                             string
		storage_class?:                      string
		transition_date?:                    string
		rule_id?:                            string
		name:                                string
		noncurrent_version_transition_days?: int
		purge_transitions?:                  bool
		prefix?:                             string
		requester_pays?:                     bool
		state?:                              string
		transition_days?:                    int
		expiration_date?:                    string
		expiration_days?:                    int
		noncurrent_version_transitions?: [...]
		noncurrent_version_expiration_days?: int
		noncurrent_version_storage_class?:   string
		transitions?: [...]
	}
}

sts_session_token :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	sts_session_token: {
		duration_seconds?:  int
		mfa_serial_number?: string
		mfa_token?:         string
	}
}

aws_config_aggregator :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_config_aggregator: {
		account_sources?: [...{...}]
		name: string
		organization_source?: {...}
		state?: string
	}
}

aws_ssm_parameter_store :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_ssm_parameter_store: {
		key_id?:          string
		name:             string
		overwrite_value?: string
		state?:           string
		string_type?:     string
		value?:           string
		decryption?:      bool
		description?:     string
	}
}

ec2_vpc_egress_igw :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_egress_igw: {
		vpc_id: string
		state?: string
	}
}

elb_application_lb_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elb_application_lb_info: {
		load_balancer_arns?: [...]
		names?: [...]
	}
}

elb_target :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elb_target: {
		state:                  string
		target_az?:             string
		target_group_name?:     string
		target_status_timeout?: int
		deregister_unused?:     bool
		target_id:              string
		target_port?:           int
		target_status?:         string
		target_group_arn?:      string
	}
}

s3_bucket_notification :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	s3_bucket_notification: {
		bucket_name: string
		events: [...]
		suffix?:              string
		state:                string
		event_name:           string
		lambda_alias?:        string
		lambda_function_arn?: string
		lambda_version?:      int
		prefix?:              string
	}
}

rds_snapshot_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	rds_snapshot_info: {
		db_snapshot_identifier?:         string
		snapshot_type?:                  string
		db_cluster_identifier?:          string
		db_cluster_snapshot_identifier?: string
		db_instance_identifier?:         string
	}
}

s3_sync :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	s3_sync: {
		delete?:               bool
		exclude?:              string
		file_change_strategy?: string
		include?:              string
		mode?:                 string
		permission?:           string
		retries?:              string
		bucket:                string
		cache_control?:        string
		file_root:             string
		key_prefix?:           string
		mime_map?: {...}
	}
}

aws_batch_job_definition :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_batch_job_definition: {
		parameters?: {...}
		readonly_root_filesystem?: string
		type:                      string
		memory?:                   int
		mount_points?: [...{...}]
		privileged?: string
		attempts?:   int
		environment?: [...{...}]
		image?:              string
		job_definition_arn?: string
		job_role_arn?:       string
		ulimits?: [...{...}]
		user?:  string
		vcpus?: int
		volumes?: [...{...}]
		command?: [...string]
		job_definition_name: string
		state?:              string
	}
}

aws_batch_job_queue :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_batch_job_queue: {
		state?: string
		compute_environment_order: [...{...}]
		job_queue_name:   string
		job_queue_state?: string
		priority:         int
	}
}

aws_codecommit :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_codecommit: {
		state:        string
		description?: string
		name:         string
	}
}

ecs_service :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ecs_service: {
		network_configuration?: {...}
		placement_constraints?: [...{...}]
		task_definition?: string
		client_token?:    string
		load_balancers?: [...string]
		name:                  string
		role?:                 string
		state:                 string
		desired_count?:        int
		force_new_deployment?: bool
		launch_type?:          string
		placement_strategy?: [...{...}]
		scheduling_strategy?: string
		service_registries?: [...{...}]
		cluster?: string
		delay?:   int
		deployment_configuration?: {...}
		health_check_grace_period_seconds?: int
		repeat?:                            int
	}
}

elb_instance :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elb_instance: {
		validate_certs?: bool
		wait?:           bool
		wait_timeout?:   int
		ec2_elbs?: [...]
		enable_availability_zone?: bool
		instance_id:               string
		state:                     string
	}
}

iam_role_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	iam_role_info: {
		name?:        string
		path_prefix?: string
	}
}

elb_network_lb :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elb_network_lb: {
		deletion_protection?: bool
		listeners?: [...]
		name:                       string
		purge_listeners?:           bool
		purge_tags?:                bool
		state:                      string
		wait?:                      bool
		cross_zone_load_balancing?: bool
		wait_timeout?:              int
		subnet_mappings?: [...]
		subnets?: [...]
		tags?: {...}
		scheme?: string
	}
}

rds :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	rds: {
		password?:       string
		zone?:           string
		force_failover?: bool
		iops?:           string
		option_group?:   string
		tags?: {...}
		vpc_security_groups?: [...string]
		command:              string
		security_groups?:     string
		snapshot?:            string
		character_set_name?:  string
		instance_name?:       string
		publicly_accessible?: string
		upgrade?:             bool
		wait_timeout?:        int
		backup_retention?:    string
		db_name?:             string
		multi_zone?:          bool
		engine_version?:      string
		parameter_group?:     string
		port?:                int
		apply_immediately?:   bool
		backup_window?:       string
		maint_window?:        string
		source_instance?:     string
		subnet?:              string
		username?:            string
		wait?:                bool
		db_engine?:           string
		instance_type?:       string
		license_model?:       string
		new_instance_name?:   string
		size?:                string
	}
}

aws_netapp_cvs_snapshots :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_netapp_cvs_snapshots: {
		fileSystemId?: string
		from_name?:    string
		name:          string
		region:        string
		state:         string
	}
}

ec2_customer_gateway :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_customer_gateway: {
		name:       string
		routing?:   string
		state?:     string
		bgp_asn?:   int
		ip_address: string
	}
}

ec2_snapshot_copy :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_snapshot_copy: {
		encrypted?:         bool
		kms_key_id?:        string
		source_region:      string
		source_snapshot_id: string
		tags?: {...}
		wait?:         bool
		wait_timeout?: int
		description?:  string
	}
}

ec2_vpc_subnet :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_subnet: {
		ipv6_cidr?:  string
		map_public?: bool
		purge_tags?: bool
		tags?: {...}
		wait?:                  bool
		wait_timeout?:          int
		assign_instances_ipv6?: bool
		az?:                    string
		cidr?:                  string
		state?:                 string
		vpc_id:                 string
	}
}

ec2_vpc_subnet_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vpc_subnet_info: {
		filters?: {...}
		subnet_ids?: [...string]
	}
}

elasticache_subnet_group :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elasticache_subnet_group: {
		description?: string
		name:         string
		state:        string
		subnets?: [...string]
	}
}

rds_snapshot :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	rds_snapshot: {
		db_snapshot_identifier: string
		purge_tags?:            bool
		state?:                 string
		tags?: {...}
		wait?:                   bool
		wait_timeout?:           int
		db_instance_identifier?: string
	}
}

ecs_service_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ecs_service_info: {
		cluster?: string
		details?: bool
		events?:  bool
		service?: [...string]
	}
}

elasticache_parameter_group :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elasticache_parameter_group: {
		description?:  string
		group_family?: string
		name:          string
		state:         string
		values?: {...}
	}
}

aws_codepipeline :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_codepipeline: {
		artifact_store: {...}
		name:     string
		role_arn: string
		stages: [...{...}]
		state?:   string
		version?: int
	}
}

aws_netapp_cvs_active_directory :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	aws_netapp_cvs_active_directory: {
		DNS?:      string
		domain:    string
		netBIOS?:  string
		password?: string
		region:    string
		state:     string
		username?: string
	}
}

cloudformation_stack_set :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	cloudformation_stack_set: {
		failure_tolerance?: {...}
		parameters?: {...}
		state?: string
		accounts?: [...string]
		purge_stacks?:            bool
		template_body?:           string
		description?:             string
		template_url?:            string
		wait?:                    bool
		wait_timeout?:            int
		administration_role_arn?: string
		capabilities?: [...string]
		execution_role_name?: string
		name:                 string
		regions?: [...string]
		tags?: {...}
		template?: string
	}
}

cloudfront_invalidation :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	cloudfront_invalidation: {
		alias?:            string
		caller_reference?: string
		distribution_id?:  string
		target_paths: [...string]
	}
}

ec2_customer_gateway_info :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_customer_gateway_info: {
		customer_gateway_ids?: [...string]
		filters?: {...}
	}
}

ec2_vol :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	ec2_vol: {
		delete_on_termination?: bool
		iops?:                  int
		tags?: {...}
		volume_type?:    string
		snapshot?:       string
		state?:          string
		validate_certs?: bool
		encrypted?:      bool
		id?:             string
		instance?:       string
		kms_key_id?:     string
		name?:           string
		device_name?:    string
		volume_size?:    int
		zone?:           string
	}
}

elb_target_group :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	elb_target_group: {
		purge_tags?: bool
		targets?: [...]
		health_check_interval?: int
		health_check_timeout?:  int
		name:                   string
		vpc_id?:                string
		port?:                  int
		tags?: {...}
		target_type?:                   string
		healthy_threshold_count?:       int
		protocol?:                      string
		stickiness_lb_cookie_duration?: int
		stickiness_type?:               string
		successful_response_codes?:     string
		deregistration_delay_timeout?:  int
		health_check_port?:             string
		health_check_protocol?:         string
		unhealthy_threshold_count?:     int
		wait_timeout?:                  int
		stickiness_enabled?:            bool
		wait?:                          bool
		health_check_path?:             string
		modify_targets?:                bool
		state:                          string
	}
}

lambda_facts :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	lambda_facts: {
		function_name?:    string
		query:             string
		event_source_arn?: string
	}
}

s3_website :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	s3_website: {
		error_key?:             string
		name:                   string
		redirect_all_requests?: string
		state:                  string
		suffix?:                string
	}
}
