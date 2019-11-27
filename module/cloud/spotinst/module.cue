package spotinst

spotinst_aws_elastigroup :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	spotinst_aws_elastigroup: {

		// (String) The strategy orientation.

		availability_vs_cost: string

		// (Integer) The amount of time, in seconds, after the instance has launched to start and check its health.

		health_check_grace_period?: string

		// (Object) The Mesosphere integration configuration. Expects the following key - api_server (String)

		mesosphere?: string

		// (Integer) required if on demand is not set. The percentage of Spot instances to launch (0 - 100).

		risk?: string

		// (Integer) Time for instance to be drained from incoming requests and deregistered from ELB before termination.

		draining_timeout?: string

		// (List of Objects) a list of hash/dictionaries of EBS devices to reattach to the elastigroup when available; '[{"key":"value", "key":"value"}]'; keys allowed are - volume_ids (List of Strings), device_name (String)

		ebs_volume_pool?: string

		// (String) The instance profile iamRole name
		// Only use iam_role_arn, or iam_role_name

		iam_role_name?: string

		// (String) The group id if it already exists and you want to update, or delete it. This will not work unless the uniqueness_by field is set to id. When this is set, and the uniqueness_by field is set, the group will either be updated or deleted, but not created.

		id?: string

		// (Boolean) Describes whether instance Enhanced Monitoring is enabled

		monitoring: string

		// (String) On-demand instance type that will be provisioned

		on_demand_instance_type: string

		// (Object) Roll configuration.; If you would like the group to roll after updating, please use this feature. Accepts the following keys - batch_size_percentage(Integer, Required), grace_period - (Integer, Required), health_check_type(String, Optional)

		roll_config?: string

		// (List of Objects) a list of hash/dictionaries of Block Device Mappings for elastigroup instances; You can specify virtual devices and EBS volumes.; '[{"key":"value", "key":"value"}]'; keys allowed are device_name (List of Strings), virtual_name (String), no_device (String), ebs (Object, expects the following keys- delete_on_termination(Boolean), encrypted(Boolean), iops (Integer), snapshot_id(Integer), volume_type(String), volume_size(Integer))

		block_device_mappings?: string

		// (List of Strings) list of fields on which changes should be ignored when updating

		ignore_changes?: string

		// (String) Specify a Key Pair to attach to the instances

		key_pair: string

		// (List of Objects) a list of hash/dictionaries of network interfaces to add to the elastigroup; '[{"key":"value", "key":"value"}]'; keys allowed are - description (String), device_index (Integer), secondary_private_ip_address_count (Integer), associate_public_ip_address (Boolean), delete_on_termination (Boolean), groups (List of Strings), network_interface_id (String), private_ip_address (String), subnet_id (String), associate_ipv6_address (Boolean), private_ip_addresses (List of Objects, Keys are privateIpAddress (String, required) and primary (Boolean))

		network_interfaces?: string

		// (Integer) The number of instances to launch

		target: string

		// (Object) The Rancher integration configuration.; Expects the following keys - version (String), access_key (String), secret_key (String), master_host (String)

		rancher?: string

		// (Integer) How long the module should wait for instances before failing the action.; Only works if wait_for_instances is True.

		wait_timeout?: string

		// (String) Optional parameter that allows to set an account-id inside the module configuration By default this is retrieved from the credentials path

		account_id?: string

		// (String) Optional parameter that allows to set a non-default credentials path. Default is ~/.spotinst/credentials

		credentials_path?: string

		// (Object) The ECS integration configuration.; Expects the following key - cluster_name (String)

		ecs?: string

		// (List of Strings) List of ElasticIps Allocation Ids (Example C(eipalloc-9d4e16f8)) to associate to the group instances

		elastic_ips?: string

		// (Boolean) In case of no spots available, Elastigroup will launch an On-demand instance instead

		fallback_to_od?: bool

		// (String) The image Id used to launch the instance.; In case of conflict between Instance type and image type, an error will be returned

		image_id: string

		// (Integer) The upper limit number of instances that you can scale up to

		max_size: string

		// (Object) The Rightscale integration configuration.; Expects the following keys - account_id (String), refresh_token (String)

		right_scale?: string

		// (Integer) spin up time, in seconds, for the instance

		spin_up_time?: string

		// (List of tagKey:tagValue paris) a list of tags to configure in the elastigroup. Please specify list of keys and values (key colon value);

		tags?: string

		// (String) The capacity unit to launch instances by.

		unit: string

		// (List of Objects) a list of hash/dictionaries of scaling policies to configure in the elastigroup; '[{"key":"value", "key":"value"}]'; keys allowed are - policy_name (String, required), namespace (String, required), metric_name (String, required), dimensions ((List of Objects), Keys allowed are name (String, required) and value (String)), statistic (String, required), evaluation_periods (String, required), period (String, required), threshold (String, required), cooldown (String, required), unit (String, required), operator (String, required), action_type (String, required), adjustment (String), max_target_capacity (String), target (String), maximum (String), minimum (String)

		down_scaling_policies?: string

		// (Integer) Required if risk is not set
		// Number of on demand instances to launch. All other instances will be spot instances.; Either set this parameter or the risk parameter

		on_demand_count?: string

		// (List of Strings) One or more security group IDs. ; In case of update it will override the existing Security Group with the new given array

		security_group_ids: string

		// (List of Objects) a list of hash/dictionaries of signals to configure in the elastigroup; keys allowed are - name (String, required), timeout (Integer)

		signals?: string

		// (List of Objects) a list of hash/dictionaries of Availability Zones that are configured in the elastigroup; '[{"key":"value", "key":"value"}]'; keys allowed are name (String), subnet_id (String), placement_group_name (String),

		availability_zones: string

		// (Object) The Kubernetes integration configuration. Expects the following keys - api_server (String), token (String)

		kubernetes?: string

		// (String) lifetime period

		lifetime_period?: string

		// (String) create or delete the elastigroup

		state?: string

		// (Boolean) Whether or not the elastigroup creation / update actions should wait for the instances to spin

		wait_for_instances?: bool

		// (List of Objects) a list of hash/dictionaries of scheduled tasks to configure in the elastigroup; '[{"key":"value", "key":"value"}]'; keys allowed are - adjustment (Integer), scale_target_capacity (Integer), scale_min_capacity (Integer), scale_max_capacity (Integer), adjustment_percentage (Integer), batch_size_percentage (Integer), cron_expression (String), frequency (String), grace_period (Integer), task_type (String, required), is_enabled (Boolean)

		scheduled_tasks?: string

		// (String) The Base64-encoded shutdown script that executes prior to instance termination. Encode before setting.

		shutdown_script?: string

		// (Boolean) In case of any available Reserved Instances, Elastigroup will utilize your reservations before purchasing Spot instances.

		utilize_reserved_instances?: bool

		// (List of Strings) List of classic ELB names

		load_balancers?: string

		// (String) dedicated vs shared tenancy

		tenancy?: string

		// (String) The service to use for the health check.

		health_check_type?: string

		// (Integer) Minimal mount of time instance should be unhealthy for us to consider it unhealthy.

		health_check_unhealthy_duration_before_replacement?: string

		// (Integer) The lower limit number of instances that you can scale down to

		min_size: string

		// (List of Strings) List of target group arns instances should be registered to

		target_group_arns?: string

		// (Object) The Chef integration configuration.; Expects the following keys - chef_server (String), organization (String), user (String), pem_key (String), chef_version (String)

		chef?: string

		// (Boolean) Enable EBS optimization for supported instances which are not enabled by default.; Note - additional charges will be applied.

		ebs_optimized?: bool

		// (List of Strings) Spot instance type that will be provisioned.

		spot_instance_types: string

		// (Boolean) terminate at the end of billing hour

		terminate_at_end_of_billing_hour?: bool

		// (String) Base64-encoded MIME user data. Encode before setting the value.

		user_data?: string

		// (Object) The Stateful elastigroup configration.; Accepts the following keys - should_persist_root_device (Boolean), should_persist_block_devices (Boolean), should_persist_private_ip (Boolean)

		persistence?: string

		// (String) The instance profile iamRole arn
		// Only use iam_role_arn, or iam_role_name

		iam_role_arn?: string

		// (String) Unique name for elastigroup to be created, updated or deleted

		name: string

		// (Object) The elastigroup OpsWorks integration configration.; Expects the following key - layer_id (String)

		opsworks?: string

		// (String) Operation system type._

		product: string

		// (List of Objects) a list of hash/dictionaries of target tracking policies to configure in the elastigroup; '[{"key":"value", "key":"value"}]'; keys allowed are - policy_name (String, required), namespace (String, required), source (String, required), metric_name (String, required), statistic (String, required), unit (String, required), cooldown (String, required), target (String, required)

		target_tracking_policies?: string

		// (String) If your group names are not unique, you may use this feature to update or delete a specific group. Whenever this property is set, you must set a group_id in order to update or delete a group, otherwise a group will be created.

		uniqueness_by?: string

		// (List of Objects) a list of hash/dictionaries of scaling policies to configure in the elastigroup; '[{"key":"value", "key":"value"}]'; keys allowed are - policy_name (String, required), namespace (String, required), metric_name (String, required), dimensions (List of Objects, Keys allowed are name (String, required) and value (String)), statistic (String, required) evaluation_periods (String, required), period (String, required), threshold (String, required), cooldown (String, required), unit (String, required), operator (String, required), action_type (String, required), adjustment (String), min_target_capacity (String), target (String), maximum (String), minimum (String)

		up_scaling_policies?: string
	}
}
