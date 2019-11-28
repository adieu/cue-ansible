package amazon

ec2_metric_alarm :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_metric_alarm: {

		// Determines how the threshold value is compared.

		comparison?: string

		// The number of times in which the metric is evaluated before final calculation.

		evaluation_periods?: int

		// A list of the names of action(s) to take when the alarm is in the C(insufficient_data) status.

		insufficient_data_actions?: [...string]

		// The time (in seconds) between metric evaluations.

		period?: int

		// Operation applied to the metric.
		// Works in conjunction with I(period) and I(evaluation_periods) to determine the comparison value.

		statistic?: string

		// A list of the names action(s) taken when the alarm is in the C(alarm) status, denoted as Amazon Resource Name(s).

		alarm_actions?: [...string]

		// Unique name for the alarm.

		name: string

		// Register or deregister the alarm.

		state?: string

		// Sets the min/max bound for triggering the alarm.

		threshold?: float

		// The threshold's unit of measurement.

		unit?: string

		// A dictionary describing which metric the alarm is applied to.
		// For more information see the AWS documentation:
		// U(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Dimension)

		dimensions?: {...}

		// Name of the monitored metric (e.g. C(CPUUtilization)).
		// Metric must already exist.

		metric?: string

		// Name of the appropriate namespace (C(AWS/EC2), C(System/Linux), etc.), which determines the category it will appear under in cloudwatch.

		namespace?: string

		// A list of the names of action(s) to take when the alarm is in the C(ok) status, denoted as Amazon Resource Name(s).

		ok_actions?: [...string]

		// A longer description of the alarm.

		description?: string
	}
}

ec2_scaling_policy :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_scaling_policy: {

		// The amount by which the autoscaling group is adjusted by the policy.

		scaling_adjustment?: int

		// Register or deregister the policy.

		state: string

		// The type of change in capacity of the autoscaling group.

		adjustment_type?: string

		// Name of the associated autoscaling group.

		asg_name: string

		// The minimum period of time (in seconds) between which autoscaling actions can take place.

		cooldown?: int

		// Minimum amount of adjustment when policy is triggered.

		min_adjustment_step?: int

		// Unique name for the scaling policy.

		name: string
	}
}

ec2_vpc_subnet_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_subnet_info: {

		// A list of subnet IDs to gather information for.

		subnet_ids?: [...string]

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSubnets.html) for possible filters.

		filters?: {...}
	}
}

ec2_vpc_vgw_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_vgw_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeRouteTables.html) for possible filters.

		filters?: {...}

		// Get details of a specific Virtual Gateway ID. This value should be provided as a list.

		vpn_gateway_ids?: [...string]
	}
}

elb_classic_lb_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elb_classic_lb_info: {

		// List of ELB names to gather information about. Pass this option to gather information about a set of ELBs, otherwise, all ELBs are returned.

		names?: [..._]
	}
}

s3_logging :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	s3_logging: {

		// Name of the s3 bucket.

		name: string

		// Enable or disable logging.

		state?: string

		// The bucket to log to. Required when state=present.

		target_bucket?: string

		// The prefix that should be prepended to the generated log files written to the target_bucket.

		target_prefix?: string
	}
}

ec2_eni :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_eni: {

		// Optional description of the ENI.

		description?: string

		// The index of the device for the network interface attachment on the instance.

		device_index?: int

		// The number of secondary IP addresses to assign to the network interface. This option is mutually exclusive of I(secondary_private_ip_addresses)

		secondary_private_ip_address_count?: int

		// A list of IP addresses to assign as secondary IP addresses to the network interface. This option is mutually exclusive of I(secondary_private_ip_address_count)

		secondary_private_ip_addresses?: [...string]

		// Create or delete ENI.

		state?: string

		// ID of subnet in which to create the ENI.

		subnet_id?: string

		// Specifies if network interface should be attached or detached from instance. If omitted, attachment status won't change

		attached?: bool

		// Private IP address.

		private_ip_address?: string

		// To be used with I(secondary_private_ip_addresses) to determine whether or not to remove any secondary IP addresses other than those specified.
		// Set I(secondary_private_ip_addresses=[]) to purge all secondary addresses.

		purge_secondary_private_ip_addresses?: bool

		// List of security groups associated with the interface. Only used when I(state=present).
		// Since version 2.2, you can specify security groups by ID or by name or a combination of both. Prior to 2.2, you can specify only by ID.

		security_groups?: [...string]

		// Indicates whether to allow an IP address that is already assigned to another network interface or instance to be reassigned to the specified network interface.

		allow_reassignment?: bool

		// The ID of the ENI (to modify).
		// If I(eni_id=None) and I(state=present), a new eni will be created.

		eni_id?: string

		// Force detachment of the interface. This applies either when explicitly detaching the interface by setting I(instance_id=None) or when deleting an interface with I(state=absent).

		force_detach?: bool

		// Instance ID that you wish to attach ENI to.
		// Since version 2.2, use the I(attached) parameter to attach or detach an ENI. Prior to 2.2, to detach an ENI from an instance, use C(None).

		instance_id?: string

		// By default, interfaces perform source/destination checks. NAT instances however need this check to be disabled. You can only specify this flag when the interface is being modified, not on creation.

		source_dest_check?: bool

		// Delete the interface when the instance it is attached to is terminated. You can only specify this flag when the interface is being modified, not on creation.

		delete_on_termination?: bool
	}
}

aws_config_recorder :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_config_recorder: {

		// The name of the AWS Config resource.

		name: string

		// Specifies the types of AWS resources for which AWS Config records configuration changes.
		// Required when I(state=present)

		recording_group?: {...}

		// Amazon Resource Name (ARN) of the IAM role used to describe the AWS resources associated with the account.
		// Required when I(state=present).

		role_arn?: string

		// Whether the Config rule should be present or absent.

		state?: string
	}
}

aws_direct_connect_virtual_interface :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_direct_connect_virtual_interface: {

		// The type of IP address for the BGP peer.

		address_type?: string

		// The customer address CIDR with which to create the virtual interface.

		customer_address?: string

		// The type of virtual interface.

		public?: bool

		// The desired state of the Direct Connect virtual interface.

		state?: string

		// The virtual gateway ID required for creating a private virtual interface.

		virtual_gateway_id?: string

		// The name of the virtual interface.

		name?: string

		// The virtual interface ID.

		virtual_interface_id?: string

		// The VLAN ID.

		vlan?: int

		// The amazon address CIDR with which to create the virtual interface.

		amazon_address?: string

		// The authentication key for BGP configuration.

		authentication_key?: string

		// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.

		bgp_asn?: int

		// A list of route filter prefix CIDRs with which to create the public virtual interface.

		cidr?: [...string]

		// The ID of the link aggregation group or connection to associate with the virtual interface.

		id_to_associate?: string
	}
}

ec2_vpc_route_table_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_route_table_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeRouteTables.html) for possible filters.

		filters?: {...}
	}
}

redshift :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	redshift: {

		// If the cluster is encrypted or not.

		encrypted?: bool

		// If the cluster is accessible publicly or not.

		publicly_accessible?: bool

		// Skip a final snapshot before deleting the cluster.
		// Used only when I(command=delete).

		skip_final_cluster_snapshot?: bool

		// Availability zone in which to launch cluster.

		availability_zone?: string

		// In which security group the cluster belongs.

		cluster_security_groups?: [...string]

		// Master database password.
		// Used only when I(command=create).

		password?: string

		// When I(command=create), I(command=modify) or I(command=restore) then wait for the database to enter the 'available' state.
		// When I(command=delete) wait for the database to be terminated.

		wait?: bool

		// When I(allow_version_upgrade=true) the cluster may be automatically upgraded during the maintenance window.

		allow_version_upgrade?: bool

		// The type of cluster.

		cluster_type?: string

		// Specifies the action to take.

		command: string

		// Redshift cluster identifier.

		identifier: string

		// Which version the cluster should have.

		cluster_version?: string

		// The number of days that automated snapshots are retained.

		automated_snapshot_retention_period?: int

		// When I(wait=true) defines how long in seconds before giving up.

		wait_timeout?: int

		// VPC security group

		vpc_security_group_ids?: [...string]

		// Name of the database.

		db_name?: string

		// Whether the cluster should have enhanced VPC routing enabled.

		enhanced_vpc_routing?: bool

		// An Elastic IP to use for the cluster.

		elastic_ip?: string

		// Identifier of the final snapshot to be created before deleting the cluster.
		// If this parameter is provided, I(skip_final_cluster_snapshot) must be C(false).
		// Used only when I(command=delete).

		final_cluster_snapshot_identifier?: string

		// The node type of the cluster.
		// Require when I(command=create).

		node_type?: string

		// Number of nodes.
		// Only used when I(cluster_type=multi-node).

		number_of_nodes?: int

		// Maintenance window in format of C(ddd:hh24:mi-ddd:hh24:mi).  (Example: C(Mon:22:00-Mon:23:15))
		// Times are specified in UTC.
		// If not specified then a random 30 minute maintenance window is assigned.

		preferred_maintenance_window?: string

		// Master database username.
		// Used only when I(command=create).

		username?: string

		// Which subnet to place the cluster.

		cluster_subnet_group_name?: string

		// Which port the cluster is listening on.

		port?: int

		// Name of the cluster parameter group.

		cluster_parameter_group_name?: string

		// Only used when command=modify.

		new_cluster_identifier?: string
	}
}

sts_session_token :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	sts_session_token: {

		// The duration, in seconds, of the session token. See U(https://docs.aws.amazon.com/STS/latest/APIReference/API_GetSessionToken.html#API_GetSessionToken_RequestParameters) for acceptable and default values.

		duration_seconds?: int

		// The identification number of the MFA device that is associated with the user who is making the GetSessionToken call.

		mfa_serial_number?: string

		// The value provided by the MFA device, if the trust policy of the user requires MFA.

		mfa_token?: string
	}
}

aws_batch_job_definition :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_batch_job_definition: {

		// The hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to Memory in the Create a container section of the Docker Remote API and the --memory option to docker run.

		memory?: int

		// When this parameter is true, the container is given elevated privileges on the host container instance (similar to the root user). This parameter maps to Privileged in the Create a container section of the Docker Remote API and the --privileged option to docker run.

		privileged?: string

		// The type of job definition

		type: string

		// The command that is passed to the container. This parameter maps to Cmd in the Create a container section of the Docker Remote API and the COMMAND parameter to docker run. For more information, see U(https://docs.docker.com/engine/reference/builder/#cmd)

		command?: [...string]

		// The name for the job definition

		job_definition_name: string

		// The environment variables to pass to a container. This parameter maps to Env in the Create a container section of the Docker Remote API and the --env option to docker run. List of dictionaries.

		environment?: [...{...}]

		// Default parameter substitution placeholders to set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a SubmitJob request override any corresponding parameter defaults from the job definition.

		parameters?: {...}

		// Describes the desired state.

		state?: string

		// The number of vCPUs reserved for the container. This parameter maps to CpuShares in the Create a container section of the Docker Remote API and the --cpu-shares option to docker run. Each vCPU is equivalent to 1,024 CPU shares.

		vcpus?: int

		// The Amazon Resource Name (ARN) of the IAM role that the container can assume for AWS permissions.

		job_role_arn?: string

		// The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with `` repository-url /image <colon>tag ``. Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to Image in the Create a container section of the Docker Remote API and the IMAGE parameter of docker run.

		image?: string

		// The arn for the job definition

		job_definition_arn?: string

		// The mount points for data volumes in your container. This parameter maps to Volumes in the Create a container section of the Docker Remote API and the --volume option to docker run. List of dictionaries.

		mount_points?: [...{...}]

		// When this parameter is true, the container is given read-only access to its root file system. This parameter maps to ReadonlyRootfs in the Create a container section of the Docker Remote API and the --read-only option to docker run.

		readonly_root_filesystem?: string

		// A list of ulimits to set in the container. This parameter maps to Ulimits in the Create a container section of the Docker Remote API and the --ulimit option to docker run. List of dictionaries.

		ulimits?: [...{...}]

		// The user name to use inside the container. This parameter maps to User in the Create a container section of the Docker Remote API and the --user option to docker run.

		user?: string

		// A list of data volumes used in a job. List of dictionaries.

		volumes?: [...{...}]

		// Retry strategy - The number of times to move a job to the RUNNABLE status. You may specify between 1 and 10 attempts. If attempts is greater than one, the job is retried if it fails until it has moved to RUNNABLE that many times.

		attempts?: int
	}
}

dms_replication_subnet_group :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	dms_replication_subnet_group: {

		// The description for the subnet group.

		description?: string

		// The name for the replication subnet group. This value is stored as a lowercase string. Must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens. Must not be "default".

		identifier?: string

		// State of the subnet group.

		state?: string

		// A list containing the subnet ids for the replication subnet group, needs to be at least 2 items in the list.

		subnet_ids?: [...string]
	}
}

dynamodb_table :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	dynamodb_table: {

		// Create or delete the table.

		state?: string

		// how long before wait gives up, in seconds. only used when tags is set

		wait_for_active_timeout?: int

		// Write throughput capacity (units) to provision.

		write_capacity?: int

		// Name of the hash key.
		// Required when C(state=present).

		hash_key_name?: string

		// list of dictionaries describing indexes to add to the table. global indexes can be updated. local indexes don't support updates or have throughput.
		// required options: ['name', 'type', 'hash_key_name']
		// other options: ['hash_key_type', 'range_key_name', 'range_key_type', 'includes', 'read_capacity', 'write_capacity']

		indexes?: [...{...}]

		// Name of the table.

		name: string

		// Name of the range key.

		range_key_name?: string

		// Type of the range key.

		range_key_type?: string

		// Type of the hash key.

		hash_key_type?: string

		// Read throughput capacity (units) to provision.

		read_capacity?: int

		// A hash/dictionary of tags to add to the new instance or for starting/stopping instance by tag.
		// For example: C({"key":"value"}) and C({"key":"value","key2":"value2"})

		tags?: {...}
	}
}

ec2 :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2: {

		// key pair to use on the instance. The SSH key must exist on AWS in order to use this argument. If you want to generate keys from Ansible, take a look at `ec2_key` module.

		key_name?: string

		// the subnet ID in which to launch the instance (VPC).

		vpc_subnet_id?: string

		// AWS availability zone in which to launch the instance.

		zone?: string

		// list of instance ids, currently used for states: absent, running, stopped

		instance_ids?: [..._]

		// Kernel I(eki) to use for the instance.

		kernel?: string

		// Type of spot request; one of "one-time" or "persistent". Defaults to "one-time" if not supplied.

		spot_type?: string

		// Create, terminate, start, stop or restart instances. The state 'restarted' was added in Ansible 2.2.
		// When 'absent', I(instance_ids) is required.
		// When 'running', 'stopped' and 'restarted', I(instance_ids) or I(instance_tags) is required.

		state?: string

		// a list of hash/dictionaries of volumes to add to the new instance; '[{"key":"value", "key":"value"}]'; keys allowed are - device_name (str; required), delete_on_termination (bool; False), ephemeral (str), encrypted (bool; False), snapshot (str), volume_type (str), volume_size (int, GiB), iops (int) - iops must be set when volume_type='io1', ephemeral and snapshot are mutually exclusive.

		volumes?: [..._]

		// Name of the IAM instance profile (i.e. what the EC2 console refers to as an "IAM Role") to use. Boto library must be 2.5.0+.

		instance_profile_name?: string

		// Used with 'exact_count' to determine how many nodes based on a specific tag criteria should be running. This can be expressed in multiple ways and is shown in the EXAMPLES section.  For instance, one can request 25 servers that are tagged with "class=webserver". The specified tag must already exist or be passed in as the 'instance_tags' option.

		count_tag?: _

		// An integer value which indicates how many instances that match the 'count_tag' parameter should be running. Instances are either created or terminated based on this value.

		exact_count?: int

		// Security group (or list of groups) to use with the instance.

		group?: [..._]

		// Ramdisk I(eri) to use for the instance.

		ramdisk?: string

		// The AWS region to use.  Must be specified if ec2_url is not used.
		// If not specified then the value of the C(AWS_REGION) or C(EC2_REGION) environment variable, if any, is used.
		// See U(https://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region).

		region?: string

		// When provisioning within vpc, assign a public IP address. Boto library must be 2.13.0+.

		assign_public_ip?: bool

		// Launch group for spot request, see U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/how-spot-instances-work.html#spot-launch-group).

		spot_launch_group?: string

		// Maximum spot price to bid. If not set, a regular on-demand instance is requested.
		// A spot request is made with this maximum bid. When it is filled, the instance is started.

		spot_price?: string

		// An instance with a tenancy of "dedicated" runs on single-tenant hardware and can only be launched into a VPC.
		// Note that to use dedicated tenancy you MUST specify a I(vpc_subnet_id) as well.
		// Dedicated tenancy is not available for EC2 "micro" instances.

		tenancy?: string

		// Enable or Disable the Termination Protection.

		termination_protection?: bool

		// How long before wait gives up, in seconds.

		wait_timeout?: int

		// Identifier for this instance or set of instances, so that the module will be idempotent with respect to EC2 instances.
		// This identifier is valid for at least 24 hours after the termination of the instance, and should not be reused for another call later on.
		// For details, see the description of client token at U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).

		id?: string

		// I(ami) ID to use for the instance.

		image: string

		// A list of existing network interfaces to attach to the instance at launch. When specifying existing network interfaces, none of the assign_public_ip, private_ip, vpc_subnet_id, group, or group_id parameters may be used. (Those parameters are for creating a new network interface at launch.)

		network_interfaces?: [..._]

		// Placement group for the instance when using EC2 Clustered Compute.

		placement_group?: string

		// How long to wait for the spot instance request to be fulfilled. Affects 'Request valid until' for setting spot request lifespan.

		spot_wait_timeout?: int

		// Opaque blob of data which is made available to the EC2 instance.

		user_data?: string

		// Number of instances to launch.

		count?: int

		// Enable or Disable the Source/Destination checks (for NAT instances and Virtual Routers). When initially creating an instance the EC2 API defaults this to True.

		source_dest_check?: bool

		// Set whether AWS will Stop or Terminate an instance on shutdown. This parameter is ignored when using instance-store. images (which require termination on shutdown).

		instance_initiated_shutdown_behavior?: string

		// Security group id (or list of ids) to use with the instance.

		group_id?: [..._]

		// A hash/dictionary of tags to add to the new instance or for starting/stopping instance by tag; '{"key":"value"}' and '{"key":"value","key":"value"}'.

		instance_tags?: {...}

		// Instance type to use for the instance, see U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).

		instance_type: string

		// Enable detailed monitoring (CloudWatch) for instance.

		monitoring?: bool

		// The private ip address to assign the instance (from the vpc subnet).

		private_ip?: string

		// Wait for the instance to reach its desired state before returning.
		// Does not wait for SSH, see 'wait_for_connection' example for details.

		wait?: bool

		// whether instance is using optimized EBS volumes, see U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html).

		ebs_optimized?: bool
	}
}

ec2_vpc_net :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_net: {

		// The primary CIDR of the VPC. After 2.5 a list of CIDRs can be provided. The first in the list will be used as the primary CIDR and is used in conjunction with the C(name) to ensure idempotence.

		cidr_block: [...string]

		// The id of the DHCP options to use for this VPC.

		dhcp_opts_id?: string

		// Whether to enable AWS hostname support.

		dns_hostnames?: bool

		// Request an Amazon-provided IPv6 CIDR block with /56 prefix length.  You cannot specify the range of IPv6 addresses, or the size of the CIDR block.

		ipv6_cidr?: bool

		// Remove CIDRs that are associated with the VPC and are not specified in C(cidr_block).

		purge_cidrs?: bool

		// The tags you want attached to the VPC. This is independent of the name value, note if you pass a 'Name' key it would override the Name of the VPC if it's different.

		tags?: {...}

		// Whether to be default or dedicated tenancy. This cannot be changed after the VPC has been created.

		tenancy?: string

		// Whether to enable AWS DNS support.

		dns_support?: bool

		// By default the module will not create another VPC if there is another VPC with the same name and CIDR block. Specify this as true if you want duplicate VPCs created.

		multi_ok?: bool

		// The name to give your VPC. This is used in combination with C(cidr_block) to determine if a VPC already exists.

		name: string

		// The state of the VPC. Either absent or present.

		state?: string
	}
}

ec2_vpc_subnet :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_subnet: {

		// The CIDR block for the subnet. E.g. 192.0.2.0/24.

		cidr?: string

		// Specify C(yes) to indicate that instances launched into the subnet should be assigned public IP address by default.

		map_public?: bool

		// Whether or not to remove tags that do not appear in the I(tags) list.

		purge_tags?: bool

		// A dict of tags to apply to the subnet. Any tags currently applied to the subnet and not present here will be removed.

		tags?: {...}

		// VPC ID of the VPC in which to create or delete the subnet.

		vpc_id: string

		// Specify C(yes) to indicate that instances launched into the subnet should be automatically assigned an IPv6 address.

		assign_instances_ipv6?: bool

		// The availability zone for the subnet.

		az?: string

		// The IPv6 CIDR block for the subnet. The VPC must have a /56 block assigned and this value must be a valid IPv6 /64 that falls in the VPC range.
		// Required if I(assign_instances_ipv6=true)

		ipv6_cidr?: string

		// Create or remove the subnet

		state?: string

		// When specified,I(state=present) module will wait for subnet to be in available state before continuing.

		wait?: bool

		// Number of seconds to wait for subnet to become available I(wait=True).

		wait_timeout?: int
	}
}

elasticache_snapshot :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elasticache_snapshot: {

		// Actions that will create, destroy, or copy a snapshot.

		state?: string

		// The name of a snapshot copy.

		target?: string

		// The s3 bucket to which the snapshot is exported.

		bucket?: string

		// The name of an existing cache cluster in the replication group to make the snapshot.

		cluster_id?: string

		// The name of the snapshot we want to create, copy, delete.

		name: string

		// The name of the existing replication group to make the snapshot.

		replication_id?: string
	}
}

data_pipeline :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	data_pipeline: {

		// A dict of key:value pair(s) to add to the pipeline.

		tags?: {...}

		// Time in seconds to wait for the pipeline to transition to the requested state, fail otherwise.

		timeout?: int

		// The version option has never had any effect and will be removed in Ansible 2.14

		version?: string

		// An optional description for the pipeline being created.

		description?: string

		// A list of parameter objects (dicts) in the pipeline definition.

		parameters?: [...{...}]

		// The requested state of the pipeline.

		state?: string

		// A list of parameter values (dicts) in the pipeline definition.

		values?: [...{...}]

		// The name of the Datapipeline to create/modify/delete.

		name: string

		// A list of pipeline object definitions, each of which is a dict that takes the keys I(id), I(name) and I(fields).

		objects?: [...{...}]
	}
}

ec2_customer_gateway_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_customer_gateway_info: {

		// Get details of a specific customer gateways using customer gateway ID/IDs. This value should be provided as a list.

		customer_gateway_ids?: [...string]

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeCustomerGateways.html) for possible filters.

		filters?: {...}
	}
}

rds_param_group :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	rds_param_group: {

		// Database parameter group description. Only set when a new group is added.

		description?: string

		// The type of database for this group.
		// Please use following command to get list of all supported db engines and their respective versions.
		// # aws rds describe-db-engine-versions --query "DBEngineVersions[].DBParameterGroupFamily"
		// Required for I(state=present).

		engine?: string

		// Whether to apply the changes immediately, or after the next reboot of any associated instances.

		immediate?: bool

		// Database parameter group identifier.

		name: string

		// Map of parameter names and values. Numeric values may be represented as K for kilo (1024), M for mega (1024^2), G for giga (1024^3), or T for tera (1024^4), and these values will be expanded into the appropriate number before being set in the parameter group.

		params?: {...}

		// Whether or not to remove tags that do not appear in the M(tags) list.

		purge_tags?: bool

		// Specifies whether the group should be present or absent.

		state: string

		// Dictionary of tags to attach to the parameter group.

		tags?: {...}
	}
}

aws_ses_rule_set :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_ses_rule_set: {

		// Whether or not this rule set should be the active rule set. Only has an impact if I(state) is C(present).
		// If omitted, the active rule set will not be changed.
		// If C(True) then this rule set will be made active and all others inactive.
		// if C(False) then this rule set will be deactivated. Be careful with this as you can end up with no active rule set.

		active?: bool

		// When deleting a rule set, deactivate it first (AWS prevents deletion of the active rule set).

		force?: bool

		// The name of the receipt rule set.

		name: string

		// Whether to create (or update) or destroy the receipt rule set.

		state?: string
	}
}

aws_codecommit :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_codecommit: {

		// name of repository.

		name: string

		// Specifies the state of repository.

		state: string

		// description or comment of repository.

		description?: string
	}
}

aws_config_delivery_channel :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_config_delivery_channel: {

		// The name of the Amazon S3 bucket to which AWS Config delivers configuration snapshots and configuration history files.

		s3_bucket?: string

		// The prefix for the specified Amazon S3 bucket.

		s3_prefix?: string

		// The Amazon Resource Name (ARN) of the Amazon SNS topic to which AWS Config sends notifications about configuration changes.

		sns_topic_arn?: string

		// Whether the Config rule should be present or absent.

		state?: string

		// The frequency with which AWS Config delivers configuration snapshots.

		delivery_frequency?: string

		// The name of the AWS Config resource.

		name: string
	}
}

aws_elasticbeanstalk_app :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_elasticbeanstalk_app: {

		// When I(terminate_by_force=true), running environments will be terminated before deleting the application.

		terminate_by_force?: bool

		// Name of the beanstalk application you wish to manage.

		app_name?: string

		// The description of the application.

		description?: string

		// Whether to ensure the application is present or absent.

		state?: string
	}
}

aws_inspector_target :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_inspector_target: {

		// Tags of the EC2 instances to be added to the assessment target.
		// Required if C(state=present).

		tags?: {...}

		// The user-defined name that identifies the assessment target.  The name must be unique within the AWS account.

		name: string

		// The state of the assessment target.

		state?: string
	}
}

aws_kms :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_kms: {

		// Whether the I(grants) argument should cause grants not in the list to be removed

		purge_grants?: bool

		// An alias for a key. For safety, even though KMS does not require keys to have an alias, this module expects all new keys to be given an alias to make them easier to manage. Existing keys without an alias may be referred to by I(key_id). Use M(aws_kms_info) to find key ids. Required if I(key_id) is not given. Note that passing a I(key_id) and I(alias) will only cause a new alias to be added, an alias will never be renamed. The 'alias/' prefix is optional.

		alias?: string

		// A list of grants to apply to the key. Each item must contain I(grantee_principal). Each item can optionally contain I(retiring_principal), I(operations), I(constraints), I(name).
		// I(grantee_principal) and I(retiring_principal) must be ARNs
		// For full documentation of suboptions see the boto3 documentation:
		// U(https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/kms.html#KMS.Client.create_grant)

		grants?: [...{...}]

		// policy to apply to the KMS key
		// See U(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)

		policy?: string

		// (deprecated) If adding/removing a role and invalid grantees are found, remove them. These entries will cause an update to fail in all known cases.
		// Only cleans if changes are being made.
		// Used for modifying the Key Policy rather than modifying a grant and only works on the default policy created through the AWS Console.
		// This option has been deprecated, and will be removed in 2.13. Use I(policy) instead.

		policy_clean_invalid_entries?: bool

		// (deprecated) List of grants to give to user/role. Likely "role,role grant" or "role,role grant,admin". Required when C(policy_mode=grant).
		// Used for modifying the Key Policy rather than modifying a grant and only works on the default policy created through the AWS Console.
		// This option has been deprecated, and will be removed in 2.13. Use I(policy) instead.

		policy_grant_types?: [...string]

		// (deprecated) ARN of role to allow/deny access. One of C(policy_role_name) or C(policy_role_arn) are required.
		// Used for modifying the Key Policy rather than modifying a grant and only works on the default policy created through the AWS Console.
		// This option has been deprecated, and will be removed in 2.13. Use I(policy) instead.

		policy_role_arn?: string

		// A dictionary of tags to apply to a key.

		tags?: {...}

		// A description of the CMK. Use a description that helps you decide whether the CMK is appropriate for a task.

		description?: string

		// Whether or not a key is enabled

		enabled?: bool

		// Key ID or ARN of the key. One of C(alias) or C(key_id) are required.

		key_id?: string

		// (deprecated) Grant or deny access.
		// Used for modifying the Key Policy rather than modifying a grant and only works on the default policy created through the AWS Console.
		// This option has been deprecated, and will be removed in 2.13. Use I(policy) instead.

		policy_mode?: string

		// (deprecated) Role to allow/deny access. One of C(policy_role_name) or C(policy_role_arn) are required.
		// Used for modifying the Key Policy rather than modifying a grant and only works on the default policy created through the AWS Console.
		// This option has been deprecated, and will be removed in 2.13. Use I(policy) instead.

		policy_role_name?: string

		// Whether the I(tags) argument should cause tags not in the list to be removed

		purge_tags?: bool

		// Whether a key should be present or absent. Note that making an existing key absent only schedules a key for deletion.  Passing a key that is scheduled for deletion with state present will cancel key deletion.

		state?: string
	}
}

aws_ses_identity :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_ses_identity: {

		// Setup the SNS topic used to report bounce notifications.
		// If omitted, bounce notifications will not be delivered to a SNS topic.
		// If bounce notifications are not delivered to a SNS topic, I(feedback_forwarding) must be enabled.

		bounce_notifications?: {...}

		// Setup the SNS topic used to report complaint notifications.
		// If omitted, complaint notifications will not be delivered to a SNS topic.
		// If complaint notifications are not delivered to a SNS topic, I(feedback_forwarding) must be enabled.

		complaint_notifications?: {...}

		// Setup the SNS topic used to report delivery notifications.
		// If omitted, delivery notifications will not be delivered to a SNS topic.

		delivery_notifications?: {...}

		// Whether or not to enable feedback forwarding.
		// This can only be false if both I(bounce_notifications) and I(complaint_notifications) specify SNS topics.

		feedback_forwarding?: bool

		// This is the email address or domain to verify / delete.
		// If this contains an '@' then it will be considered an email. Otherwise it will be considered a domain.

		identity: string

		// Whether to create(or update) or delete the identity.

		state?: string
	}
}

aws_waf_rule :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_waf_rule: {

		// A friendly name or description for the metrics for the rule.
		// The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace.
		// You can't change I(metric_name) after you create the rule.
		// Defaults to the same as I(name) with disallowed characters removed.

		metric_name?: string

		// Name of the Web Application Firewall rule.

		name: string

		// Whether or not to remove conditions that are not passed when updating `conditions`.

		purge_conditions?: bool

		// Whether the rule should be present or absent.

		state?: string

		// Whether to use waf-regional module.

		waf_regional?: bool

		// List of conditions used in the rule.  M(aws_waf_condition) can be used to create new conditions.


		conditions?: [...{...}]
	}
}

aws_acm_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_acm_info: {

		// If provided, the results will be filtered to show only the certificate with this ARN.
		// If no certificate with this ARN exists, this task will fail.
		// If a certificate with this ARN exists in a different region, this task will fail

		certificate_arn?: string

		// The domain name of an ACM certificate to limit the search to

		domain_name?: string

		// Status to filter the certificate results

		statuses?: [...string]

		// Filter results to show only certificates with tags that match all the tags specified here.

		tags?: {...}
	}
}

ec2_transit_gateway :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_transit_gateway: {

		// Enable or disable automatic acceptance of attachment requests.

		auto_attach?: bool

		// A dictionary of resource tags

		tags?: {...}

		// The ID of the transit gateway.

		transit_gateway_id?: string

		// number of seconds to wait for status

		wait_timeout?: int

		// Whether to enable AWS DNS support.

		dns_support?: bool

		// Whether to purge existing tags not included with tags argument.

		purge_tags?: bool

		// C(present) to ensure resource is created.
		// C(absent) to remove resource.

		state?: string

		// Enable or disable Equal Cost Multipath Protocol support.

		vpn_ecmp_support?: bool

		// A private Autonomous System Number (ASN) for the Amazon side of a BGP session.
		// The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs.

		asn?: int

		// Enable or disable automatic association with the default association route table.

		auto_associate?: bool

		// Enable or disable automatic propagation of routes to the default propagation route table.

		auto_propagate?: bool

		// The description of the transit gateway.

		description?: string

		// Whether to wait for status

		wait?: bool
	}
}

ec2_vpc_igw :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_igw: {

		// Create or terminate the IGW

		state?: string

		// A dict of tags to apply to the internet gateway. Any tags currently applied to the internet gateway and not present here will be removed.

		tags?: {...}

		// The VPC ID for the VPC in which to manage the Internet Gateway.

		vpc_id: string
	}
}

s3_sync :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	s3_sync: {

		// Difference determination method to allow changes-only syncing. Unlike rsync, files are not patched- they are fully skipped or fully uploaded.
		// date_size will upload if file sizes don't match or if local file modified date is newer than s3's version
		// checksum will compare etag values based on s3's implementation of chunked md5s.
		// force will always upload all files.

		file_change_strategy?: string

		// File/directory path for synchronization. This is a local path.
		// This root path is scrubbed from the key name, so subdirectories will remain as keys.

		file_root: string

		// Shell pattern-style file matching.
		// Used before exclude to determine eligible files (for instance, only "*.gif")
		// For multiple patterns, comma-separate them.

		include?: string

		// In addition to file path, prepend s3 path with this prefix. Module will add slash at end of prefix if necessary.

		key_prefix?: string

		// Dict entry from extension to MIME type. This will override any default/sniffed MIME type. For example C({".txt": "application/text", ".yml": "application/text"})


		mime_map?: {...}

		// sync direction.

		mode?: string

		// Canned ACL to apply to synced files.
		// Changing this ACL only changes newly synced files, it does not trigger a full reupload.

		permission?: string

		// Remove remote files that exist in bucket but are not present in the file root.

		delete?: bool

		// The I(retries) option does nothing and will be removed in Ansible 2.14.

		retries?: string

		// Cache-Control header set on uploaded objects.
		// Directives are separated by commas.

		cache_control?: string

		// Shell pattern-style file matching.
		// Used after include to remove files (for instance, skip "*.txt")
		// For multiple patterns, comma-separate them.

		exclude?: string

		// Bucket name.

		bucket: string
	}
}

ec2_snapshot_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_snapshot_info: {

		// If you specify one or more snapshot owners, only snapshots from the specified owners and for which you have       access are returned.

		owner_ids?: [...string]

		// If you specify a list of restorable users, only snapshots with create snapshot permissions for those users are       returned.

		restorable_by_user_ids?: [...string]

		// If you specify one or more snapshot IDs, only snapshots that have the specified IDs are returned.

		snapshot_ids?: [...string]

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See       U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html) for possible filters. Filter       names and values are case sensitive.

		filters?: {...}
	}
}

ec2_snapshot_copy :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_snapshot_copy: {

		// A hash/dictionary of tags to add to the new Snapshot; '{"key":"value"}' and '{"key":"value","key":"value"}'

		tags?: {...}

		// Wait for the copied Snapshot to be in 'Available' state before returning.

		wait?: bool

		// How long before wait gives up, in seconds.

		wait_timeout?: int

		// An optional human-readable string describing purpose of the new Snapshot.

		description?: string

		// Whether or not the destination Snapshot should be encrypted.

		encrypted?: bool

		// KMS key id used to encrypt snapshot. If not specified, AWS defaults to C(alias/aws/ebs).

		kms_key_id?: string

		// The source region the Snapshot should be copied from.

		source_region: string

		// The ID of the Snapshot in source region that should be copied.

		source_snapshot_id: string
	}
}

ec2_vpc_endpoint :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_endpoint: {

		// The path to the properly json formatted policy file, see U(https://github.com/ansible/ansible/issues/7005#issuecomment-42894813) on how to use it properly. Cannot be used with I(policy).
		// Option when creating an endpoint. If not provided AWS will utilise a default policy which provides full access to the service.

		policy_file?: string

		// present to ensure resource is created.
		// absent to remove resource

		state?: string

		// One or more vpc endpoint ids to remove from the AWS account

		vpc_endpoint_id?: string

		// Optional client token to ensure idempotency

		client_token?: string

		// List of one or more route table ids to attach to the endpoint. A route is added to the route table with the destination of the endpoint if provided.

		route_table_ids?: [...string]

		// An AWS supported vpc endpoint service. Use the M(ec2_vpc_endpoint_info) module to describe the supported endpoint services.
		// Required when creating an endpoint.

		service?: string

		// Required when creating a VPC endpoint.

		vpc_id?: string

		// When specified, will wait for either available status for state present. Unfortunately this is ignored for delete actions due to a difference in behaviour from AWS.

		wait?: bool

		// Used in conjunction with wait. Number of seconds to wait for status. Unfortunately this is ignored for delete actions due to a difference in behaviour from AWS.

		wait_timeout?: int

		// A properly formatted json policy as string, see U(https://github.com/ansible/ansible/issues/7005#issuecomment-42894813). Cannot be used with I(policy_file).
		// Option when creating an endpoint. If not provided AWS will utilise a default policy which provides full access to the service.

		policy?: string
	}
}

ec2_vpc_vpn_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_vpn_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html) for possible filters.

		filters?: {...}

		// Get details of a specific VPN connections using vpn connection ID/IDs. This value should be provided as a list.

		vpn_connection_ids?: [...string]
	}
}

elb_instance :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elb_instance: {

		// List of ELB names, required for registration. The ec2_elbs fact should be used if there was a previous de-register.

		ec2_elbs?: [..._]

		// Whether to enable the availability zone of the instance on the target ELB if the availability zone has not already been enabled. If set to no, the task will fail if the availability zone is not enabled on the ELB.

		enable_availability_zone?: bool

		// EC2 Instance ID

		instance_id: string

		// register or deregister the instance

		state: string

		// When set to "no", SSL certificates will not be validated for boto versions >= 2.6.0.

		validate_certs?: bool

		// Wait for instance registration or deregistration to complete successfully before returning.

		wait?: bool

		// Number of seconds to wait for an instance to change state. If 0 then this module may return an error if a transient error occurs. If non-zero then any transient errors are ignored until the timeout is reached. Ignored when wait=no.

		wait_timeout?: int
	}
}

rds :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	rds: {

		// availability zone in which to launch the instance.
		// Used only when I(command=create), I(command=replicate) or I(command=restore).
		// Can not be used in conjunction with I(multi_zone) parameter.

		zone?: string

		// Database instance identifier.
		// Required except when using I(command=facts) or I(command=delete) on just a snapshot.

		instance_name?: string

		// Specifies the action to take. The 'reboot' option is available starting at version 2.0.

		command: string

		// Version number of the database engine to use.
		// If not specified then the current Amazon RDS default engine version is used
		// Used only when I(command=create).

		engine_version?: string

		// If enabled, the reboot is done using a MultiAZ failover.
		// Used only when I(command=reboot).

		force_failover?: bool

		// Comma separated list of one or more security groups.
		// Used only when I(command=create) or I(command=modify).

		security_groups?: string

		// Name of snapshot to take.
		// When I(command=delete), if no I(snapshot) name is provided then no snapshot is taken.
		// When I(command=delete), if no I(instance_name) is provided the snapshot is deleted.
		// Used with I(command=facts), I(command=delete) or I(command=snapshot).

		snapshot?: string

		// Number of days backups are retained.
		// Set to 0 to disable backups.
		// Default is 1 day.
		// Valid range: 0-35.
		// Used only when I(command=create) or I(command=modify).

		backup_retention?: string

		// Size in gigabytes of the initial storage for the DB instance.
		// Used only when I(command=create) or I(command=modify).

		size?: string

		// Master database username.
		// Used only when I(command=create).

		username?: string

		// Comma separated list of one or more vpc security group ids.
		// Also requires I(subnet) to be specified.
		// Used only when I(command=create) or I(command=modify).

		vpc_security_groups?: [...string]

		// Port number that the DB instance uses for connections.
		// Used only when I(command=create) or I(command=replicate).
		// Defaults to the standard ports for each I(db_engine): C(3306) for MySQL and MariaDB, C(1521) for Oracle C(1433) for SQL Server, C(5432) for PostgreSQL.

		port?: int

		// The instance type of the database.
		// If not specified then the replica inherits the same instance type as the source instance.
		// Required when I(command=create).
		// Optional when I(command=replicate), I(command=modify) or I(command=restore).

		instance_type?: string

		// The license model for this DB instance.
		// Used only when I(command=create) or I(command=restore).

		license_model?: string

		// Backup window in format of C(hh24:mi-hh24:mi). (Example: C(18:00-20:30))
		// Times are specified in UTC.
		// If not specified then a random backup window is assigned.
		// Used only when command=create or command=modify.

		backup_window?: string

		// The type of database.
		// Used only when I(command=create).
		// mariadb was added in version 2.2.

		db_engine?: string

		// When I(apply_immediately=trye), the modifications will be applied as soon as possible rather than waiting for the next preferred maintenance window.
		// Used only when I(command=modify).

		apply_immediately?: bool

		// Name of a database to create within the instance.
		// If not specified then no database is created.
		// Used only when I(command=create).

		db_name?: string

		// Specifies the number of IOPS for the instance.
		// Used only when I(command=create) or I(command=modify).
		// Must be an integer greater than 1000.

		iops?: string

		// Maintenance window in format of C(ddd:hh24:mi-ddd:hh24:mi).  (Example: C(Mon:22:00-Mon:23:15))
		// Times are specified in UTC.
		// If not specified then a random maintenance window is assigned.
		// Used only when I(command=create) or I(command=modify).

		maint_window?: string

		// The name of the option group to use.
		// If not specified then the default option group is used.
		// Used only when I(command=create).

		option_group?: string

		// Password for the master database username.
		// Used only when I(command=create) or I(command=modify).

		password?: string

		// Explicitly set whether the resource should be publicly accessible or not.
		// Used with I(command=create), I(command=replicate).
		// Requires boto >= 2.26.0

		publicly_accessible?: string

		// Indicates that minor version upgrades should be applied automatically.
		// Used only when I(command=create) or I(command=modify) or I(command=restore) or I(command=replicate).

		upgrade?: bool

		// Associate the DB instance with a specified character set.
		// Used with I(command=create).

		character_set_name?: string

		// How long before wait gives up, in seconds.
		// Used when I(wait=true).

		wait_timeout?: int

		// Name of the DB parameter group to associate with this instance.
		// If omitted then the RDS default DBParameterGroup will be used.
		// Used only when I(command=create) or I(command=modify).

		parameter_group?: string

		// tags dict to apply to a resource.
		// Used with I(command=create), I(command=replicate), I(command=restore).
		// Requires boto >= 2.26.0

		tags?: {...}

		// Name to rename an instance to.
		// Used only when I(command=modify).

		new_instance_name?: string

		// Name of the database to replicate.
		// Used only when I(command=replicate).

		source_instance?: string

		// VPC subnet group.
		// If specified then a VPC instance is created.
		// Used only when I(command=create).

		subnet?: string

		// When I(command=create), replicate, modify or restore then wait for the database to enter the 'available' state.
		// When I(command=delete), wait for the database to be terminated.

		wait?: bool

		// Specifies if this is a Multi-availability-zone deployment.
		// Can not be used in conjunction with I(zone) parameter.
		// Used only when I(command=create) or I(command=modify).

		multi_zone?: bool
	}
}

aws_az_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_az_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html) for possible filters. Filter names and values are case sensitive. You can also use underscores instead of dashes (-) in the filter keys, which will take precedence in case of conflict.

		filters?: {...}
	}
}

aws_netapp_cvs_FileSystems :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_netapp_cvs_FileSystems: {

		// Name of the filesystem

		creationToken: string

		// The policy rules to export the filesystem

		exportPolicy?: {...}

		// Size of the filesystem
		// Required for create

		quotaInBytes?: int

		// The region to which the filesystem belongs to.

		region: string

		// Service Level of a filesystem.

		serviceLevel?: string

		// Whether the specified fileSystem should exist or not.

		state: string
	}
}

cloudformation :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	cloudformation: {

		// Number of seconds to wait for the next retry.

		backoff_delay?: int

		// Number of times to retry operation.
		// AWS API throttling mechanism fails CloudFormation module so we have to retry a couple of times.

		backoff_retries?: int

		// If a stacks fails to form, rollback will remove the stack.

		disable_rollback?: bool

		// Maximum number of CloudFormation events to fetch from a stack when creating or updating it.

		events_limit?: int

		// Name of the CloudFormation stack.

		stack_name: string

		// Specify capabilities that stack template contains.
		// Valid values are C(CAPABILITY_IAM), C(CAPABILITY_NAMED_IAM) and C(CAPABILITY_AUTO_EXPAND).

		capabilities?: [...string]

		// If stack already exists create a changeset instead of directly applying changes.  See the AWS Change Sets docs U(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html).
		// WARNING: if the stack does not exist, it will be created without changeset. If I(state=absent), the stack will be deleted immediately with no changeset.

		create_changeset?: bool

		// The path of the CloudFormation stack policy. A policy cannot be removed once placed, but it can be modified. for instance, allow all updates U(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html#d0e9051)

		stack_policy?: string

		// The local path of the CloudFormation template.
		// This must be the full path to the file, relative to the working directory. If using roles this may look like C(roles/cloudformation/files/cloudformation-example.json).
		// If I(state=present) and the stack does not exist yet, either I(template), I(template_body) or I(template_url) must be specified (but only one of them).
		// If I(state=present), the stack does exist, and neither I(template), I(template_body) nor I(template_url) are specified, the previous template will be reused.

		template?: string

		// This parameter is ignored since Ansible 2.3 and will be removed in Ansible 2.14.
		// Templates are now passed raw to CloudFormation regardless of format.

		template_format?: string

		// Name given to the changeset when creating a changeset.
		// Only used when I(create_changeset=true).
		// By default a name prefixed with Ansible-STACKNAME is generated based on input parameters. See the AWS Change Sets docs for more information U(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html)

		changeset_name?: string

		// A comma separated list of Simple Notification Service (SNS) topic ARNs to publish stack related events.

		notification_arns?: string

		// Dictionary of tags to associate with stack and its resources during stack creation.
		// Can be updated later, updating tags removes previous entries.

		tags?: {...}

		// A list of hashes of all the template variables for the stack. The value can be a string or a dict.
		// Dict can be used to set additional template parameter attributes like UsePreviousValue (see example).

		template_parameters?: {...}

		// Maximum amount of time to wait between retries.

		backoff_max_delay?: int

		// The amount of time (in minutes) that can pass before the stack status becomes CREATE_FAILED

		create_timeout?: int

		// Action to take upon failure of stack creation. Incompatible with the I(disable_rollback) option.

		on_create_failure?: string

		// The role that AWS CloudFormation assumes to create the stack. See the AWS CloudFormation Service Role docs U(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-servicerole.html)

		role_arn?: string

		// If I(state=present), stack will be created.
		// If I(state=present) and if stack exists and template has changed, it will be updated.
		// If I(state=absent), stack will be removed.

		state?: string

		// Template body. Use this to pass in the actual body of the CloudFormation template.
		// If I(state=present) and the stack does not exist yet, either I(template), I(template_body) or I(template_url) must be specified (but only one of them).
		// If I(state=present), the stack does exist, and neither I(template), I(template_body) nor I(template_url) are specified, the previous template will be reused.

		template_body?: string

		// Location of file containing the template body. The URL must point to a template (max size 307,200 bytes) located in an S3 bucket in the same region as the stack.
		// If I(state=present) and the stack does not exist yet, either I(template), I(template_body) or I(template_url) must be specified (but only one of them).
		// If I(state=present), the stack does exist, and neither I(template), I(template_body) nor I(template_url) are specified, the previous template will be reused.

		template_url?: string

		// Enable or disable termination protection on the stack. Only works with botocore >= 1.7.18.

		termination_protection?: bool
	}
}

ec2_asg :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_asg: {

		// List of target group ARNs to use for the group. Use for application load balancers.

		target_group_arns?: [...string]

		// An ordered list of criteria used for selecting instances to be removed from the Auto Scaling group when reducing capacity.
		// Using I(termination_policies=Default) when modifying an existing AutoScalingGroup will result in the existing policy being retained instead of changed to C(Default).
		// Valid values include: C(Default), C(OldestInstance), C(NewestInstance), C(OldestLaunchConfiguration), C(ClosestToNextInstanceHour)
		// Full documentation of valid values can be found in the AWS documentation:
		// U(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#custom-termination-policy)

		termination_policies?: [...string]

		// List of VPC subnets to use

		vpc_zone_identifier?: [...string]

		// Name of the Launch configuration to use for the group. See the M(ec2_lc) module for managing these.
		// If unspecified then the current group value will be used.  One of I(launch_config_name) or I(launch_template) must be provided.

		launch_config_name?: string

		// Minimum number of instances in group, if unspecified then the current group value will be used.

		min_size?: int

		// A SNS topic ARN to send auto scaling notifications to.

		notification_topic?: string

		// Check to make sure instances that are being replaced with I(replace_instances) do not already have the current I(launch_template or I(launch_template) I(version).

		lt_check?: bool

		// How long to wait for instances to become viable when replaced.  If you experience the error "Waited too long for ELB instances to be healthy", try increasing this value.

		wait_timeout?: int

		// List of autoscaling metrics to collect when I(metrics_collection=true).

		metrics_list?: [...string]

		// Physical location of your cluster placement group created in Amazon EC2.

		placement_group?: string

		// Number of instances you'd like to replace at a time.  Used with I(replace_all_instances).

		replace_batch_size?: int

		// Dictionary describing the Launch Template to use

		launch_template?: {...}

		// Check to make sure instances that are being replaced with I(replace_instances) do not already have the current I(launch_config).

		lc_check?: bool

		// Enable ASG metrics collection.

		metrics_collection?: bool

		// Length of time in seconds after a new EC2 instance comes into service that Auto Scaling starts checking its health.

		health_check_period?: int

		// List of I(instance_ids) belonging to the named AutoScalingGroup that you would like to terminate and be replaced with instances matching the current launch configuration.

		replace_instances?: [...string]

		// A list of auto scaling events to trigger notifications on.

		notification_types?: [...string]

		// List of availability zone names in which to create the group.
		// Defaults to all the availability zones in the region if I(vpc_zone_identifier) is not set.

		availability_zones?: [...string]

		// Desired number of instances in group, if unspecified then the current group value will be used.

		desired_capacity?: int

		// Maximum number of instances in group, if unspecified then the current group value will be used.

		max_size?: int

		// A list of scaling processes to suspend.
		// Valid values include:
		// C(Launch), C(Terminate), C(HealthCheck), C(ReplaceUnhealthy), C(AZRebalance), C(AlarmNotification), C(ScheduledActions), C(AddToLoadBalancer)
		// Full documentation of valid values can be found in the AWS documentation:
		// U(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html)

		suspend_processes?: [...string]

		// List of ELB names to use for the group. Use for classic load balancers.

		load_balancers?: [...string]

		// When I(metrics_collection=true) this will determine the granularity of metrics collected by CloudWatch.

		metrics_granularity?: string

		// Unique name for group to be created or deleted.

		name: string

		// Register or deregister the instance.

		state?: string

		// A list of tags to add to the Auto Scale Group.
		// Optional key is I(propagate_at_launch), which defaults to true.
		// When I(propagate_at_launch) is true the tags will be propagated to the Instances created.

		tags?: [...{...}]

		// Wait for the ASG instances to be in a ready state before exiting.  If instances are behind an ELB, it will wait until the ELB determines all instances have a lifecycle_state of  "InService" and  a health_status of "Healthy".

		wait_for_instances?: bool

		// The number of seconds after a scaling activity completes before another can begin.

		default_cooldown?: int

		// The service you want the health status from, Amazon EC2 or Elastic Load Balancer.

		health_check_type?: string

		// In a rolling fashion, replace all instances that used the old launch configuration with one from the new launch configuration. It increases the ASG size by I(replace_batch_size), waits for the new instances to be up and running. After that, it terminates a batch of old instances, waits for the replacements, and repeats, until all old instances are replaced. Once that's done the ASG size is reduced back to the expected size.

		replace_all_instances?: bool
	}
}

ecs_task :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ecs_task: {

		// The task definition to start or run.

		task_definition?: string

		// The name of the cluster to run the task on.

		cluster?: string

		// The list of container instances on which to deploy the task.

		container_instances?: [...string]

		// How many new instances to start.

		count?: int

		// A value showing who or what started the task (for informational purposes).

		started_by?: string

		// The task to stop.

		task?: string

		// The launch type on which to run your service.

		launch_type?: string

		// Network configuration of the service. Only applicable for task definitions created with I(network_mode=awsvpc).

		network_configuration?: {...}

		// Which task operation to execute.

		operation: string

		// A dictionary of values to pass to the new instances.

		overrides?: {...}
	}
}

elasticache_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elasticache_info: {

		// The name of an ElastiCache cluster.

		name?: string
	}
}

iam_policy :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam_policy: {

		// The path to the properly json formatted policy file.
		// Mutually exclusive with I(policy_json).

		policy_document?: string

		// A properly json formatted policy as string.
		// Mutually exclusive with I(policy_document).
		// See U(https://github.com/ansible/ansible/issues/7005#issuecomment-42894813) on how to use it properly.

		policy_json?: string

		// The name label for the policy to create or remove.

		policy_name: string

		// By default the module looks for any policies that match the document you pass in, if there is a match it will not make a new policy object with the same rules. You can override this by specifying false which would allow for two policy objects with different names but same rules.

		skip_duplicates?: bool

		// Whether to create or delete the IAM policy.

		state: string

		// Name of IAM resource you wish to target for policy actions. In other words, the user name, group name or role name.

		iam_name: string

		// Type of IAM resource.

		iam_type: string
	}
}

aws_direct_connect_gateway :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_direct_connect_gateway: {

		// amazon side asn

		amazon_asn: string

		// id of an existing direct connect gateway

		direct_connect_gateway_id?: string

		// name of the dxgw to be created or deleted

		name?: string

		// present to ensure resource is created.
		// absent to remove resource

		state?: string

		// vpn gateway id of an existing virtual gateway

		virtual_gateway_id?: string

		// How long to wait for the association to be deleted

		wait_timeout?: int
	}
}

cloudformation_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	cloudformation_info: {

		// Get all stack information for the stack.

		all_facts?: bool

		// Get stack events for the stack.

		stack_events?: bool

		// The name or id of the CloudFormation stack. Gathers information on all stacks by default.

		stack_name?: string

		// Get stack policy for the stack.

		stack_policy?: bool

		// Get stack resources for the stack.

		stack_resources?: bool

		// Get stack template body for the stack.

		stack_template?: bool
	}
}

cloudtrail :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	cloudtrail: {

		// Specifies whether log file integrity validation is enabled.
		// CloudTrail will create a hash for every log file delivered and produce a signed digest file that can be used to ensure log files have not been tampered.

		enable_log_file_validation?: bool

		// Name for the CloudTrail.
		// Names are unique per-region unless the CloudTrail is a multi-region trail, in which case it is unique per-account.

		name: string

		// Add or remove CloudTrail configuration.
		// The following states have been preserved for backwards compatibility: I(state=enabled) and I(state=disabled).
		// I(state=enabled) is equivalet to I(state=present).
		// I(state=disabled) is equivalet to I(state=absent).

		state: string

		// S3 Key prefix for delivered log files. A trailing slash is not necessary and will be removed.

		s3_key_prefix?: string

		// A full ARN specifying a valid CloudWatch log group to which CloudTrail logs will be delivered. The log group should already exist.
		// See U(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/send-cloudtrail-events-to-cloudwatch-logs.html).
		// Required when C(cloudwatch_logs_role_arn).

		cloudwatch_logs_log_group_arn?: string

		// Specifies a full ARN for an IAM role that assigns the proper permissions for CloudTrail to create and write to the log group.
		// See U(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/send-cloudtrail-events-to-cloudwatch-logs.html).
		// Required when C(cloudwatch_logs_log_group_arn).

		cloudwatch_logs_role_arn?: string

		// Start or stop the CloudTrail logging. If stopped the trail will be paused and will not record events or deliver log files.

		enable_logging?: bool

		// Record API calls from global services such as IAM and STS.

		include_global_events?: bool

		// Specify whether the trail belongs only to one region or exists in all regions.

		is_multi_region_trail?: bool

		// Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. This also has the effect of enabling log file encryption.
		// The value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.
		// See U(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/encrypting-cloudtrail-log-files-with-aws-kms.html).

		kms_key_id?: string

		// An existing S3 bucket where CloudTrail will deliver log files.
		// This bucket should exist and have the proper policy.
		// See U(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/aggregating_logs_regions_bucket_policy.html).
		// Required when I(state=present).

		s3_bucket_name?: string

		// SNS Topic name to send notifications to when a log file is delivered.

		sns_topic_name?: string

		// A hash/dictionary of tags to be applied to the CloudTrail resource.
		// Remove completely or specify an empty dictionary to remove all tags.

		tags?: {...}
	}
}

ec2_asg_lifecycle_hook :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_asg_lifecycle_hook: {

		// The ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.

		role_arn?: string

		// Create or delete Lifecycle Hook.
		// When I(state=present) updates existing hook or creates a new hook if not found.

		state?: string

		// The instance state to which you want to attach the lifecycle hook.

		transition: string

		// The name of the Auto Scaling group to which you want to assign the lifecycle hook.

		autoscaling_group_name: string

		// Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. This parameter can be either CONTINUE or ABANDON.

		default_result?: string

		// The name of the lifecycle hook.

		lifecycle_hook_name: string

		// Contains additional information that you want to include any time Auto Scaling sends a message to the notification target.

		notification_meta_data?: string

		// The ARN of the notification target that Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook.
		// This target can be either an SQS queue or an SNS topic.
		// If you specify an empty string, this overrides the current ARN.

		notification_target_arn?: string

		// The amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the default action. You can prevent the lifecycle hook from timing out by calling RecordLifecycleActionHeartbeat.
		// By default amazon will use 3600 (1 hour)

		heartbeat_timeout?: int
	}
}

efs_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	efs_info: {

		// ID of Amazon EFS.

		id?: string

		// Creation Token of Amazon EFS file system.

		name?: string

		// List of tags of Amazon EFS. Should be defined as dictionary.

		tags?: {...}

		// List of targets on which to filter the returned results.
		// Result must match all of the specified targets, each of which can be a security group ID, a subnet ID or an IP address.

		targets?: [...string]
	}
}

iam :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam: {

		// When type is user, it creates, removes, deactivates or activates a user's access key(s). Note that actions apply only to keys specified.

		access_key_state?: string

		// When state is update, will replace the path with new_path on the IAM resource

		new_path?: string

		// When type is user and state is present, define the users login password. Also works with update. Note that always returns changed.

		password?: string

		// The path to the trust policy document that grants an entity permission to assume the role. Mutually exclusive with C(trust_policy).

		trust_policy_filepath?: string

		// A list of groups the user should belong to. When update, will gracefully remove groups not listed.

		groups?: [..._]

		// When access_key_state is create it will ensure this quantity of keys are present. Defaults to 1.

		key_count?: int

		// Name of IAM resource to create or identify

		name: string

		// Whether to create, delete or update the IAM resource. Note, roles cannot be updated.

		state: string

		// Type of IAM resource

		iam_type?: string

		// When state is update, will replace name with new_name on IAM resource

		new_name?: string

		// When creating or updating, specify the desired path of the resource. If state is present, it will replace the current path to match what is passed in when they do not match.

		path?: string

		// C(always) will update passwords if they differ.  C(on_create) will only set the password for newly created users.

		update_password?: string

		// A list of the keys that you want impacted by the access_key_state parameter.

		access_key_ids?: [..._]

		// The inline (JSON or YAML) trust policy document that grants an entity permission to assume the role. Mutually exclusive with C(trust_policy_filepath).

		trust_policy?: {...}
	}
}

lightsail :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	lightsail: {

		// Bundle of specification info for the instance.
		// Required when I(state=present).

		bundle_id?: string

		// Name of the instance.

		name: string

		// Launch script that can configure the instance with additional data.

		user_data?: string

		// How long before I(wait) gives up, in seconds.

		wait_timeout?: int

		// AWS availability zone in which to launch the instance.
		// Required when I(state=present)

		zone?: string

		// ID of the instance blueprint image.
		// Required when I(state=present)

		blueprint_id?: string

		// Name of the key pair to use with the instance.

		key_pair_name?: string

		// Indicate desired state of the target.

		state?: string

		// Wait for the instance to be in state 'running' before returning.
		// If I(wait=false) an ip_address may not be returned.

		wait?: bool
	}
}

rds_snapshot :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	rds_snapshot: {

		// how long before wait gives up, in seconds.

		wait_timeout?: int

		// Database instance identifier. Required when state is present.

		db_instance_identifier?: string

		// The snapshot to manage.

		db_snapshot_identifier: string

		// whether to remove tags not present in the C(tags) parameter.

		purge_tags?: bool

		// Specify the desired state of the snapshot.

		state?: string

		// tags dict to apply to a snapshot.

		tags?: {...}

		// Whether or not to wait for snapshot creation or deletion.

		wait?: bool
	}
}

aws_eks_cluster :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_eks_cluster: {

		// list of security group names or IDs

		security_groups?: [...string]

		// desired state of the EKS cluster

		state?: string

		// list of subnet IDs for the Kubernetes cluster

		subnets?: [...string]

		// Kubernetes version - defaults to latest

		version?: string

		// Specifies whether the module waits until the cluster is active or deleted before moving on. It takes "usually less than 10 minutes" per AWS documentation.

		wait?: bool

		// The duration in seconds to wait for the cluster to become active. Defaults to 1200 seconds (20 minutes).

		wait_timeout?: int

		// Name of EKS cluster

		name: string

		// ARN of IAM role used by the EKS cluster

		role_arn?: string
	}
}

route53_health_check :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	route53_health_check: {

		// The port on the endpoint on which you want Amazon Route 53 to perform health checks. Required for TCP checks.

		port?: int

		// Specifies the action to take.

		state: string

		// If the check type is HTTP_STR_MATCH or HTTP_STR_MATCH, the string that you want Amazon Route 53 to search for in the response body from the specified resource. If the string appears in the first 5120 bytes of the response body, Amazon Route 53 considers the resource healthy.

		string_match?: string

		// The number of consecutive health checks that an endpoint must pass or fail for Amazon Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa.

		failure_threshold: int

		// Domain name of the endpoint to check. Either this or I(ip_address) has to be provided. When both are given the `fqdn` is used in the `Host:` header of the HTTP request.

		fqdn?: string

		// IP address of the end-point to check. Either this or I(fqdn) has to be provided.

		ip_address?: string

		// The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request.

		request_interval: int

		// The path that you want Amazon Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, for example the file /docs/route53-health-check.html.
		// Required for all checks except TCP.
		// The path must begin with a /
		// Maximum 255 characters.

		resource_path?: string

		// The type of health check that you want to create, which indicates how Amazon Route 53 determines whether an endpoint is healthy.

		type: string
	}
}

ec2_tag :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_tag: {

		// Whether unspecified tags should be removed from the resource.
		// Note that when combined with I(state=absent), specified tags with non-matching values are not purged.

		purge_tags?: bool

		// The EC2 resource id.

		resource: string

		// Whether the tags should be present or absent on the resource. Use list to interrogate the tags of an instance.

		state?: string

		// A dictionary of tags to add or remove from the resource.
		// If the value provided for a tag is null and I(state=absent), the tag will be removed regardless of its current value.

		tags: {...}
	}
}

ecs_attribute :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ecs_attribute: {

		// List of attributes.

		attributes: [...{...}]

		// The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to apply attributes.

		cluster: string

		// EC2 instance ID of ECS cluster container instance.

		ec2_instance_id: string

		// The desired state of the attributes.

		state?: string
	}
}

ecs_ecr :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ecs_ecr: {

		// JSON or dict that represents the new policy.

		policy?: string

		// AWS account id associated with the registry.
		// If not specified, the default registry is assumed.

		registry_id?: string

		// Create or destroy the repository.

		state?: string

		// If yes, remove the policy from the repository.

		delete_policy?: bool

		// If I(force_set_policy=false), it prevents setting a policy that would prevent you from setting another policy in the future.

		force_set_policy?: bool

		// Configure whether repository should be mutable (ie. an already existing tag can be overwritten) or not.

		image_tag_mutability?: string

		// The name of the repository.

		name: string
	}
}

elasticache_subnet_group :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elasticache_subnet_group: {

		// ElastiCache subnet group description. Only set when a new group is added.

		description?: string

		// Database subnet group identifier.

		name: string

		// Specifies whether the subnet should be present or absent.

		state: string

		// List of subnet IDs that make up the ElastiCache subnet group.

		subnets?: [...string]
	}
}

iam_user_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam_user_info: {

		// The group name name of the IAM user to look for. Mutually exclusive with C(path).

		group?: string

		// The name of the IAM user to look for.

		name?: string

		// The path to the IAM user. Mutually exclusive with C(group).
		// If specified, then would get all user names whose path starts with user provided value.

		path?: string
	}
}

ec2_eni_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_eni_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkInterfaces.html) for possible filters.

		filters?: {...}
	}
}

ec2_placement_group_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_placement_group_info: {

		// A list of names to filter on. If a listed group does not exist, there will be no corresponding entry in the result; no error will be raised.

		names?: [...string]
	}
}

ec2_vpc_nacl :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_nacl: {

		// Dictionary of tags to look for and apply when creating a network ACL.

		tags?: {...}

		// VPC id of the requesting VPC.
		// Required when state present.

		vpc_id?: string

		// A list of rules for outgoing traffic. Each rule must be specified as a list. Each rule may contain the rule number (integer 1-32766), protocol (one of ['tcp', 'udp', 'icmp', '-1', 'all']), the rule action ('allow' or 'deny') the CIDR of the IPv4 network range to allow or deny, the ICMP type (-1 means all types), the ICMP code (-1 means all codes), the last port in the range for TCP or UDP protocols, and the first port in the range for TCP or UDP protocols. See examples.

		egress?: [..._]

		// List of rules for incoming traffic. Each rule must be specified as a list. Each rule may contain the rule number (integer 1-32766), protocol (one of ['tcp', 'udp', 'icmp', '-1', 'all']), the rule action ('allow' or 'deny') the CIDR of the IPv4 network range to allow or deny, the ICMP type (-1 means all types), the ICMP code (-1 means all codes), the last port in the range for TCP or UDP protocols, and the first port in the range for TCP or UDP protocols. See examples.

		ingress?: [..._]

		// NACL id identifying a network ACL.
		// One and only one of the I(name) or I(nacl_id) is required.

		nacl_id?: string

		// Tagged name identifying a network ACL.
		// One and only one of the I(name) or I(nacl_id) is required.

		name?: string

		// Creates or modifies an existing NACL
		// Deletes a NACL and reassociates subnets to the default NACL

		state?: string

		// The list of subnets that should be associated with the network ACL.
		// Must be specified as a list
		// Each subnet can be specified as subnet ID, or its tagged name.

		subnets?: [..._]
	}
}

ec2_vpc_nacl_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_nacl_info: {

		// A list of Network ACL IDs to retrieve information about.

		nacl_ids?: [..._]

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See       U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkAcls.html) for possible filters. Filter       names and values are case sensitive.

		filters?: {...}
	}
}

ec2_vpc_net_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_net_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcs.html) for possible filters.

		filters?: {...}

		// A list of VPC IDs that exist in your account.

		vpc_ids?: [...string]
	}
}

elb_classic_lb :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elb_classic_lb: {

		// The name of the ELB

		name: string

		// Purge existing listeners on ELB that are not found in listeners

		purge_listeners?: bool

		// Purge existing availability zones on ELB that are not found in zones

		purge_zones?: bool

		// Create or destroy the ELB

		state: string

		// When specified, Ansible will check the status of the load balancer to ensure it has been successfully removed from AWS.

		wait?: bool

		// Distribute load across all configured Availability Zones

		cross_az_load_balancing?: bool

		// List of ports/protocols for this ELB to listen on (see example)

		listeners?: [..._]

		// A list of security groups to apply to the elb

		security_group_ids?: [..._]

		// A list of VPC subnets to use when creating ELB. Zones should be empty if using this.

		subnets?: [..._]

		// An associative array of access logs configuration settings (see example)

		access_logs?: {...}

		// List of instance ids to attach to this ELB

		instance_ids?: [..._]

		// The scheme to use when creating the ELB. For a private VPC-visible ELB use 'internal'. If you choose to update your scheme with a different value the ELB will be destroyed and recreated. To update scheme you must use the option wait.

		scheme?: string

		// An associative array of stickiness policy settings. Policy will be applied to all listeners ( see example )

		stickiness?: {...}

		// When set to C(no), SSL certificates will not be validated for boto versions >= 2.6.0.

		validate_certs?: bool

		// Wait a specified timeout allowing connections to drain before terminating an instance

		connection_draining_timeout?: int

		// An associative array of health check configuration settings (see example)

		health_check?: {...}

		// Purge existing subnet on ELB that are not found in subnets

		purge_subnets?: bool

		// A list of security group names to apply to the elb

		security_group_names?: [..._]

		// An associative array of tags. To delete all tags, supply an empty dict.

		tags?: {...}

		// Used in conjunction with wait. Number of seconds to wait for the elb to be terminated. A maximum of 600 seconds (10 minutes) is allowed.

		wait_timeout?: int

		// List of availability zones to enable on this ELB

		zones?: [..._]

		// ELB connections from clients and to servers are timed out after this amount of time

		idle_timeout?: int

		// Purge existing instance ids on ELB that are not found in instance_ids

		purge_instance_ids?: bool
	}
}

aws_kms_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_kms_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. The filters aren't natively supported by boto3, but are supported to provide similar functionality to other modules. Standard tag filters (C(tag-key), C(tag-value) and C(tag:tagName)) are available, as are C(key-id) and C(alias)

		filters?: {...}

		// Whether to get full details (tags, grants etc.) of keys pending deletion

		pending_deletion?: bool
	}
}

cloudwatchevent_rule :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	cloudwatchevent_rule: {

		// A cron or rate expression that defines the schedule the rule will trigger on. For example, C(cron(0 20 * * ? *)), C(rate(5 minutes)).

		schedule_expression?: string

		// Whether the rule is present (and enabled), disabled, or absent.

		state?: string

		// A list of targets to add to or update for the rule.

		targets?: [...{...}]

		// A description of the rule.

		description?: string

		// A string pattern (in valid JSON format) that is used to match against incoming events to determine if the rule should be triggered.

		event_pattern?: string

		// The name of the rule you are creating, updating or deleting. No spaces or special characters allowed (i.e. must match C([\.\-_A-Za-z0-9]+)).

		name: string

		// The Amazon Resource Name (ARN) of the IAM role associated with the rule.

		role_arn?: string
	}
}

ec2_elb :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_elb: {

		// Wait for instance registration or deregistration to complete successfully before returning.

		wait?: bool

		// Number of seconds to wait for an instance to change state. If 0 then this module may return an error if a transient error occurs. If non-zero then any transient errors are ignored until the timeout is reached. Ignored when wait=no.

		wait_timeout?: int

		// List of ELB names, required for registration. The ec2_elbs fact should be used if there was a previous de-register.

		ec2_elbs?: [..._]

		// Whether to enable the availability zone of the instance on the target ELB if the availability zone has not already been enabled. If set to no, the task will fail if the availability zone is not enabled on the ELB.

		enable_availability_zone?: bool

		// EC2 Instance ID

		instance_id: string

		// register or deregister the instance

		state: string
	}
}

ec2_elb_lb :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_elb_lb: {

		// The name of the ELB

		name: string

		// Purge existing instance ids on ELB that are not found in instance_ids

		purge_instance_ids?: bool

		// Purge existing subnet on ELB that are not found in subnets

		purge_subnets?: bool

		// Create or destroy the ELB

		state: string

		// When set to C(no), SSL certificates will not be validated for boto versions >= 2.6.0.

		validate_certs?: bool

		// Used in conjunction with wait. Number of seconds to wait for the elb to be terminated. A maximum of 600 seconds (10 minutes) is allowed.

		wait_timeout?: int

		// ELB connections from clients and to servers are timed out after this amount of time

		idle_timeout?: int

		// List of instance ids to attach to this ELB

		instance_ids?: [..._]

		// Purge existing availability zones on ELB that are not found in zones

		purge_zones?: bool

		// A list of security groups to apply to the elb

		security_group_ids?: [..._]

		// An associative array of stickiness policy settings. Policy will be applied to all listeners ( see example )

		stickiness?: {...}

		// An associative array of tags. To delete all tags, supply an empty dict.

		tags?: {...}

		// List of availability zones to enable on this ELB

		zones?: [..._]

		// Distribute load across all configured Availability Zones

		cross_az_load_balancing?: bool

		// List of ports/protocols for this ELB to listen on (see example)

		listeners?: [..._]

		// Purge existing listeners on ELB that are not found in listeners

		purge_listeners?: bool

		// The scheme to use when creating the ELB. For a private VPC-visible ELB use 'internal'. If you choose to update your scheme with a different value the ELB will be destroyed and recreated. To update scheme you must use the option wait.

		scheme?: string

		// A list of security group names to apply to the elb

		security_group_names?: [..._]

		// When specified, Ansible will check the status of the load balancer to ensure it has been successfully removed from AWS.

		wait?: bool

		// An associative array of access logs configuration settings (see example)

		access_logs?: {...}

		// Wait a specified timeout allowing connections to drain before terminating an instance

		connection_draining_timeout?: int

		// An associative array of health check configuration settings (see example)

		health_check?: {...}

		// A list of VPC subnets to use when creating ELB. Zones should be empty if using this.

		subnets?: [..._]
	}
}

elb_application_lb :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elb_application_lb: {

		// Wait for the load balancer to have a state of 'active' before completing. A status check is performed every 15 seconds until a successful state is reached. An error is returned after 40 failed checks.

		wait?: bool

		// The name of the S3 bucket for the access logs.
		// Required if access logs in Amazon S3 are enabled.
		// The bucket must exist in the same region as the load balancer and have a bucket policy that grants Elastic Load Balancing permission to write to the bucket.

		access_logs_s3_bucket?: string

		// The number of seconds to wait before an idle connection is closed.

		idle_timeout?: int

		// The name of the load balancer. This name must be unique within your AWS account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.

		name: string

		// If yes, existing tags will be purged from the resource to match exactly what is defined by I(tags) parameter. If the I(tags) parameter is not set then tags will not be modified.

		purge_tags?: bool

		// Internet-facing or internal load balancer. An ELB scheme can not be modified after creation.

		scheme?: string

		// A dictionary of one or more tags to assign to the load balancer.

		tags?: {...}

		// Whether or not to enable access logs. When true, I(access_logs_s3_bucket) must be set.

		access_logs_enabled?: bool

		// Indicates whether deletion protection for the ELB is enabled.

		deletion_protection?: bool

		// If yes, existing listeners will be purged from the ELB to match exactly what is defined by I(listeners) parameter. If the I(listeners) parameter is not set then listeners will not be modified

		purge_listeners?: bool

		// Create or destroy the load balancer.

		state?: string

		// A list of the IDs of the subnets to attach to the load balancer. You can specify only one subnet per Availability Zone. You must specify subnets from at least two Availability Zones. Required if state=present.

		subnets?: [..._]

		// Indicates whether to enable HTTP2 routing.

		http2?: bool

		// A list of dicts containing listeners to attach to the ELB. See examples for detail of the dict required. Note that listener keys are CamelCased.

		listeners?: [..._]

		// When set to no, keep the existing load balancer rules in place. Will modify and add, but will not delete.

		purge_rules?: bool

		// The prefix for the log location in the S3 bucket.
		// If you don't specify a prefix, the access logs are stored in the root of the bucket.
		// Cannot begin or end with a slash.

		access_logs_s3_prefix?: string

		// A list of the names or IDs of the security groups to assign to the load balancer. Required if state=present.

		security_groups?: [..._]

		// The time in seconds to use in conjunction with I(wait).

		wait_timeout?: int
	}
}

elb_application_lb_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elb_application_lb_info: {

		// The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load balancers in a single call.

		load_balancer_arns?: [..._]

		// The names of the load balancers.

		names?: [..._]
	}
}

lambda_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	lambda_info: {

		// When I(query=mappings), this is the Amazon Resource Name (ARN) of the Amazon Kinesis or DynamoDB stream.

		event_source_arn?: string

		// The name of the lambda function for which information is requested.

		function_name?: string

		// Specifies the resource type for which to gather information.  Leave blank to retrieve all information.

		query: string
	}
}

aws_netapp_cvs_snapshots :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_netapp_cvs_snapshots: {

		// Name or Id of the filesystem.
		// Required for create operation

		fileSystemId?: string

		// ID or Name of the snapshot to rename.
		// Required to create an snapshot called 'name' by renaming 'from_name'.

		from_name?: string

		// Name of the snapshot

		name: string

		// The region to which the snapshot belongs to.

		region: string

		// Whether the specified snapshot should exist or not.

		state: string
	}
}

cloudfront_distribution :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	cloudfront_distribution: {

		// A config element that is a complex object that defines logging for the distribution.

		logging?: {...}

		// Whether to remove any custom error responses that aren't listed in I(custom_error_responses).

		purge_custom_error_responses?: bool

		// A list of dictionaries describing the cache behaviors for the distribution.
		// The order of the list is preserved across runs unless I(purge_cache_behavior) is enabled.

		cache_behaviors?: [...{...}]

		// A comment that describes the CloudFront distribution.
		// If not specified, it defaults to a generic message that it has been created with Ansible, and a datetime stamp.

		comment?: string

		// A config element that specifies the path to request when the user requests the origin.
		// e.g. if specified as 'index.html', this maps to www.example.com/index.html when www.example.com is called by the user.
		// This prevents the entire distribution origin from being exposed at the root.

		default_root_object?: string

		// A boolean value that specifies whether the distribution is enabled or disabled.

		enabled?: bool

		// A config element that is a complex object that describes how a distribution should restrict it's content.

		restrictions?: {...}

		// The desired state of the distribution.
		// I(state=present) creates a new distribution or updates an existing distribution.
		// I(state=absent) deletes an existing distribution.

		state?: string

		// The ID of a Web Application Firewall (WAF) Access Control List (ACL).

		web_acl_id?: string

		// The name of an alias (CNAME) that is used in a distribution. This is used to effectively reference a distribution by its alias as an alias can only be used by one distribution per AWS account. This variable avoids having to provide the I(distribution_id) as well as the I(e_tag), or I(caller_reference) of an existing distribution.

		alias?: string

		// A dict specifying the default cache behavior of the distribution.
		// If not specified, the I(target_origin_id) is defined as the I(target_origin_id) of the first valid I(cache_behavior) in I(cache_behaviors) with defaults.

		default_cache_behavior?: {...}

		// The version of the http protocol to use for the distribution.
		// AWS defaults this to C(http2).
		// Valid values are C(http1.1) and C(http2)

		http_version?: string

		// Whether to remove any cache behaviors that aren't listed in I(cache_behaviors).
		// This switch also allows the reordering of I(cache_behaviors).

		purge_cache_behaviors?: bool

		// A list) of domain name aliases (CNAMEs) as strings to be used for the distribution.
		// Each alias must be unique across all distribution for the AWS account.

		aliases?: [...string]

		// The domain name to use for an origin if no I(origins) have been specified.
		// Should only be used on a first run of generating a distribution and not on subsequent runs.
		// Should not be used in conjunction with I(distribution_id), I(caller_reference) or I(alias).

		default_origin_domain_name?: string

		// The default origin path to specify for an origin if no I(origins) have been specified. Defaults to empty if not specified.

		default_origin_path?: string

		// Specifies whether the module waits until the distribution has completed processing the creation or update.

		wait?: bool

		// A unique identifier for creating and updating CloudFront distributions.
		// Each caller reference must be unique across all distributions. e.g. a caller reference used in a web distribution cannot be reused in a streaming distribution. This parameter can be used instead of I(distribution_id) to reference an existing distribution. If not specified, this defaults to a datetime stamp of the format C(YYYY-MM-DDTHH:MM:SS.ffffff).

		caller_reference?: string

		// Determines whether IPv6 support is enabled or not.

		ipv6_enabled?: bool

		// A config element that is a list of complex origin objects to be specified for the distribution. Used for creating and updating distributions.

		origins?: [...{...}]

		// A string that specifies the pricing class of the distribution. As per U(https://aws.amazon.com/cloudfront/pricing/)
		// I(price_class=PriceClass_100) consists of the areas United States, Canada and Europe.
		// I(price_class=PriceClass_200) consists of the areas United States, Canada, Europe, Japan, India, Hong Kong, Philippines, S. Korea, Singapore & Taiwan.
		// I(price_class=PriceClass_All) consists of the areas United States, Canada, Europe, Japan, India, South America, Australia, Hong Kong, Philippines, S. Korea, Singapore & Taiwan.
		// AWS defaults this to C(PriceClass_All).
		// Valid values are C(PriceClass_100), C(PriceClass_200) and C(PriceClass_All)

		price_class?: string

		// Specifies the duration in seconds to wait for a timeout of a cloudfront create or update.

		wait_timeout?: int

		// A config element that is a I(list[]) of complex custom error responses to be specified for the distribution.
		// This attribute configures custom http error messages returned to the user.

		custom_error_responses?: [...{...}]

		// Specifies whether existing aliases will be removed before adding new aliases.
		// When I(purge_aliases=yes), existing aliases are removed and I(aliases) are added.

		purge_aliases?: bool

		// Whether to remove any origins that aren't listed in I(origins).

		purge_origins?: bool

		// A dict that specifies the encryption details of the distribution.

		viewer_certificate?: {...}

		// The ID of the CloudFront distribution.
		// This parameter can be exchanged with I(alias) or I(caller_reference) and is used in conjunction with I(e_tag).

		distribution_id?: string

		// A unique identifier of a modified or existing distribution. Used in conjunction with I(distribution_id).
		// Is determined automatically if not specified.

		e_tag?: string

		// Specifies whether existing tags will be removed before adding new tags.
		// When I(purge_tags=yes), existing tags are removed and I(tags) are added, if specified. If no tags are specified, it removes all existing tags for the distribution.
		// When I(purge_tags=no), existing tags are kept and I(tags) are added, if specified.

		purge_tags?: bool

		// Should be input as a dict of key-value pairs.
		// Note that numeric keys or values must be wrapped in quotes. e.g. "Priority:" '1'

		tags?: {...}
	}
}

dynamodb_ttl :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	dynamodb_ttl: {

		// The name of the Time To Live attribute used to store the expiration time for items in the table.
		// This appears to be required by the API even when disabling TTL.

		attribute_name: string

		// State to set DynamoDB table to.

		state?: string

		// Name of the DynamoDB table to work on.

		table_name: string
	}
}

ec2_metadata_facts :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_metadata_facts: {
	}
}

lambda :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	lambda: {

		// The function within your code that Lambda calls to begin execution.

		handler?: string

		// The runtime environment for the Lambda function you are uploading.
		// Required when creating a function. Uses parameters as described in boto3 docs.
		// Required when I(state=present).
		// For supported list of runtimes, see U(https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html).

		runtime?: string

		// tag dict to apply to the function (requires botocore 1.5.40 or above).

		tags?: {...}

		// List of subnet IDs to run Lambda function in.
		// Use this option if you need to access resources in your VPC. Leave empty if you don't want to run the function in a VPC.
		// If set, I(vpc_security_group_ids) must also be set.

		vpc_subnet_ids?: [...string]

		// The parent object that contains the target Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.

		dead_letter_arn?: string

		// A dictionary of environment variables the Lambda function is given.

		environment_variables?: {...}

		// The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when it executes your function to access any other Amazon Web Services (AWS) resources. You may use the bare ARN if the role belongs to the same AWS account.
		// Required when I(state=present).

		role?: string

		// Amazon S3 bucket name where the .zip file containing your deployment package is stored.
		// If I(state=present) then either I(zip_file) or I(s3_bucket) must be present.
		// I(s3_bucket) and I(s3_key) are required together.

		s3_bucket?: string

		// The Amazon S3 object (the deployment package) key name you want to upload.
		// I(s3_bucket) and I(s3_key) are required together.

		s3_key?: string

		// A short, user-defined function description. Lambda does not use this value. Assign a meaningful description as you see fit.

		description?: string

		// The amount of memory, in MB, your Lambda function is given.

		memory_size?: int

		// The name you want to assign to the function you are uploading. Cannot be changed.

		name: string

		// Set mode to 'Active' to sample and trace incoming requests with AWS X-Ray. Turned off (set to 'PassThrough') by default.

		tracing_mode?: string

		// A .zip file containing your deployment package
		// If I(state=present) then either I(zip_file) or I(s3_bucket) must be present.

		zip_file?: string

		// The Amazon S3 object (the deployment package) version you want to upload.

		s3_object_version?: string

		// Create or delete Lambda function.

		state?: string

		// The function maximum execution time in seconds after which Lambda should terminate the function.

		timeout?: int

		// List of VPC security group IDs to associate with the Lambda function.
		// Required when I(vpc_subnet_ids) is used.

		vpc_security_group_ids?: [...string]
	}
}

aws_glue_job :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_glue_job: {

		// Description of the job being defined.

		description?: string

		// The maximum number of concurrent runs allowed for the job. The default is 1. An error is returned when this threshold is reached. The maximum value you can specify is controlled by a service limit.

		max_concurrent_runs?: int

		// The name or ARN of the IAM role associated with this job.

		role: string

		// Create or delete the AWS Glue job.

		state: string

		// The job timeout in minutes.

		timeout?: int

		// The name of the job command. This must be 'glueetl'.

		command_name?: string

		// The S3 path to a script that executes a job.

		command_script_location: string

		// A list of Glue connections used for this job.

		connections?: [...string]

		// The name you assign to this job definition. It must be unique in your account.

		name: string

		// The number of AWS Glue data processing units (DPUs) to allocate to this Job. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.

		allocated_capacity?: int

		// A dict of default arguments for this job.  You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.

		default_arguments?: {...}

		// The maximum number of times to retry this job if it fails.

		max_retries?: int
	}
}

aws_netapp_cvs_active_directory :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_netapp_cvs_active_directory: {

		// DNS server address for the Active Directory domain
		// Required when C(state=present)
		// Required when C(state=present), to modify ActiveDirectory properties.

		DNS?: string

		// Name of the Active Directory domain

		domain: string

		// NetBIOS name of the server.

		netBIOS?: string

		// Password of the Active Directory domain administrator

		password?: string

		// The region to which the Active Directory credentials are associated.

		region: string

		// Whether the specified ActiveDirectory should exist or not.

		state: string

		// Username of the Active Directory domain administrator

		username?: string
	}
}

ec2_instance_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_instance_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html) for possible filters. Filter names and values are case sensitive.

		filters?: {...}

		// If you specify one or more instance IDs, only instances that have the specified IDs are returned.

		instance_ids?: [..._]
	}
}

ec2_lc_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_lc_info: {

		// Order in which to sort results.
		// Only used when the 'sort' parameter is specified.

		sort_order?: string

		// Which result to start with (when sorting).
		// Corresponds to Python slice notation.

		sort_start?: int

		// A name or a list of name to match.

		name?: [...string]

		// Optional attribute which with to sort the results.

		sort?: string

		// Which result to end with (when sorting).
		// Corresponds to Python slice notation.

		sort_end?: int
	}
}

iam_user :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam_user: {

		// A list of managed policy ARNs or friendly names to attach to the user. To embed an inline policy, use M(iam_policy).

		managed_policy?: [..._]

		// The name of the user to create.

		name: string

		// Detach policies which are not included in managed_policy list

		purge_policy?: bool

		// Create or remove the IAM user

		state: string
	}
}

aws_caller_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_caller_info: {
	}
}

ec2_elb_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_elb_info: {

		// List of ELB names to gather information about. Pass this option to gather information about a set of ELBs, otherwise, all ELBs are returned.

		names?: [..._]
	}
}

ec2_placement_group :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_placement_group: {

		// The name for the placement group.

		name: string

		// Create or delete placement group.

		state?: string

		// Placement group strategy. Cluster will cluster instances into a low-latency group in a single Availability Zone, while Spread spreads instances across underlying hardware.

		strategy?: string
	}
}

ec2_vpc_vpn :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_vpn: {

		// Whether or not to delete VPN connections routes that are not specified in the task.

		purge_routes?: bool

		// The desired state of the VPN connection.

		state?: string

		// Indicates whether the VPN connection uses static routes only. Static routes must be used for devices that don't support BGP.

		static_only?: bool

		// The type of VPN connection.
		// At this time only 'ipsec.1' is supported.

		connection_type?: string

		// An alternative to using vpn_connection_id. If multiple matches are found, vpn_connection_id is required. If one of the following suboptions is a list of items to filter by, only one item needs to match to find the VPN that correlates. e.g. if the filter 'cidr' is ['194.168.2.0/24', '192.168.2.0/24'] and the VPN route only has the destination cidr block of '192.168.2.0/24' it will be found with this filter (assuming there are not multiple VPNs that are matched). Another example, if the filter 'vpn' is equal to ['vpn-ccf7e7ad', 'vpn-cb0ae2a2'] and one of of the VPNs has the state deleted (exists but is unmodifiable) and the other exists and is not deleted, it will be found via this filter. See examples.

		filters?: {...}

		// Whether or not to delete VPN connections tags that are associated with the connection but not specified in the task.

		purge_tags?: bool

		// Routes to add to the connection.

		routes?: [...string]

		// An optional list object containing no more than two dict members, each of which may contain 'TunnelInsideCidr' and/or 'PreSharedKey' keys with appropriate string values.  AWS defaults will apply in absence of either of the aforementioned keys.

		tunnel_options?: [...{...}]

		// The ID of the customer gateway.

		customer_gateway_id?: string

		// The time to wait before checking operation again. in seconds.

		delay?: int

		// Tags to attach to the VPN connection.

		tags?: {...}

		// The ID of the virtual private gateway.

		vpn_gateway_id?: string

		// The ID of the VPN connection. Required to modify or delete a connection if the filters option does not provide a unique match.

		vpn_connection_id?: string

		// How long before wait gives up, in seconds.

		wait_timeout?: int
	}
}

iam_saml_federation :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam_saml_federation: {

		// The name of the provider to create.

		name: string

		// The XML document generated by an identity provider (IdP) that supports SAML 2.0.

		saml_metadata_document?: string

		// Whether to create or delete identity provider. If 'present' is specified it will attempt to update the identity provider matching the name field.

		state?: string
	}
}

redshift_cross_region_snapshots :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	redshift_cross_region_snapshots: {

		// The name of the cluster to configure cross-region snapshots for.

		cluster_name: string

		// The region to copy snapshots to.

		destination_region: string

		// The cluster's region.

		region: string

		// A grant for Amazon Redshift to use a master key in the I(destination_region).
		// See U(http://boto3.readthedocs.io/en/latest/reference/services/redshift.html#Redshift.Client.create_snapshot_copy_grant)

		snapshot_copy_grant?: string

		// The number of days to keep cross-region snapshots for.

		snapshot_retention_period: int

		// Create or remove the cross-region snapshot configuration.

		state: string
	}
}

s3_bucket :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	s3_bucket: {

		// The JSON policy as a string.

		policy?: string

		// whether to remove tags that aren't present in the C(tags) parameter

		purge_tags?: bool

		// S3 URL endpoint for usage with DigitalOcean, Ceph, Eucalyptus and fakes3 etc.
		// Assumes AWS if not specified.
		// For Walrus, use FQDN of the endpoint without scheme nor path.

		s3_url?: string

		// Create or remove the s3 bucket

		state?: string

		// tags dict to apply to bucket

		tags?: {...}

		// Enable API compatibility with Ceph. It takes into account the S3 API subset working with Ceph in order to provide the same module behaviour where possible.

		ceph?: bool

		// KMS master key ID to use for the default encryption. This parameter is allowed if encryption is aws:kms. If not specified then it will default to the AWS provided KMS key.

		encryption_key_id?: string

		// When trying to delete a bucket, delete all keys (including versions and delete markers) in the bucket first (an s3 bucket must be empty for a successful deletion)

		force?: bool

		// Whether versioning is enabled or disabled (note that once versioning is enabled, it can only be suspended)

		versioning?: bool

		// Describes the default server-side encryption to apply to new objects in the bucket. In order to remove the server-side encryption, the encryption needs to be set to 'none' explicitly.

		encryption?: string

		// Name of the s3 bucket

		name: string

		// With Requester Pays buckets, the requester instead of the bucket owner pays the cost of the request and the data download from the bucket.

		requester_pays?: bool
	}
}

aws_ses_identity_policy :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_ses_identity_policy: {

		// Whether to create(or update) or delete the authorization policy on the identity.

		state?: string

		// The SES identity to attach or remove a policy from. This can be either the full ARN or just
the verified email or domain.


		identity: string

		// A properly formatted JSON sending authorization policy. Required when I(state=present).

		policy?: string

		// The name used to identify the policy within the scope of the identity it's attached to.

		policy_name: string
	}
}

aws_waf_condition :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_waf_condition: {

		// A list of the filters against which to match.
		// For I(type=byte), valid keys are I(field_to_match), I(position), I(header), I(transformation) and I(target_string).
		// For I(type=geo), the only valid key is I(country).
		// For I(type=ip), the only valid key is I(ip_address).
		// For I(type=regex), valid keys are I(field_to_match), I(transformation) and I(regex_pattern).
		// For I(type=size), valid keys are I(field_to_match), I(transformation), I(comparison) and I(size).
		// For I(type=sql), valid keys are I(field_to_match) and I(transformation).
		// For I(type=xss), valid keys are I(field_to_match) and I(transformation).

		filters?: [...{...}]

		// Name of the Web Application Firewall condition to manage.

		name: string

		// Whether to remove existing filters from a condition if not passed in I(filters).

		purge_filters?: bool

		// Whether the condition should be C(present) or C(absent).

		state?: string

		// The type of matching to perform.

		type?: string

		// Whether to use waf-regional module.

		waf_regional?: bool
	}
}

ec2_customer_gateway :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_customer_gateway: {

		// Internet-routable IP address for customers gateway, must be a static address.

		ip_address: string

		// Name of the customer gateway.

		name: string

		// The type of routing.

		routing?: string

		// Create or terminate the Customer Gateway.

		state?: string

		// Border Gateway Protocol (BGP) Autonomous System Number (ASN), required when I(state=present).

		bgp_asn?: int
	}
}

ec2_group_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_group_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See       U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroups.html) for       possible filters. Filter names and values are case sensitive. You can also use underscores (_)       instead of dashes (-) in the filter keys, which will take precedence in case of conflict.

		filters?: {...}
	}
}

ec2_lc_find :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_lc_find: {

		// A Launch Configuration to match.
		// It'll be compiled as regex.

		name_regex: string

		// Order in which to sort results.

		sort_order?: string

		// How many results to show.
		// Corresponds to Python slice notation like list[:limit].

		limit?: int
	}
}

ec2_vpc_endpoint_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_endpoint_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcEndpoints.html) for possible filters.

		filters?: {...}

		// Specifies the query action to take. Services returns the supported AWS services that can be specified when creating an endpoint.

		query: string

		// Get details of specific endpoint IDs

		vpc_endpoint_ids?: [...string]
	}
}

ec2_vpc_nat_gateway :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_nat_gateway: {

		// Deallocate the EIP from the VPC.
		// Option is only valid with the absent state.
		// You should use this with the wait option. Since you can not release an address while a delete operation is happening.

		release_eip?: bool

		// The id of the elastic IP allocation. If this is not passed and the eip_address is not passed. An EIP is generated for this NAT Gateway.

		allocation_id?: string

		// Optional unique token to be used during create to ensure idempotency. When specifying this option, ensure you specify the eip_address parameter as well otherwise any subsequent runs will fail.

		client_token?: string

		// The id AWS dynamically allocates to the NAT Gateway on creation. This is required when the absent option is present.

		nat_gateway_id?: string

		// The id of the subnet to create the NAT Gateway in. This is required with the present option.

		subnet_id?: string

		// Wait for operation to complete before returning.

		wait?: bool

		// How many seconds to wait for an operation to complete before timing out.

		wait_timeout?: int

		// The elastic IP address of the EIP you want attached to this NAT Gateway. If this is not passed and the allocation_id is not passed, an EIP is generated for this NAT Gateway.

		eip_address?: string

		// if a NAT Gateway exists already in the subnet_id, then do not create a new one.

		if_exist_do_not_create?: bool

		// Ensure NAT Gateway is present or absent.

		state?: string
	}
}

ec2_vpc_route_table :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_route_table: {

		// The ID of the route table to update or delete.

		route_table_id?: string

		// List of routes in the route table. Routes are specified as dicts containing the keys 'dest' and one of 'gateway_id', 'instance_id', 'network_interface_id', or 'vpc_peering_connection_id'. If 'gateway_id' is specified, you can refer to the VPC's IGW by using the value 'igw'. Routes are required for present states.

		routes?: [...string]

		// Create or destroy the VPC route table

		state?: string

		// Look up route table by either tags or by route table ID. Non-unique tag lookup will fail. If no tags are specified then no lookup for an existing route table is performed and a new route table will be created. To change tags of a route table you must look up by id.

		lookup?: string

		// Enable route propagation from virtual gateways specified by ID.

		propagating_vgw_ids?: [...string]

		// Purge existing routes that are not found in routes.

		purge_routes?: bool

		// Purge existing subnets that are not found in subnets. Ignored unless the subnets option is supplied.

		purge_subnets?: bool

		// Purge existing tags that are not found in route table

		purge_tags?: bool

		// An array of subnets to add to this route table. Subnets may be specified by either subnet ID, Name tag, or by a CIDR such as '10.0.0.0/24'.

		subnets?: [...string]

		// A dictionary of resource tags of the form: { tag1: value1, tag2: value2 }. Tags are used to uniquely identify route tables within a VPC when the route_table_id is not supplied.


		tags?: {...}

		// VPC ID of the VPC in which to create the route table.

		vpc_id: string
	}
}

aws_s3 :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_s3: {

		// The source file path when performing a PUT operation.

		src?: string

		// Version ID of the object inside the bucket. Can be used to get a specific version of a file if versioning is enabled in the target bucket.

		version?: string

		// Bucket name.

		bucket: string

		// Max number of results to return in list mode, set this if you want to retrieve fewer than the default 1000 keys.

		max_keys?: int

		// Switches the module behaviour between put (upload), get (download), geturl (return download url, Ansible 1.3+), getstr (download object as string (1.3+)), list (list keys, Ansible 2.0+), create (bucket), delete (bucket), and delobj (delete object, Ansible 2.0+).

		mode: string

		// This option lets the user set the canned permissions on the object/bucket that are created. The permissions that can be set are C(private), C(public-read), C(public-read-write), C(authenticated-read) for a bucket or C(private), C(public-read), C(public-read-write), C(aws-exec-read), C(authenticated-read), C(bucket-owner-read), C(bucket-owner-full-control) for an object. Multiple permissions can be specified as a list.

		permission?: [...string]

		// Limits the response to keys that begin with the specified prefix for list mode.

		prefix?: string

		// S3 URL endpoint for usage with Ceph, Eucalyptus and fakes3 etc. Otherwise assumes AWS.

		s3_url?: string

		// The destination file path when downloading an object/key with a GET operation.

		dest?: string

		// Enables Amazon S3 Dual-Stack Endpoints, allowing S3 communications using both IPv4 and IPv6.
		// Requires at least botocore version 1.4.45.

		dualstack?: bool

		// Overrides initial bucket lookups in case bucket or iam policies are restrictive. Example: a user may have the GetObject permission but no other permissions. In this case using the option mode: get will fail without specifying I(ignore_nonexistent_bucket=true).

		ignore_nonexistent_bucket?: bool

		// Keyname of the object inside the bucket. Can be used to create "virtual directories", see examples.

		object?: string

		// Force overwrite either locally on the filesystem or remotely with the object/key. Used with PUT and GET operations. Boolean or one of [always, never, different], true is equal to 'always' and false is equal to 'never', new in 2.0. When this is set to 'different', the md5 sum of the local file is compared with the 'ETag' of the object/key in S3. The ETag may or may not be an MD5 digest of the object data. See the ETag response header here U(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonResponseHeaders.html)

		overwrite?: string

		// Time limit (in seconds) for the URL generated and returned by S3/Walrus when performing a I(mode=put) or I(mode=geturl) operation.

		expiry?: int

		// Specifies the key to start with when using list mode. Object keys are returned in alphabetical order, starting with key after the marker in order.

		marker?: string

		// On recoverable failure, how many times to retry before actually failing.

		retries?: int

		// Enable Ceph RGW S3 support. This option requires an explicit url via I(s3_url).

		rgw?: bool

		// When set for PUT mode, asks for server-side encryption.

		encrypt?: bool

		// KMS key id to use when encrypting objects using I(encrypting=aws:kms). Ignored if I(encryption) is not C(aws:kms)

		encryption_kms_key_id?: string

		// What encryption mode to use if I(encrypt=true).

		encryption_mode?: string

		// Custom headers for PUT operation, as a dictionary of 'key=value' and 'key=value,key=value'.

		headers?: {...}

		// Metadata for PUT operation, as a dictionary of 'key=value' and 'key=value,key=value'.

		metadata?: {...}
	}
}

efs :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	efs: {

		// Creation Token of Amazon EFS file system. Required for create and update. Either name or ID required for delete.

		name?: string

		// File system's performance mode to use. Only takes effect during creation.

		performance_mode?: string

		// Allows to create, search and destroy Amazon EFS file system.

		state?: string

		// List of mounted targets. It should be a list of dictionaries, every dictionary should include next attributes: This data may be modified for existing EFS using state 'present' and new list of mount targets.

		targets?: [...{...}]

		// The throughput_mode for the file system to be created.
		// Requires botocore >= 1.10.57

		throughput_mode?: string

		// How long the module should wait (in seconds) for desired state before returning. Zero means wait as long as necessary.

		wait_timeout?: int

		// If I(encrypt=true) creates an encrypted file system. This can not be modified after the file system is created.

		encrypt?: bool

		// The id of the AWS KMS CMK that will be used to protect the encrypted file system. This parameter is only required if you want to use a non-default CMK. If this parameter is not specified, the default CMK for Amazon EFS is used. The key id can be Key ID, Key ID ARN, Key Alias or Key Alias ARN.

		kms_key_id?: string

		// If the throughput_mode is provisioned, select the amount of throughput to provisioned in Mibps.
		// Requires botocore >= 1.10.57

		provisioned_throughput_in_mibps?: float

		// If yes, existing tags will be purged from the resource to match exactly what is defined by I(tags) parameter. If the I(tags) parameter is not set then tags will not be modified.

		purge_tags?: bool

		// List of tags of Amazon EFS. Should be defined as dictionary In case of 'present' state with list of tags and existing EFS (matched by 'name'), tags of EFS will be replaced with provided data.

		tags?: {...}

		// In case of 'present' state should wait for EFS 'available' life cycle state (of course, if current state not 'deleting' or 'deleted') In case of 'absent' state should wait for EFS 'deleted' life cycle state

		wait?: bool

		// ID of Amazon EFS. Either name or ID required for delete.

		id?: string
	}
}

iam_server_certificate_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam_server_certificate_info: {

		// The name of the server certificate you are retrieving attributes for.

		name: string
	}
}

rds_snapshot_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	rds_snapshot_info: {

		// RDS cluster name for which to find snapshots.
		// Mutually exclusive with I(db_snapshot_identifier), I(db_instance_identifier), I(db_cluster_snapshot_identifier)

		db_cluster_identifier?: string

		// Name of an RDS cluster snapshot.
		// Mutually exclusive with I(db_instance_identifier), I(db_snapshot_identifier), I(db_cluster_identifier)

		db_cluster_snapshot_identifier?: string

		// RDS instance name for which to find snapshots.
		// Mutually exclusive with I(db_snapshot_identifier), I(db_cluster_identifier), I(db_cluster_snapshot_identifier)

		db_instance_identifier?: string

		// Name of an RDS (unclustered) snapshot.
		// Mutually exclusive with I(db_instance_identifier), I(db_cluster_identifier), I(db_cluster_snapshot_identifier)

		db_snapshot_identifier?: string

		// Type of snapshot to find.
		// By default both automated and manual snapshots will be returned.

		snapshot_type?: string
	}
}

ecs_taskdefinition :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ecs_taskdefinition: {

		// A list of containers definitions.

		containers?: [...string]

		// The number of cpu units used by the task. If using the EC2 launch type, this field is optional and any value can be used.
		// If using the Fargate launch type, this field is required and you must use one of C(256), C(512), C(1024), C(2048), C(4096).

		cpu?: string

		// The Amazon Resource Name (ARN) of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.

		execution_role_arn?: string

		// Always create new task definition.

		force_create?: bool

		// The Docker networking mode to use for the containers in the task.
		// C(awsvpc) mode was added in Ansible 2.5

		network_mode?: string

		// A revision number for the task definition.

		revision?: int

		// State whether the task definition should exist or be deleted.

		state: string

		// The ARN of the task description to delete.

		arn?: string

		// A list of names of volumes to be attached.

		volumes?: [...{...}]

		// The launch type on which to run your task.

		launch_type?: string

		// The amount (in MiB) of memory used by the task. If using the EC2 launch type, this field is optional and any value can be used.
		// If using the Fargate launch type, this field is required and is limited by the cpu.

		memory?: string

		// The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.

		task_role_arn?: string

		// A Name that would be given to the task definition.

		family?: string
	}
}

cloudwatchlogs_log_group :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	cloudwatchlogs_log_group: {

		// The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.

		kms_key_id?: string

		// The name of the log group.

		log_group_name: string

		// Whether an existing log group should be overwritten on create.

		overwrite?: bool

		// The number of days to retain the log events in the specified log group.
		// Valid values are: [1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653]

		retention?: int

		// Whether the rule is present or absent.

		state?: string

		// The key-value pairs to use for the tags.

		tags?: {...}
	}
}

ec2_eip_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_eip_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and filter value.  See U(https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-addresses.html#options) for possible filters. Filter names and values are case sensitive.

		filters?: {...}
	}
}

ec2_vpc_peer :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_peer: {

		// Peering connection id.

		peering_id?: string

		// Create, delete, accept, reject a peering connection.

		state?: string

		// Dictionary of tags to look for and apply when creating a Peering Connection.

		tags?: {...}

		// VPC id of the requesting VPC.

		vpc_id?: string

		// The AWS account number for cross account peering.

		peer_owner_id?: string

		// Region of the accepting VPC.

		peer_region?: string

		// VPC id of the accepting VPC.

		peer_vpc_id?: string
	}
}

aws_codebuild :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_codebuild: {

		// How long CodeBuild should wait until timing out any build that has not been marked as completed.

		timeout_in_minutes?: int

		// Caching params to speed up following builds.

		cache?: {...}

		// Information about the build environment for the build project.

		environment: {...}

		// Configure service and location for the build input source.

		source: {...}

		// Create or remove code build project.

		state?: string

		// The ARN of the AWS IAM role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.

		service_role?: string

		// A set of tags for the build project.

		tags?: [...{...}]

		// The VPC config enables AWS CodeBuild to access resources in an Amazon VPC.

		vpc_config?: {...}

		// Information about the build output artifacts for the build project.

		artifacts: {...}

		// Descriptive text of the CodeBuild project

		description?: string

		// The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.

		encryption_key?: string

		// Name of the CodeBuild project

		name: string
	}
}

ec2_ami_copy :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_ami_copy: {

		// Whether or not the destination snapshots of the copied AMI should be encrypted.

		encrypted?: bool

		// KMS key id used to encrypt the image. If not specified, uses default EBS Customer Master Key (CMK) for your account.

		kms_key_id?: string

		// The name of the new AMI to copy. (As of 2.3 the default is 'default', in prior versions it was 'null'.)

		name?: string

		// The ID of the AMI in source region that should be copied.

		source_image_id: string

		// The source region the AMI should be copied from.

		source_region: string

		// Whether to use tags if the source AMI already exists in the target region. If this is set, and all tags match in an existing AMI, the AMI will not be copied again.

		tag_equality?: bool

		// A hash/dictionary of tags to add to the new copied AMI: C({"key":"value"}) and C({"key":"value","key":"value"})

		tags?: {...}

		// An optional human-readable string describing the contents and purpose of the new AMI.

		description?: string

		// How long before wait gives up, in seconds. Prior to 2.3 the default was 1200.
		// From 2.3-2.5 this option was deprecated in favor of boto3 waiter defaults. This was reenabled in 2.6 to allow timeouts greater than 10 minutes.

		wait_timeout?: int

		// Wait for the copied AMI to be in state 'available' before returning.

		wait?: bool
	}
}

ec2_vpc_dhcp_option_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_dhcp_option_info: {

		// Get details of specific DHCP Option IDs.

		dhcp_options_ids?: [...string]

		// Checks whether you have the required permissions to view the DHCP Options.

		dry_run?: bool

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeDhcpOptions.html) for possible filters.

		filters?: {...}
	}
}

ecs_service_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ecs_service_info: {

		// The cluster ARNS in which to list the services.

		cluster?: string

		// Set this to true if you want detailed information about the services.

		details?: bool

		// Whether to return ECS service events. Only has an effect if I(details=true).

		events?: bool

		// One or more services to get details for

		service?: [...string]
	}
}

elb_target_group_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elb_target_group_info: {

		// The names of the target groups.

		names?: [..._]

		// The Amazon Resource Names (ARN) of the target groups.

		target_group_arns?: [..._]

		// When set to "yes", output contains targets health description

		collect_targets_health?: bool

		// The Amazon Resource Name (ARN) of the load balancer.

		load_balancer_arn?: string
	}
}

sns :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	sns: {

		// Message to send to email-json subscriptions.

		email_json?: string

		// Dictionary of message attributes. These are optional structured data entries to be sent along to the endpoint.
		// This is in AWS's distinct Name/Type/Value format; see example below.

		message_attributes?: {...}

		// The payload format to use for the message.
		// This must be 'json' to support protocol-specific messages (C(http), C(https), C(email), C(sms), C(sqs)).
		// It must be 'string' to support I(message_attributes).

		message_structure?: string

		// Default message for subscriptions without a more specific message.

		msg: string

		// Message to send to SMS subscriptions.

		sms?: string

		// Message to send to SQS subscriptions.

		sqs?: string

		// Message to send to application subscriptions.

		application?: string

		// Message to send to email subscriptions.

		email?: string

		// The name or ARN of the topic to publish to.

		topic: string

		// Message to send to Lambda subscriptions.

		lambda?: string

		// Message subject

		subject?: string

		// Message to send to HTTP subscriptions.

		http?: string

		// Message to send to HTTPS subscriptions.

		https?: string
	}
}

dms_endpoint :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	dms_endpoint: {

		// S3 buckets settings for the target Amazon S3 endpoint.

		s3settings?: {...}

		// Servername that the endpoint will connect to.

		servername?: string

		// Amazon Resource Name (ARN) for the service access role that you want to use to create the endpoint.

		serviceaccessrolearn?: string

		// State of the endpoint.

		state?: string

		// Username our endpoint will use to connect to the database.

		username?: string

		// should wait for the object to be deleted when state = absent

		wait?: bool

		// Settings in JSON format for the target Amazon DynamoDB endpoint if source or target is dynamodb

		dynamodbsettings?: {...}

		// number of times we should retry when deleting a resource

		retries?: int

		// Settings in JSON format for the target Amazon Kinesis Data Streams endpoint

		kinesissettings?: {...}

		// Encryption key to use to encrypt replication storage and connection information.

		kmskeyid?: string

		// Settings in JSON format for the source MongoDB endpoint

		mongodbsettings?: {...}

		// Password used to connect to the database this attribute can only be written the AWS API does not return this parameter.

		password?: string

		// A list of tags to add to the endpoint.

		tags?: {...}

		// Database engine that we want to use, please refer to the AWS DMS for more information on the supported engines and their limitations.

		enginename?: string

		// Extra attributes for the database connection, the AWS documentation states " For more information about extra connection attributes, see the documentation section for your data store."

		extraconnectionattributes?: string

		// Settings in JSON format for the target Elasticsearch endpoint

		elasticsearchsettings?: {...}

		// The external table definition

		externaltabledefinition?: string

		// TCP port for access to the database.

		port?: int

		// Mode used for the ssl connection

		sslmode?: string

		// Amazon Resource Name (ARN) for the certificate.

		certificatearn?: string

		// Name for the database on the origin or target side

		databasename?: string

		// Type of endpoint we want to manage.

		endpointtype?: string

		// time in seconds we should wait for when deleting a resource

		timeout?: int

		// The settings in JSON format for the DMS transfer type of source endpoint

		dmstransfersettings?: {...}

		// An identifier name for the endpoint.

		endpointidentifier?: string
	}
}

aws_batch_job_queue :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_batch_job_queue: {

		// The name for the job queue

		job_queue_name: string

		// The state of the job queue. If the job queue state is ENABLED , it is able to accept jobs.

		job_queue_state?: string

		// The priority of the job queue. Job queues with a higher priority (or a lower integer value for the priority parameter) are evaluated first when associated with same compute environment. Priority is determined in ascending order, for example, a job queue with a priority value of 1 is given scheduling preference over a job queue with a priority value of 10.

		priority: int

		// Describes the desired state.

		state?: string

		// The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment should execute a given job. Compute environments must be in the VALID state before you can associate them with a job queue. You can associate up to 3 compute environments with a job queue.

		compute_environment_order: [...{...}]
	}
}

cloudwatchlogs_log_group_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	cloudwatchlogs_log_group_info: {

		// The name or prefix of the log group to filter by.

		log_group_name?: string
	}
}

ecs_taskdefinition_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ecs_taskdefinition_info: {

		// The name of the task definition to get details for

		task_definition: string
	}
}

s3_lifecycle :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	s3_lifecycle: {

		// Prefix identifying one or more objects to which the rule applies.  If no prefix is specified, the rule will apply to the whole bucket.

		prefix?: string

		// Unique identifier for the rule. The value cannot be longer than 255 characters. A unique value for the rule will be generated if no value is provided.

		rule_id?: string

		// Delete noncurrent versions this many days after they become noncurrent

		noncurrent_version_expiration_days?: int

		// Transition noncurrent versions this many days after they become noncurrent

		noncurrent_version_transition_days?: int

		// A list of transition behaviors to be applied to noncurrent versions for the rule. Each storage class may be used only once. Each transition behavior contains these elements
  I(transition_days)
  I(storage_class)


		noncurrent_version_transitions?: [..._]

		// Create or remove the lifecycle rule

		state?: string

		// Indicates the lifetime of the objects that are subject to the rule by the date they will transition to a different storage class. The value must be ISO-8601 format, the time must be midnight and a GMT timezone must be specified. If transition_days is not specified, this parameter is required."


		transition_date?: string

		// A list of transition behaviors to be applied to the rule. Each storage class may be used only once. Each transition behavior may contain these elements I(transition_days) I(transition_date) I(storage_class)

		transitions?: [..._]

		// Name of the s3 bucket

		name: string

		// Transition noncurrent versions to this storage class

		noncurrent_version_storage_class?: string

		// The I(requester_pays) option does nothing and will be removed in Ansible 2.14.

		requester_pays?: bool

		// If 'enabled', the rule is currently being applied. If 'disabled', the rule is not currently being applied.

		status?: string

		// The storage class to transition to. Currently there are two supported values - 'glacier',  'onezone_ia', or 'standard_ia'.
		// The 'standard_ia' class is only being available from Ansible version 2.2.

		storage_class?: string

		// Indicates the lifetime of the objects that are subject to the rule by the date they will expire. The value must be ISO-8601 format, the time must be midnight and a GMT timezone must be specified.


		expiration_date?: string

		// Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.

		expiration_days?: int

		// "Whether to replace all the current transition(s) with the new transition(s). When false, the provided transition(s) will be added, replacing transitions with the same storage_class. When true, existing transitions will be removed and replaced with the new transition(s)


		purge_transitions?: bool

		// Indicates when, in days, an object transitions to a different storage class. If transition_date is not specified, this parameter is required.

		transition_days?: int
	}
}

sns_topic :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	sns_topic: {

		// Display name of the topic.

		display_name?: string

		// The name or ARN of the SNS topic to manage.

		name: string

		// Policy to apply to the SNS topic.

		policy?: {...}

		// Whether to purge any subscriptions not listed here. NOTE: AWS does not allow you to purge any PendingConfirmation subscriptions, so if any exist and would be purged, they are silently skipped. This means that somebody could come back later and confirm the subscription. Sorry. Blame Amazon.

		purge_subscriptions?: bool

		// Whether to create or destroy an SNS topic.

		state?: string

		// List of subscriptions to apply to the topic. Note that AWS requires subscriptions to be confirmed, so you will need to confirm any new subscriptions.

		subscriptions?: [...{...}]

		// Delivery policy to apply to the SNS topic.

		delivery_policy?: {...}
	}
}

aws_application_scaling_policy :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_application_scaling_policy: {

		// The maximum value to scale to in response to a scale out event. This parameter is required if you are creating a first new policy for the specified service.

		maximum_tasks?: int

		// The minimum value to scale to in response to a scale in event. This parameter is required if you are creating a first new policy for the specified service.

		minimum_tasks?: int

		// The name of the scaling policy.

		policy_name: string

		// The scalable dimension associated with the scalable target.

		scalable_dimension: string

		// The namespace of the AWS service.

		service_namespace: string

		// Whether a policy should be present or absent

		state: string

		// A step scaling policy. This parameter is required if you are creating a policy and the policy type is StepScaling.

		step_scaling_policy_configuration?: {...}

		// Whether or not to override values of minimum and/or maximum tasks if it's already set.

		override_task_capacity?: bool

		// The policy type.

		policy_type: string

		// The identifier of the resource associated with the scalable target.

		resource_id: string

		// A target tracking policy. This parameter is required if you are creating a new policy and the policy type is TargetTrackingScaling.
		// Full documentation of the suboptions can be found in the API documentation:
		// U(https://docs.aws.amazon.com/autoscaling/application/APIReference/API_TargetTrackingScalingPolicyConfiguration.html)

		target_tracking_scaling_policy_configuration?: {...}
	}
}

ec2_asg_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_asg_info: {

		// The prefix or name of the auto scaling group(s) you are searching for.
		// Note: This is a regular expression match with implicit '^' (beginning of string). Append '$' for a complete name match.

		name?: string

		// A dictionary/hash of tags in the format { tag1_name: 'tag1_value', tag2_name: 'tag2_value' } to match against the auto scaling group(s) you are searching for.


		tags?: {...}
	}
}

ec2_vpc_vgw :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_vgw: {

		// name of the vgw to be created or deleted

		name?: string

		// present to ensure resource is created.
		// absent to remove resource

		state?: string

		// dictionary of resource tags

		tags?: {...}

		// type of the virtual gateway to be created

		type?: string

		// the vpc-id of a vpc to attach or detach

		vpc_id?: string

		// vpn gateway id of an existing virtual gateway

		vpn_gateway_id?: string

		// number of seconds to wait for status during vpc attach and detach

		wait_timeout?: int

		// the BGP ASN of the amazon side

		asn?: int
	}
}

iam_group :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam_group: {

		// The name of the group to create.

		name: string

		// Detach policy which not included in managed_policy list

		purge_policy?: bool

		// Detach users which not included in users list

		purge_users?: bool

		// Create or remove the IAM group

		state: string

		// A list of existing users to add as members of the group.

		users?: [..._]

		// A list of managed policy ARNs or friendly names to attach to the role. To embed an inline policy, use M(iam_policy).

		managed_policy?: [..._]
	}
}

ec2_ami_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_ami_info: {

		// Describe attributes (like launchPermission) of the images found.

		describe_image_attributes?: bool

		// Filter images by users with explicit launch permissions. Valid options are an AWS account ID, self, or all (public AMIs).

		executable_users?: [...string]

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value.
		// See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImages.html) for possible filters.
		// Filter names and values are case sensitive.

		filters?: {...}

		// One or more image IDs.

		image_ids?: [...string]

		// Filter the images by the owner. Valid options are an AWS account ID, self, or an AWS owner alias ( amazon | aws-marketplace | microsoft ).

		owners?: [...string]
	}
}

aws_sgw_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_sgw_info: {

		// Gather tape information for storage gateways in tape mode.

		gather_tapes?: bool

		// Gather volume information for storage gateways in iSCSI (cached & stored) modes.

		gather_volumes?: bool

		// Gather file share information for storage gateways in s3 mode.

		gather_file_shares?: bool

		// Gather local disks attached to the storage gateway.

		gather_local_disks?: bool
	}
}

aws_step_functions_state_machine :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_step_functions_state_machine: {

		// The Amazon States Language definition of the state machine. See U(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html) for more information on the Amazon States Language.
		// This parameter is required when C(state=present).

		definition?: string

		// Name of the state machine

		name: string

		// If yes, existing tags will be purged from the resource to match exactly what is defined by I(tags) parameter. If the I(tags) parameter is not set then tags will not be modified.

		purge_tags?: bool

		// The ARN of the IAM Role that will be used by the state machine for its executions.
		// This parameter is required when C(state=present).

		role_arn?: string

		// Desired state for the state machine

		state?: string

		// A hash/dictionary of tags to add to the new state machine or to add/remove from an existing one.

		tags?: {...}
	}
}

ec2_ami :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_ami: {

		// Human-readable string describing the contents and purpose of the AMI.

		description?: string

		// Image ID to be deregistered.

		image_id?: string

		// The root device name of the image to register.

		root_device_name?: string

		// Wait for the AMI to be in state 'available' before returning.

		wait?: bool

		// How long before wait gives up, in seconds.

		wait_timeout?: int

		// The target architecture of the image to register

		architecture?: string

		// The ID of the RAM disk.

		ramdisk_id?: string

		// Register or deregister an AMI.

		state?: string

		// A dictionary of tags to add to the new image; '{"key":"value"}' and '{"key":"value","key":"value"}'

		tags?: {...}

		// The virtualization type of the image to register.

		virtualization_type?: string

		// A list of valid billing codes. To be used with valid accounts by aws marketplace vendors.

		billing_products?: [...string]

		// Delete snapshots when deregistering the AMI.

		delete_snapshot?: bool

		// The name of the new AMI.

		name?: string

		// Whether to remove existing tags that aren't passed in the C(tags) parameter

		purge_tags?: bool

		// Set to simple to enable enhanced networking with the Intel 82599 Virtual Function interface for the AMI and any instances that you launch from the AMI.

		sriov_net_support?: string

		// Users and groups that should be able to launch the AMI. Expects dictionary with a key of user_ids and/or group_names. user_ids should be a list of account ids. group_name should be a list of groups, "all" is the only acceptable value currently.
		// You must pass all desired launch permissions if you wish to modify existing launch permissions (passing just groups will remove all users)

		launch_permissions?: {...}

		// Flag indicating that the bundling process should not attempt to shutdown the instance before bundling. If this flag is True, the responsibility of maintaining file system integrity is left to the owner of the instance.

		no_reboot?: bool

		// List of device hashes/dictionaries with custom configurations (same block-device-mapping parameters).

		device_mapping?: [...{...}]

		// A boolean representing whether enhanced networking with ENA is enabled or not.

		enhanced_networking?: bool

		// The s3 location of an image to use for the AMI.

		image_location?: string

		// Instance ID to create the AMI from.

		instance_id?: string

		// The target kernel id of the image to register.

		kernel_id?: string
	}
}

ec2_group :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_group: {

		// If yes, existing tags will be purged from the resource to match exactly what is defined by I(tags) parameter. If the I(tags) parameter is not set then tags will not be modified.

		purge_tags?: bool

		// List of firewall inbound rules to enforce in this group (see example). If none are supplied, no inbound rules will be enabled. Rules list may include its own name in `group_name`. This allows idempotent loopback additions (e.g. allow group to access itself). Rule sources list support was added in version 2.4. This allows to define multiple sources per source type as well as multiple source types per rule. Prior to 2.4 an individual source is allowed. In version 2.5 support for rule descriptions was added.

		rules?: [...{...}]

		// Create or delete a security group.

		state?: string

		// A dictionary of one or more tags to assign to the security group.

		tags?: {...}

		// Description of the security group. Required when C(state) is C(present).

		description?: string

		// Purge existing rules on security group that are not found in rules.

		purge_rules?: bool

		// Purge existing rules_egress on security group that are not found in rules_egress.

		purge_rules_egress?: bool

		// List of firewall outbound rules to enforce in this group (see example). If none are supplied, a default all-out rule is assumed. If an empty list is supplied, no outbound rules will be enabled. Rule Egress sources list support was added in version 2.4. In version 2.5 support for rule descriptions was added.

		rules_egress?: [...{...}]

		// ID of the VPC to create the group in.

		vpc_id?: string

		// Id of group to delete (works only with absent).
		// One of and only one of I(name) or I(group_id) is required.

		group_id?: string

		// Name of the security group.
		// One of and only one of I(name) or I(group_id) is required.
		// Required if I(state=present).

		name?: string
	}
}

elasticache :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elasticache: {

		// The name of the cache parameter group to associate with this cache cluster. If this argument is omitted, the default cache parameter group for the specified engine will be used.

		cache_parameter_group?: string

		// A list of cache security group names to associate with this cache cluster. Must be an empty list if inside a vpc.

		cache_security_groups?: [...string]

		// Wait for cache cluster result before returning.

		wait?: bool

		// The port number on which each of the cache nodes will accept connections.

		cache_port?: int

		// Whether to destroy and recreate an existing cache cluster if necessary in order to modify its state.

		hard_modify?: bool

		// The cache cluster identifier.

		name: string

		// The compute and memory capacity of the nodes in the cache cluster.

		node_type?: string

		// The initial number of cache nodes that the cache cluster will have.
		// Required when I(state=present).

		num_nodes?: int

		// A list of vpc security group IDs to associate with this cache cluster. Only use if inside a vpc.

		security_group_ids?: [...string]

		// Name of the cache engine to be used.
		// Supported values are C(redis) and C(memcached).

		engine?: string

		// The version number of the cache engine.

		cache_engine_version?: string

		// The subnet group name to associate with. Only use if inside a vpc.
		// Required if inside a vpc

		cache_subnet_group?: string

		// C(absent) or C(present) are idempotent actions that will create or destroy a cache cluster as needed.
		// C(rebooted) will reboot the cluster, resulting in a momentary outage.

		state: string

		// The EC2 Availability Zone in which the cache cluster will be created.

		zone?: string
	}
}

lambda_facts :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	lambda_facts: {

		// Specifies the resource type for which to gather facts.  Leave blank to retrieve all facts.

		query: string

		// For query type 'mappings', this is the Amazon Resource Name (ARN) of the Amazon Kinesis or DynamoDB stream.

		event_source_arn?: string

		// The name of the lambda function for which facts are requested.

		function_name?: string
	}
}

rds_instance :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	rds_instance: {

		// Whether or not to copy all tags from the DB instance to snapshots of the instance. When initially creating a DB instance the RDS API defaults this to false if unspecified.

		copy_tags_to_snapshot?: bool

		// The ARN from the key store with which to associate the instance for Transparent Data Encryption. This is supported by Oracle or SQL Server DB instances and may be used in conjunction with C(storage_encrypted) though it might slightly affect the performance of your database.

		tde_credential_arn?: string

		// The name of the DB parameter group to associate with this DB instance. When creating the DB instance if this argument is omitted the default DBParameterGroup for the specified engine is used.

		db_parameter_group_name?: string

		// An 8-41 character password for the master database user. The password can contain any printable ASCII character except "/", """, or "@". To modify the password use I(force_password_update). Use I(apply immediately) to change the password immediately, otherwise it is updated during the next maintenance window.

		master_user_password?: string

		// The storage type to be associated with the DB instance. I(storage_type) does not apply to Aurora DB instances.

		storage_type?: string

		// The character set to associate with the DB cluster.

		character_set_name?: string

		// The DB instance snapshot identifier of the new DB instance snapshot created when I(skip_final_snapshot) is false.

		final_db_snapshot_identifier?: string

		// A dictionary of Name, Value pairs to indicate the number of CPU cores and the number of threads per core for the DB instance class of the DB instance. Names are threadsPerCore and coreCount. Set this option to an empty dictionary to use the default processor features.

		processor_features?: {...}

		// Whether to wait for the cluster to be available, stopped, or deleted. At a later time a wait_timeout option may be added. Following each API call to create/modify/delete the instance a waiter is used with a 60 second delay 30 times until the instance reaches the expected state (available/stopped/deleted). The total task time may also be influenced by AWSRetry which helps stabilize if the instance is in an invalid state to operate on to begin with (such as if you try to stop it when it is in the process of rebooting). If setting this to False task retries and delays may make your playbook execution better handle timeouts for major modifications.

		wait?: bool

		// (EC2-Classic platform) A list of DB security groups to associate with this DB instance.

		db_security_groups?: [..._]

		// An integer that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance.

		promotion_tier?: string

		// The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon RDS to access the Amazon S3 bucket on your behalf.

		s3_ingestion_role_arn?: string

		// A list of EC2 VPC security groups to associate with the DB cluster.

		vpc_security_group_ids?: [..._]

		// Enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. If this option is omitted when creating the cluster, Amazon RDS sets this to False.

		enable_iam_database_authentication?: bool

		// The Provisioned IOPS (I/O operations per second) value. Is only set when using I(storage_type) is set to io1.

		iops?: int

		// The ARN of the AWS KMS key identifier for an encrypted DB instance. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key.
		// If I(storage_encrypted) is true and and this option is not provided, the default encryption key is used.

		kms_key_id?: string

		// The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.

		max_allocated_storage?: int

		// The identifier or ARN of the source DB instance from which to restore when creating a read replica or spinning up a point-in-time DB instance using I(creation_source=instance). If the source DB is not in the same region this should be an ARN.

		source_db_instance_identifier?: string

		// A dictionary of key value pairs to assign the DB cluster.

		tags?: {...}

		// A list of EC2 Availability Zones that instances in the DB cluster can be created in. May be used when creating a cluster or when restoring from S3 or a snapshot. Mutually exclusive with I(multi_az).

		availability_zone?: string

		// The identifier for the DB snapshot to restore from if using I(creation_source=snapshot).

		db_snapshot_identifier?: string

		// A list of log types that need to be enabled for exporting to CloudWatch Logs.

		enable_cloudwatch_logs_exports?: [..._]

		// The amount of storage (in gibibytes) to allocate for the DB instance.

		allocated_storage?: int

		// The name for your database. If a name is not provided Amazon RDS will not create a database.

		db_name?: string

		// The interval, in seconds, when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting metrics, specify 0. Amazon RDS defaults this to 0 if omitted when initially creating a DB instance.

		monitoring_interval?: int

		// Specifies if the DB instance is a Multi-AZ deployment. Mutually exclusive with I(availability_zone).

		multi_az?: bool

		// The weekly time range (in UTC) of at least 30 minutes, during which system maintenance can occur. The option must be in the format "ddd:hh24:mi-ddd:hh24:mi" where ddd is one of Mon, Tue, Wed, Thu, Fri, Sat, Sun.

		preferred_maintenance_window?: string

		// The version of the database that the backup files were created from.

		source_engine_version?: string

		// The DB subnet group name to use for the DB instance.

		db_subnet_group_name?: string

		// The prefix for all of the file names that contain the data used to create the Amazon DB instance. If you do not specify a SourceS3Prefix value, then the Amazon DB instance is created by using all of the files in the Amazon S3 bucket.

		s3_prefix?: string

		// Whether the snapshot should exist or not. I(rebooted) is not idempotent and will leave the DB instance in a running state and start it prior to rebooting if it was stopped. I(present) will leave the DB instance in the current running/stopped state, (running if creating the DB instance).
		// I(state=running) and I(state=started) are synonyms, as are I(state=rebooted) and I(state=restarted). Note - rebooting the instance is not idempotent.

		state?: string

		// The time zone of the DB instance.

		timezone?: string

		// The compute and memory capacity of the DB instance, for example db.t2.micro.

		db_instance_class?: string

		// Whether to enable Performance Insights for the DB instance.

		enable_performance_insights?: bool

		// The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs.

		monitoring_role_arn?: string

		// The region of the DB instance from which the replica is created.

		source_region?: string

		// Whether to allow major version upgrades.

		allow_major_version_upgrade?: bool

		// The identifier of the CA certificate for the DB instance.

		ca_certificate_identifier?: string

		// The Active Directory Domain to restore the instance in.

		domain?: string

		// The name of the database engine to be used for this DB instance. This is required to create an instance. Valid choices are aurora | aurora-mysql | aurora-postgresql | mariadb | mysql | oracle-ee | oracle-se | oracle-se1 | oracle-se2 | postgres | sqlserver-ee | sqlserver-ex | sqlserver-se | sqlserver-web

		engine?: string

		// The name of the Amazon S3 bucket that contains the data used to create the Amazon DB instance.

		s3_bucket_name?: string

		// Which source to use if restoring from a template (an existing instance, S3 bucket, or snapshot).

		creation_source?: string

		// Set to True to update your cluster password with I(master_user_password). Since comparing passwords to determine if it needs to be updated is not possible this is set to False by default to allow idempotence.

		force_update_password?: bool

		// The name of the master user for the DB cluster. Must be 1-16 letters or numbers and begin with a letter.

		master_username?: string

		// The AWS KMS key identifier (ARN, name, or alias) for encryption of Performance Insights data.

		performance_insights_kms_key_id?: string

		// The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731.

		performance_insights_retention_period?: int

		// The DB cluster (lowercase) identifier to add the aurora DB instance to. The identifier must contain from 1 to 63 letters, numbers, or hyphens and the first character must be a letter and may not end in a hyphen or contain consecutive hyphens.

		db_cluster_identifier?: string

		// The name of the IAM role to be used when making API calls to the Directory Service.

		domain_iam_role_name?: string

		// The version number of the database engine to use. For Aurora MySQL that could be 5.6.10a , 5.7.12. Aurora PostgreSQL example, 9.6.3

		engine_version?: string

		// The license model for the DB instance.
		// Several options are license-included, bring-your-own-license, and general-public-license.
		// This option can also be omitted to default to an accepted value.

		license_model?: string

		// The new DB cluster (lowercase) identifier for the DB cluster when renaming a DB instance. The identifier must contain from 1 to 63 letters, numbers, or hyphens and the first character must be a letter and may not end in a hyphen or contain consecutive hyphens. Use I(apply_immediately) to rename immediately, otherwise it is updated during the next maintenance window.

		new_db_instance_identifier?: string

		// Set to False to retain any enabled cloudwatch logs that aren't specified in the task and are associated with the instance.

		purge_cloudwatch_logs_exports?: bool

		// Set to False to promote a read replica cluster or true to create one. When creating a read replica C(creation_source) should be set to 'instance' or not provided. C(source_db_instance_identifier) must be provided with this option.

		read_replica?: bool

		// Whether a final DB cluster snapshot is created before the DB cluster is deleted. If this is false I(final_db_snapshot_identifier) must be provided.

		skip_final_snapshot?: bool

		// The number of days for which automated backups are retained (must be greater or equal to 1). May be used when creating a new cluster, when restoring from S3, or when modifying a cluster.

		backup_retention_period?: int

		// Set to true to conduct the reboot through a MultiAZ failover.

		force_failover?: bool

		// Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.

		publicly_accessible?: bool

		// Set to False to retain any tags that aren't specified in task and are associated with the instance.

		purge_tags?: bool

		// If using I(creation_source=instance) this indicates the UTC date and time to restore from the source instance. For example, "2009-09-07T23:45:00Z". May alternatively set C(use_latest_restore_time) to True.

		restore_time?: string

		// The DB instance (lowercase) identifier. The identifier must contain from 1 to 63 letters, numbers, or hyphens and the first character must be a letter and may not end in a hyphen or contain consecutive hyphens.

		db_instance_identifier: string

		// The option group to associate with the DB instance.

		option_group_name?: string

		// The port number on which the instances accept connections.

		port?: int

		// The ARN of the DB snapshot to restore from when using I(creation_source=snapshot).

		snapshot_identifier?: string

		// Whether the DB instance is encrypted.

		storage_encrypted?: bool

		// Whether to restore the DB instance to the latest restorable backup time. Only one of I(use_latest_restorable_time) and I(restore_to_time) may be provided.

		use_latest_restorable_time?: bool

		// A value that specifies whether modifying a cluster with I(new_db_instance_identifier) and I(master_user_password) should be applied as soon as possible, regardless of the I(preferred_maintenance_window) setting. If false, changes are applied during the next maintenance window.

		apply_immediately?: bool

		// Whether minor version upgrades are applied automatically to the DB instance during the maintenance window.

		auto_minor_version_upgrade?: bool

		// The daily time range (in UTC) of at least 30 minutes, during which automated backups are created if automated backups are enabled using I(backup_retention_period). The option must be in the format of "hh24:mi-hh24:mi" and not conflict with I(preferred_maintenance_window).

		preferred_backup_window?: string

		// The identifier for the database engine that was backed up to create the files stored in the Amazon S3 bucket.

		source_engine?: string

		// The password for the given ARN from the key store in order to access the device.

		tde_credential_password?: string
	}
}

aws_s3_bucket_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_s3_bucket_info: {
	}
}

route53_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	route53_info: {

		// The ID of the change batch request.
		// The value that you specify here is the value that ChangeResourceRecordSets returned in the Id element when you submitted the request.
		// Required if I(query=change).

		change_id?: string

		// The DNS Zone delegation set ID.

		delegation_set_id?: string

		// The first name in the lexicographic ordering of domain names that you want the list_command to start listing from.

		dns_name?: string

		// The Hosted Zone ID of the DNS zone.
		// Required if I(query) is set to I(hosted_zone) and I(hosted_zone_method) is set to I(details).
		// Required if I(query) is set to I(record_sets).

		hosted_zone_id?: string

		// This is used in conjunction with query: hosted_zone. It allows for listing details, counts or tags of various hosted zone details.

		hosted_zone_method?: string

		// Maximum number of items to return for various get/list requests.

		max_items?: string

		// Specifies the query action to take.

		query: string

		// The ID of the health check.
		// Required if C(query) is set to C(health_check) and C(health_check_method) is set to C(details) or C(status) or C(failure_reason).

		health_check_id?: string

		// This is used in conjunction with query: health_check. It allows for listing details, counts or tags of various health check details.

		health_check_method?: string

		// Some requests such as list_command: hosted_zones will return a maximum number of entries - EG 100 or the number specified by I(max_items). If the number of entries exceeds this maximum another request can be sent using the NextMarker entry from the first response to get the next page of results.

		next_marker?: string

		// The ID/s of the specified resource/s.
		// Required if I(query=health_check) and I(health_check_method=tags).
		// Required if I(query=hosted_zone) and I(hosted_zone_method=tags).

		resource_id?: [...string]

		// The first name in the lexicographic ordering of domain names that you want the list_command: record_sets to start listing from.

		start_record_name?: string

		// The type of DNS record.

		type?: string
	}
}

ec2_launch_template :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_launch_template: {

		// The name of the key pair. You can create a key pair using M(ec2_key).
		// If you do not specify a key pair, you can't connect to the instance unless you choose an AMI that is configured to allow users another way to log in.

		key_name?: string

		// Settings for instance monitoring.

		monitoring?: {...}

		// One or more network interfaces.

		network_interfaces?: [...{...}]

		// The Base64-encoded user data to make available to the instance. For more information, see the Linux U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html) and Windows U(http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data) documentation on user-data.


		user_data?: string

		// The block device mapping. Supplying both a snapshot ID and an encryption value as arguments for block-device mapping results in an error. This is because only blank volumes can be encrypted on start, and these are not created from a snapshot. If a snapshot is the basis for the volume, it contains data by definition and its encryption status cannot be changed using this action.

		block_device_mappings?: [...{...}]

		// Which version should be the default when users spin up new instances based on this template? By default, the latest version will be made the default.

		default_version?: string

		// This helps protect instances from accidental termination. If set to true, you can't terminate the instance using the Amazon EC2 console, CLI, or API. To change this attribute to false after launch, use I(ModifyInstanceAttribute).


		disable_api_termination?: bool

		// Options for alternative instance markets, currently only the spot market is supported.

		instance_market_options?: {...}

		// A set of key-value pairs to be applied to resources when this Launch Template is used.
		// Tag key constraints: Tag keys are case-sensitive and accept a maximum of 127 Unicode characters. May not begin with I(aws:)
		// Tag value constraints: Tag values are case-sensitive and accept a maximum of 255 Unicode characters.

		tags?: {...}

		// Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance.


		ebs_optimized?: bool

		// Indicates whether an instance stops or terminates when you initiate shutdown from the instance using the operating system shutdown command.


		instance_initiated_shutdown_behavior?: string

		// A list of security group names (VPC or EC2-Classic) that the new instances will be added to.

		security_groups?: [...string]

		// Whether the launch template should exist or not.
		// Deleting specific versions of a launch template is not supported at this time.

		state?: string

		// The placement group settings for the instance.

		placement?: {...}

		// The ID of the RAM disk to launch the instance with. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html)


		ram_disk_id?: string

		// A list of security group IDs (VPC or EC2-Classic) that the new instances will be added to.

		security_group_ids?: [...string]

		// Choose CPU settings for the EC2 instances that will be created with this template.
		// For more information, see U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html)

		cpu_options?: {...}

		// The credit option for CPU usage of the instance. Valid for T2 or T3 instances only.

		credit_specification?: {...}

		// Settings for Elastic GPU attachments. See U(https://aws.amazon.com/ec2/elastic-gpus/) for details.

		elastic_gpu_specifications?: [...{...}]

		// The ID of the kernel. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html)


		kernel_id?: string

		// The template name. This must be unique in the region-account combination you are using.

		template_name?: string

		// The name or ARN of an IAM instance profile. Requires permissions to describe existing instance roles to confirm ARN is properly formed.


		iam_instance_profile?: string

		// The AMI ID to use for new instances launched with this template. This value is region-dependent since AMIs are not global resources.


		image_id?: string

		// The instance type, such as C(c5.2xlarge). For a full list of instance types, see U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).


		instance_type?: string

		// The ID for the launch template, can be used for all cases except creating a new Launch Template.

		template_id?: string
	}
}

iam_mfa_device_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam_mfa_device_info: {

		// The name of the user whose MFA devices will be listed

		user_name?: string
	}
}

iam_role :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam_role: {

		// A list of managed policy ARNs or, since Ansible 2.4, a list of either managed policy ARNs or friendly names. To embed an inline policy, use M(iam_policy). To remove existing policies, use an empty list item.

		managed_policy?: [..._]

		// The path to the role. For more information about paths, see U(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html).

		path?: string

		// The name of the role to create.

		name: string

		// Detaches any managed policies not listed in the I(managed_policy) option. Set to false if you want to attach policies elsewhere.

		purge_policies?: bool

		// The trust relationship policy document that grants an entity permission to assume the role.
		// This parameter is required when I(state=present).

		assume_role_policy_document?: string

		// The ARN of an IAM managed policy to use to restrict the permissions this role can pass on to IAM roles/users that it creates.
		// Boundaries cannot be set on Instance Profiles, so if this option is specified then I(create_instance_profile) must be false.
		// This is intended for roles/users that have permissions to create new IAM objects.
		// For more information on boundaries, see U(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html)
		// Requires botocore 1.10.57 or above.

		boundary?: string

		// Creates an IAM instance profile along with the role.

		create_instance_profile?: bool

		// When deleting a role will also delete the instance profile created with the same name as the role.
		// Only applies when I(state=absent).

		delete_instance_profile?: bool

		// Provide a description of the new role.

		description?: string

		// The maximum duration (in seconds) of a session when assuming the role.
		// Valid values are between 1 and 12 hours (3600 and 43200 seconds).

		max_session_duration?: int

		// Remove tags not listed in I(tags) when tags is specified.

		purge_tags?: bool

		// Create or remove the IAM role.

		state?: string

		// Tag dict to apply to the queue.
		// Requires botocore 1.12.46 or above.

		tags?: {...}
	}
}

kinesis_stream :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	kinesis_stream: {

		// Enable or Disable encryption on the Kinesis Stream.

		encryption_state?: string

		// The GUID or alias for the KMS key.

		key_id?: string

		// The length of time (in hours) data records are accessible after they are added to the stream.
		// The default retention period is 24 hours and can not be less than 24 hours.
		// The maximum retention period is 168 hours.
		// The retention period can be modified during any point in time.

		retention_period?: int

		// The number of shards you want to have with this stream.
		// This is required when I(state=present)

		shards?: int

		// A dictionary of resource tags of the form: C({ tag1: value1, tag2: value2 }).

		tags?: {...}

		// Wait for operation to complete before returning.

		wait?: bool

		// The type of encryption.
		// Defaults to C(KMS)

		encryption_type?: string

		// The name of the Kinesis Stream you are managing.

		name: string

		// Create or Delete the Kinesis Stream.

		state?: string

		// How many seconds to wait for an operation to complete before timing out.

		wait_timeout?: int
	}
}

lambda_policy :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	lambda_policy: {

		// The principal who is getting this permission. It can be Amazon S3 service Principal (s3.amazonaws.com ) if you want Amazon S3 to invoke the function, an AWS account ID if you are granting cross-account permission, or any valid AWS service principal such as sns.amazonaws.com . For example, you might want to allow a custom application in another AWS account to push events to AWS Lambda by invoking your function.

		principal: string

		// This is optional; however, when granting Amazon S3 permission to invoke your function, you should specify this field with the bucket Amazon Resource Name (ARN) as its value. This ensures that only events generated from the specified bucket can invoke the function.

		source_arn?: string

		// A unique statement identifier.

		statement_id: string

		// Version of the Lambda function. Mutually exclusive with I(alias).

		version?: int

		// The AWS Lambda action you want to allow in this statement. Each Lambda action is a string starting with lambda: followed by the API name (see Operations ). For example, C(lambda:CreateFunction) . You can use wildcard (C(lambda:*)) to grant permission for all AWS Lambda actions.

		action: string

		// Name of the function alias. Mutually exclusive with I(version).

		alias?: string

		// Name of the Lambda function whose resource policy you are updating by adding a new permission.
		// You can specify a function name (for example, Thumbnail ) or you can specify Amazon Resource Name (ARN) of the
		// function (for example, C(arn:aws:lambda:us-west-2:account-id:function:ThumbNail) ). AWS Lambda also allows you to
		// specify partial ARN (for example, C(account-id:Thumbnail) ). Note that the length constraint applies only to the
		// ARN. If you specify only the function name, it is limited to 64 character in length.

		function_name: string

		// Token string representing source ARN or account. Mutually exclusive with I(source_arn) or I(source_account).

		event_source_token?: string

		// The AWS account ID (without a hyphen) of the source owner. For example, if I(source_arn) identifies a bucket, then this is the bucket owner's account ID. You can use this additional condition to ensure the bucket you specify is owned by a specific account (it is possible the bucket owner deleted the bucket and some other AWS account created the bucket). You can also use this condition to specify all sources (that is, you don't specify the I(source_arn) ) owned by a specific account.

		source_account?: string

		// Describes the desired state.

		state?: string
	}
}

rds_subnet_group :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	rds_subnet_group: {

		// List of subnet IDs that make up the database subnet group.
		// Required when I(state=present).

		subnets?: [..._]

		// Database subnet group description.
		// Required when I(state=present).

		description?: string

		// Database subnet group identifier.

		name: string

		// Specifies whether the subnet should be present or absent.

		state: string
	}
}

aws_region_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_region_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeRegions.html) for possible filters. Filter names and values are case sensitive. You can also use underscores instead of dashes (-) in the filter keys, which will take precedence in case of conflict.

		filters?: {...}
	}
}

ec2_vpc_igw_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_igw_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInternetGateways.html) for possible filters.

		filters?: {...}

		// Get details of specific Internet Gateway ID. Provide this value as a list.

		internet_gateway_ids?: [...string]
	}
}

ecs_service :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ecs_service: {

		// The launch type on which to run your service.

		launch_type?: string

		// The placement constraints for the tasks in the service.

		placement_constraints?: [...{...}]

		// Seconds to wait before health checking the freshly added/updated services.
		// This option requires botocore >= 1.8.20.

		health_check_grace_period_seconds?: int

		// The list of ELBs defined for this service.

		load_balancers?: [...string]

		// The name of the service.

		name: string

		// Network configuration of the service. Only applicable for task definitions created with I(network_mode=awsvpc).
		// I(assign_public_ip) requires botocore >= 1.8.4

		network_configuration?: {...}

		// The number of times to check that the service is available.

		repeat?: int

		// The name or full Amazon Resource Name (ARN) of the IAM role that allows your Amazon ECS container agent to make calls to your load balancer on your behalf.
		// This parameter is only required if you are using a load balancer with your service in a network mode other than C(awsvpc).

		role?: string

		// Optional parameters that control the deployment_configuration.
		// Format is '{"maximum_percent":<integer>, "minimum_healthy_percent":<integer>}

		deployment_configuration?: {...}

		// The task definition the service will run.
		// This parameter is required when I(state=present).

		task_definition?: string

		// Force deployment of service even if there are no changes.

		force_new_deployment?: bool

		// The name of the cluster in which the service exists.

		cluster?: string

		// The time to wait before checking that the service is available.

		delay?: int

		// The count of how many instances of the service.
		// This parameter is required when I(state=present).

		desired_count?: int

		// The placement strategy objects to use for tasks in your service. You can specify a maximum of 5 strategy rules per service.

		placement_strategy?: [...{...}]

		// The scheduling strategy, defaults to "REPLICA" if not given to preserve previous behavior

		scheduling_strategy?: string

		// Describes service discovery registries this service will register with.

		service_registries?: [...{...}]

		// The desired state of the service.

		state: string

		// Unique, case-sensitive identifier you provide to ensure the idempotency of the request. Up to 32 ASCII characters are allowed.

		client_token?: string
	}
}

s3_bucket_notification :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	s3_bucket_notification: {

		// Optional prefix to limit the notifications to objects with keys that start with matching characters.

		prefix?: string

		// Describes the desired state.

		state: string

		// S3 bucket name

		bucket_name: string

		// Events that you want to be triggering notifications. You can select multiple events to send to the same destination, you can set up different events to send to different destinations, and you can set up a prefix or suffix for an event. However, for each bucket, individual events cannot have multiple configurations with overlapping prefixes or suffixes that could match the same object key.

		events: [..._]

		// The ARN of the lambda function.

		lambda_function_arn?: string

		// Optional suffix to limit the notifications to objects with keys that end with matching characters.

		suffix?: string

		// unique name for event notification on bucket

		event_name: string

		// Name of the Lambda function alias. Mutually exclusive with C(lambda_version).

		lambda_alias?: string

		// Version of the Lambda function. Mutually exclusive with C(lambda_alias).

		lambda_version?: int
	}
}

ec2_eip :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_eip: {

		// The primary or secondary private IP address to associate with the Elastic IP address.

		private_ip_address?: string

		// The IP address of a previously allocated EIP.
		// When I(public_ip=present) and device is specified, the EIP is associated with the device.
		// When I(public_ip=absent) and device is specified, the EIP is disassociated from the device.

		public_ip?: string

		// Whether or not to automatically release the EIP when it is disassociated.

		release_on_disassociation?: bool

		// Reuse an EIP that is not associated to a device (when available), instead of allocating a new one.

		reuse_existing_ip_allowed?: bool

		// When C(state=present), allocate an EIP or associate an existing EIP with a device.
		// When C(state=absent), disassociate the EIP from the device and optionally release it.

		state?: string

		// Specify this option to allow an Elastic IP address that is already associated with another network interface or instance to be re-associated with the specified instance or interface.

		allow_reassociation?: bool

		// Allocate an EIP inside a VPC or not.
		// Required if specifying an ENI with I(device_id).

		in_vpc?: bool

		// Allocates the new Elastic IP from the provided public IPv4 pool (BYOIP) only applies to newly allocated Elastic IPs, isn't validated when I(reuse_existing_ip_allowed=true).

		public_ipv4_pool?: string

		// When I(reuse_existing_ip_allowed=true), supplement with this option to only reuse an Elastic IP if it is tagged with I(tag_name).

		tag_name?: string

		// Supplements I(tag_name) but also checks that the value of the tag provided in I(tag_name) matches I(tag_value).

		tag_value?: string

		// The I(wait_timeout) option does nothing and will be removed in Ansible 2.14.

		wait_timeout?: int

		// The id of the device for the EIP. Can be an EC2 Instance id or Elastic Network Interface (ENI) id.

		device_id?: string
	}
}

ec2_vpc_peering_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_peering_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcPeeringConnections.html) for possible filters.

		filters?: {...}

		// List of specific VPC peer IDs to get details for.

		peer_connection_ids?: [...string]
	}
}

aws_direct_connect_connection :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_direct_connect_connection: {

		// The ID of the Direct Connect connection. I(name) or I(connection_id) is required to recreate or delete a connection. Modifying attributes of a connection with I(forced_update) will result in a new Direct Connect connection ID.

		connection_id?: string

		// To modify bandwidth or location the connection will need to be deleted and recreated. By default this will not happen - this option must be set to True.

		forced_update?: bool

		// The ID of the link aggregation group you want to associate with the connection. This is optional in case a stand-alone connection is desired.

		link_aggregation_group?: string

		// Where the Direct Connect connection is located. Required when I(state=present).

		location?: string

		// The name of the Direct Connect connection. This is required to create a new connection. To recreate or delete a connection I(name) or I(connection_id) is required.

		name?: string

		// The state of the Direct Connect connection.

		state?: string

		// The bandwidth of the Direct Connect connection. Required when I(state=present).

		bandwidth?: string
	}
}

aws_s3_cors :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_s3_cors: {

		// Name of the s3 bucket

		name: string

		// Cors rules to put on the s3 bucket

		rules?: [..._]

		// Create or remove cors on the s3 bucket

		state: string
	}
}

cloudformation_stack_set :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	cloudformation_stack_set: {

		// How long to wait (in seconds) for stacks to complete create/update/delete operations.

		wait_timeout?: int

		// ARN of the execution role, meaning the role that CloudFormation Stack Sets assumes in your child accounts.
		// This MUST NOT be an ARN, and the roles must exist in each child account specified.
		// The default name for the execution role is C(AWSCloudFormationStackSetExecutionRole)

		execution_role_name?: string

		// Only applicable when I(state=absent). Sets whether, when deleting a stack set, the stack instances should also be deleted.
		// By default, instances will be deleted. To keep stacks when stack set is deleted set I(purge_stacks=false).

		purge_stacks?: bool

		// A description of what this stack set creates.

		description?: string

		// Name of the CloudFormation stack set.

		name: string

		// A list of AWS regions to create instances of a stack in. The I(region) parameter chooses where the Stack Set is created, and I(regions) specifies the region for stack instances.
		// At least one region must be specified to create a stack set. On updates, if fewer regions are specified only the specified regions will have their stack instances updated.

		regions?: [...string]

		// Whether or not to wait for stack operation to complete. This includes waiting for stack instances to reach UPDATE_COMPLETE status.
		// If you choose not to wait, this module will not notify when stack operations fail because it will not wait for them to finish.

		wait?: bool

		// ARN of the administration role, meaning the role that CloudFormation Stack Sets use to assume the roles in your child accounts.
		// This defaults to C(arn:aws:iam::{{ account ID }}:role/AWSCloudFormationStackSetAdministrationRole) where C({{ account ID }}) is replaced with the account number of the current IAM role/user/STS credentials.

		administration_role_arn?: string

		// Capabilities allow stacks to create and modify IAM resources, which may include adding users or roles.
		// Currently the only available values are 'CAPABILITY_IAM' and 'CAPABILITY_NAMED_IAM'. Either or both may be provided.
		// The following resources require that one or both of these parameters is specified: AWS::IAM::AccessKey, AWS::IAM::Group, AWS::IAM::InstanceProfile, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::IAM::UserToGroupAddition


		capabilities?: [...string]

		// The local path of the CloudFormation template.
		// This must be the full path to the file, relative to the working directory. If using roles this may look like C(roles/cloudformation/files/cloudformation-example.json).
		// If I(state=present) and the stack does not exist yet, either I(template), I(template_body) or I(template_url) must be specified (but only one of them).
		// If I(state=present), the stack does exist, and neither I(template), I(template_body) nor I(template_url) are specified, the previous template will be reused.

		template?: string

		// Template body. Use this to pass in the actual body of the CloudFormation template.
		// If I(state=present) and the stack does not exist yet, either I(template), I(template_body) or I(template_url) must be specified (but only one of them).
		// If I(state=present), the stack does exist, and neither I(template), I(template_body) nor I(template_url) are specified, the previous template will be reused.

		template_body?: string

		// Location of file containing the template body.
		// The URL must point to a template (max size 307,200 bytes) located in an S3 bucket in the same region as the stack.
		// If I(state=present) and the stack does not exist yet, either I(template), I(template_body) or I(template_url) must be specified (but only one of them).
		// If I(state=present), the stack does exist, and neither I(template), I(template_body) nor I(template_url) are specified, the previous template will be reused.

		template_url?: string

		// A list of hashes of all the template variables for the stack. The value can be a string or a dict.
		// Dict can be used to set additional template parameter attributes like UsePreviousValue (see example).

		parameters?: {...}

		// Dictionary of tags to associate with stack and its resources during stack creation.
		// Can be updated later, updating tags removes previous entries.

		tags?: {...}

		// If I(state=present), stack will be created.  If I(state=present) and if stack exists and template has changed, it will be updated. If I(state=absent), stack will be removed.

		state?: string

		// A list of AWS accounts in which to create instance of CloudFormation stacks.
		// At least one region must be specified to create a stack set. On updates, if fewer regions are specified only the specified regions will have their stack instances updated.

		accounts?: [...string]

		// Settings to change what is considered "failed" when running stack instance updates, and how many to do at a time.

		failure_tolerance?: {...}
	}
}

iam_cert :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam_cert: {

		// Whether to create(or update) or delete certificate.
		// If new_path or new_name is defined, specifying present will attempt to make an update these.

		state: string

		// The path to, or content of the CA certificate chain in PEM encoded format. As of 2.4 content is accepted. If the parameter is not a file, it is assumed to be content.

		cert_chain?: string

		// By default the module will not upload a certificate that is already uploaded into AWS. If set to True, it will upload the certificate as long as the name is unique.

		dup_ok?: bool

		// The path to, or content of the private key in PEM encoded format. As of 2.4 content is accepted. If the parameter is not a file, it is assumed to be content.

		key?: string

		// Name of certificate to add, update or remove.

		name: string

		// When state is present, this will update the name of the cert.
		// The cert, key and cert_chain parameters will be ignored if this is defined.

		new_name?: string

		// When state is present, this will update the path of the cert.
		// The cert, key and cert_chain parameters will be ignored if this is defined.

		new_path?: string

		// When creating or updating, specify the desired path of the certificate.

		path?: string

		// The path to, or content of the certificate body in PEM encoded format. As of 2.4 content is accepted. If the parameter is not a file, it is assumed to be content.

		cert?: string
	}
}

lambda_event :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	lambda_event: {

		// The name or ARN of the lambda function.

		lambda_function_arn: string

		// Sub-parameters required for event source.

		source_params: {...}

		// Describes the desired state.

		state: string

		// Version of the Lambda function. Mutually exclusive with I(alias).

		version?: int

		// Name of the function alias. Mutually exclusive with I(version).

		alias: string

		// Source of the event that triggers the lambda function.
		// For DynamoDB and Kinesis events, select C(stream)
		// For SQS queues, select C(sqs)

		event_source?: string
	}
}

aws_acm :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_acm: {

		// The ARN of a certificate in ACM to delete
		// Ignored when I(state=present).
		// If I(state=absent), you must provide one of I(certificate_arn), I(domain_name) or I(name_tag).
		// If I(state=absent) and no resource exists with this ARN in this region, the task will succeed with no effect.

		// If I(state=absent) and the corresponding resource exists in a different region, this task may report success without deleting that resource.


		certificate_arn?: string

		// The body of the PEM encoded chain for your certificate.
		// If your certificate chain is in a file, use C(lookup('file', 'path/to/chain.pem')).
		// Ignored when I(state=absent)

		certificate_chain?: string

		// The domain name of the certificate.
		// If I(state=absent) and I(domain_name) is specified, this task will delete all ACM certificates with this domain.

		// Exactly one of I(domain_name), I(name_tag)  and I(certificate_arn) must be provided.
		// If I(state=present) this must not be specified. (Since the domain name is encoded within the public certificate's body.)


		domain_name?: string

		// The unique identifier for tagging resources using AWS tags, with key I(Name).
		// This can be any set of characters accepted by AWS for tag values.
		// This is to ensure Ansible can treat certificates idempotently, even though the ACM API allows duplicate certificates.

		// If I(state=preset), this must be specified.
		// If I(state=absent), you must provide exactly one of I(certificate_arn), I(domain_name) or I(name_tag).


		name_tag?: string

		// The body of the PEM encoded private key.
		// Required when I(state=present).
		// Ignored when I(state=absent).
		// If your private key is in a file, use C(lookup('file', 'path/to/key.pem')).

		private_key?: string

		// If I(state=present), the specified public certificate and private key will be uploaded, with I(Name) tag equal to I(name_tag).

		// If I(state=absent), any certificates in this region with a corresponding I(domain_name), I(name_tag) or I(certificate_arn) will be deleted.


		state?: string

		// The body of the PEM encoded public certificate.
		// Required when I(state) is not C(absent).
		// If your certificate is in a file, use C(lookup('file', 'path/to/cert.pem')).

		certificate?: string
	}
}

ec2_vpc_egress_igw :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_egress_igw: {

		// Create or delete the EIGW.

		state?: string

		// The VPC ID for the VPC that this Egress Only Internet Gateway should be attached.

		vpc_id: string
	}
}

elb_target :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elb_target: {

		// Blocks and waits for the target status to equal given value. For more detail on target status see U(https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html#target-health-states)

		target_status?: string

		// The default behaviour for targets that are unused is to leave them registered. If instead you would like to remove them set I(deregister_unused) to yes.

		deregister_unused?: bool

		// An Availability Zone or all. This determines whether the target receives traffic from the load balancer nodes in the specified Availability Zone or from all enabled Availability Zones for the load balancer. This parameter is not supported if the target type of the target group is instance.

		target_az?: string

		// The Amazon Resource Name (ARN) of the target group. Mutually exclusive of I(target_group_name).

		target_group_arn?: string

		// The port on which the target is listening. You can specify a port override. If a target is already registered, you can register it again using a different port.
		// The default port for a target is the port for the target group.

		target_port?: int

		// Maximum time in seconds to wait for target_status change

		target_status_timeout?: int

		// Register or deregister the target.

		state: string

		// The name of the target group. Mutually exclusive of I(target_group_arn).

		target_group_name?: string

		// The ID of the target.

		target_id: string
	}
}

elb_target_group :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elb_target_group: {

		// The amount of time, in seconds, during which no response from a target means a failed health check.

		health_check_timeout?: int

		// The number of consecutive health checks successes required before considering an unhealthy target healthy.

		healthy_threshold_count?: int

		// The name of the target group.

		name: string

		// If yes, existing tags will be purged from the resource to match exactly what is defined by I(tags) parameter. If the tag parameter is not set then tags will not be modified.

		purge_tags?: bool

		// A dictionary of one or more tags to assign to the target group.

		tags?: {...}

		// A list of targets to assign to the target group. This parameter defaults to an empty list. Unless you set the 'modify_targets' parameter then all existing targets will be removed from the group. The list should be an Id and a Port parameter. See the Examples for detail.

		targets?: [..._]

		// The number of consecutive health check failures required before considering a target unhealthy.

		unhealthy_threshold_count?: int

		// The identifier of the virtual private cloud (VPC). Required when I(state) is C(present).

		vpc_id?: string

		// The approximate amount of time, in seconds, between health checks of an individual target.

		health_check_interval?: int

		// The type of sticky sessions. The possible value is lb_cookie.

		stickiness_type?: string

		// The type of target that you must specify when registering targets with this target group. The possible values are C(instance) (targets are specified by instance ID), C(ip) (targets are specified by IP address) or C(lambda) (target is specified by ARN). Note that you can't specify targets for a target group using more than one type. Target type lambda only accept one target. When more than one target is specified, only the first one is used. All additional targets are ignored. If the target type is ip, specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses.

		target_type?: string

		// Whether or not to wait for the target group.

		wait?: bool

		// The amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds.

		deregistration_delay_timeout?: int

		// The port on which the targets receive traffic. This port is used unless you specify a port override when registering the target. Required if I(state) is C(present).

		port?: int

		// The protocol to use for routing traffic to the targets. Required when I(state) is C(present).

		protocol?: string

		// Create or destroy the target group.

		state: string

		// Indicates whether sticky sessions are enabled.

		stickiness_enabled?: bool

		// The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week (604800 seconds).

		stickiness_lb_cookie_duration?: int

		// The ping path that is the destination on the targets for health checks. The path must be defined in order to set a health check.

		health_check_path?: string

		// The port the load balancer uses when performing health checks on targets. Can be set to 'traffic-port' to match target port.
		// When not defined will default to the port on which each target receives traffic from the load balancer.

		health_check_port?: string

		// The protocol the load balancer uses when performing health checks on targets.

		health_check_protocol?: string

		// Whether or not to alter existing targets in the group to match what is passed with the module

		modify_targets?: bool

		// The HTTP codes to use when checking for a successful response from a target.
		// Accepts multiple values (for example, "200,202") or a range of values (for example, "200-299").
		// Requires the I(health_check_protocol) parameter to be set.

		successful_response_codes?: string

		// The time to wait for the target group.

		wait_timeout?: int
	}
}

iam_password_policy :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam_password_policy: {

		// Allow users to change their password.

		allow_pw_change?: bool

		// Maximum age for a password in days. When this option is 0 then passwords do not expire automatically.

		pw_max_age?: int

		// Specifies the overall state of the password policy.

		state: string

		// Require symbols in password.

		require_symbols?: bool

		// Require uppercase letters in password.

		require_uppercase?: bool

		// Minimum password length.

		min_pw_length?: int

		// Prevents users from change an expired password.

		pw_expire?: bool

		// Prevent re-use of passwords.

		pw_reuse_prevent?: int

		// Require lowercase letters in password.

		require_lowercase?: bool

		// Require numbers in password.

		require_numbers?: bool
	}
}

aws_ssm_parameter_store :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_ssm_parameter_store: {

		// Parameter key name.

		name: string

		// Option to overwrite an existing value if it already exists.

		overwrite_value?: string

		// Creates or modifies an existing parameter.
		// Deletes a parameter.

		state?: string

		// Parameter String type.

		string_type?: string

		// Parameter value.

		value?: string

		// Work with SecureString type to get plain text secrets

		decryption?: bool

		// Parameter key description.

		description?: string

		// AWS KMS key to decrypt the secrets.
		// The default key (C(alias/aws/ssm)) is automatically generated the first time it's requested.

		key_id?: string
	}
}

ec2_lc :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_lc: {

		// Id of ClassicLink enabled VPC

		classic_link_vpc_id?: string

		// The Id of a running instance to use as a basis for a launch configuration. Can be used in place of I(image_id) and I(instance_type).

		instance_id?: string

		// The SSH key name to be used for access to managed instances.

		key_name?: string

		// Determines whether the instance runs on single-tenant hardware or not.
		// When not set AWS will default to C(default).

		placement_tenancy?: string

		// The spot price you are bidding. Only applies for an autoscaling group with spot instances.

		spot_price?: float

		// Register or deregister the instance.

		state?: string

		// The I(associate_public_ip_address) option does nothing and will be removed in Ansible 2.14.

		associate_public_ip_address?: bool

		// A list of security group IDs with which to associate the ClassicLink VPC instances.

		classic_link_vpc_security_groups?: [...string]

		// The AMI unique identifier to be used for the group.

		image_id?: string

		// Specifies whether instances are launched with detailed monitoring.

		instance_monitoring?: bool

		// Unique name for configuration.

		name: string

		// A RAM disk id for the instances.

		ramdisk_id?: string

		// Kernel id for the EC2 instance.

		kernel_id?: string

		// A list of security groups to apply to the instances. Since version 2.4 you can specify either security group names or IDs or a mix.  Previous to 2.4, for VPC instances, specify security group IDs and for EC2-Classic, specify either security group names or IDs.

		security_groups?: [...string]

		// Path to the file that contains userdata for the ec2 instances. Mutually exclusive with I(user_data).

		user_data_path?: string

		// VPC ID, used when resolving security group names to IDs.

		vpc_id?: string

		// Used for Auto Scaling groups that launch instances into an Amazon Virtual Private Cloud. Specifies whether to assign a public IP address to each instance launched in a Amazon VPC.

		assign_public_ip?: bool

		// Specifies whether the instance is optimized for EBS I/O (true) or not (false).

		ebs_optimized?: bool

		// The name or the Amazon Resource Name (ARN) of the instance profile associated with the IAM role for the instances.

		instance_profile_name?: string

		// Instance type to use for the instance.

		instance_type: string

		// Opaque blob of data which is made available to the ec2 instance. Mutually exclusive with I(user_data_path).

		user_data?: string

		// A list of volume dicts, each containing device name and optionally ephemeral id or snapshot id. Size and type (and number of iops for io device type) must be specified for a new volume or a root volume, and may be passed for a snapshot volume. For any volume, a volume size less than 1 will be interpreted as a request not to create the volume.

		volumes?: [...{...}]
	}
}

execute_lambda :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	execute_lambda: {

		// The name of the function to be invoked. This can only be used for invocations within the calling account. To invoke a function in another account, use I(function_arn) to specify the full ARN.

		name?: string

		// A dictionary in any form to be provided as input to the Lambda function.

		payload?: {...}

		// If I(tail_log=yes), the result of the task will include the last 4 KB of the CloudWatch log for the function execution. Log tailing only works if you use synchronous invocation I(wait=yes). This is usually used for development or testing Lambdas.

		tail_log?: bool

		// Which version/alias of the function to run. This defaults to the C(LATEST) revision, but can be set to any existing version or alias. See U(https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html) for details.

		version_qualifier?: string

		// Whether to wait for the function results or not. If I(wait=no) the task will not return any results. To wait for the Lambda function to complete, set I(wait=yes) and the result will be available in the I(output) key.

		wait?: bool

		// Do not *actually* invoke the function. A C(DryRun) call will check that the caller has permissions to call the function, especially for checking cross-account permissions.

		dry_run?: bool

		// The name of the function to be invoked

		function_arn?: string
	}
}

aws_api_gateway :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_api_gateway: {

		// Swagger definitions for API in JSON or YAML as a string direct from playbook.

		swagger_text?: string

		// The ID of the API you want to manage.

		api_id?: string

		// Description of the deployment - recorded and visible in the AWS console.

		deploy_desc?: string

		// The name of the stage the API should be deployed to.

		stage?: string

		// NOT IMPLEMENTED Create or delete API - currently we always create.

		state?: string

		// Swagger definitions API ansible dictionary which will be converted to JSON and uploaded.

		swagger_dict?: string

		// JSON or YAML file containing swagger definitions for API. Exactly one of swagger_file, swagger_text or swagger_dict must be present.

		swagger_file?: string
	}
}

ec2_vpc_nat_gateway_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_nat_gateway_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNatGateways.html) for possible filters.

		filters?: {...}

		// List of specific nat gateway IDs to fetch details for.

		nat_gateway_ids?: [...string]
	}
}

lambda_alias :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	lambda_alias: {

		// The name of the function alias.

		function_name: string

		// Version associated with the Lambda function alias. A value of 0 (or omitted parameter) sets the alias to the $LATEST version.

		function_version?: int

		// Name of the function alias.

		name: string

		// Describes the desired state.

		state: string

		// A short, user-defined function alias description.

		description?: string
	}
}

s3_website :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	s3_website: {

		// Describes the redirect behavior for every request to this s3 bucket website endpoint

		redirect_all_requests?: string

		// Add or remove s3 website configuration

		state: string

		// Suffix that is appended to a request that is for a directory on the website endpoint (e.g. if the suffix is index.html and you make a request to samplebucket/images/ the data that is returned will be for the object with the key name images/index.html). The suffix must not include a slash character.


		suffix?: string

		// The object key name to use when a 4XX class error occurs. To remove an error key, set to None.

		error_key?: string

		// Name of the s3 bucket

		name: string
	}
}

sqs_queue :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	sqs_queue: {

		// The default visibility timeout in seconds.

		default_visibility_timeout?: int

		// The delivery delay in seconds.

		delivery_delay?: int

		// Name of the queue.

		name: string

		// The JSON dict policy to attach to queue.

		policy?: {...}

		// The receive message wait time in seconds.

		receive_message_wait_time?: int

		// JSON dict with the redrive_policy (see example).

		redrive_policy?: {...}

		// The maximum message size in bytes.

		maximum_message_size?: int

		// The message retention period in seconds.

		message_retention_period?: int

		// Create or delete the queue.

		state?: string
	}
}

aws_config_rule :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_config_rule: {

		// Whether the Config rule should be present or absent.

		state?: string

		// The description that you provide for the AWS Config rule.

		description?: string

		// The maximum frequency with which AWS Config runs evaluations for a rule.

		execution_frequency?: string

		// A string, in JSON format, that is passed to the AWS Config rule Lambda function.

		input_parameters?: string

		// The name of the AWS Config resource.

		name: string

		// Defines which resources can trigger an evaluation for the rule.

		scope?: {...}

		// Provides the rule owner (AWS or customer), the rule identifier, and the notifications that cause the function to evaluate your AWS resources.

		source?: {...}
	}
}

aws_config_aggregator :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_config_aggregator: {

		// Provides a list of source accounts and regions to be aggregated.

		account_sources?: [...{...}]

		// The name of the AWS Config resource.

		name: string

		// The region authorized to collect aggregated data.

		organization_source?: {...}

		// Whether the Config rule should be present or absent.

		state?: string
	}
}

aws_glue_connection :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_glue_connection: {

		// A dict of key-value pairs used as parameters for this connection.

		connection_properties: {...}

		// The type of the connection. Currently, only JDBC is supported; SFTP is not supported.

		connection_type?: string

		// A list of security groups to be used by the connection. Use either security group name or ID.

		security_groups?: [...string]

		// The ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default.

		catalog_id?: string

		// The description of the connection.

		description?: string

		// A list of UTF-8 strings that specify the criteria that you can use in selecting this connection.

		match_criteria?: [...string]

		// The name of the connection.

		name: string

		// Create or delete the AWS Glue connection.

		state: string

		// The subnet ID used by the connection.

		subnet_id?: string
	}
}

ec2_vol :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vol: {

		// When set to C(true), the volume will be deleted upon instance termination.

		delete_on_termination?: bool

		// Volume Name tag if you wish to attach an existing volume (requires instance)

		name?: string

		// Zone in which to create the volume, if unset uses the zone the instance is in (if set).

		zone?: string

		// Volume id if you wish to attach an existing volume (requires instance) or remove an existing volume

		id?: string

		// Instance ID if you wish to attach the volume. Since 1.9 you can set to None to detach.

		instance?: string

		// Specify the id of the KMS key to use.

		kms_key_id?: string

		// Enable encryption at rest for this volume.

		encrypted?: bool

		// Whether to ensure the volume is present or absent, or to list existing volumes (The C(list) option was added in version 1.8).

		state?: string

		// tag:value pairs to add to the volume after creation.

		tags?: {...}

		// When set to "no", SSL certificates will not be validated for boto versions >= 2.6.0.

		validate_certs?: bool

		// Size of volume (in GiB) to create.

		volume_size?: int

		// Type of EBS volume; standard (magnetic), gp2 (SSD), io1 (Provisioned IOPS), st1 (Throughput Optimized HDD), sc1 (Cold HDD). "Standard" is the old EBS default and continues to remain the Ansible default for backwards compatibility.

		volume_type?: string

		// Device id to override device mapping. Assumes /dev/sdf for Linux/UNIX and /dev/xvdf for Windows.

		device_name?: string

		// The provisioned IOPs you want to associate with this volume (integer).
		// By default AWS will set this to 100.

		iops?: int

		// Snapshot ID on which to base the volume.

		snapshot?: string
	}
}

ec2_win_password :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_win_password: {

		// The passphrase for the instance key pair. The key must use DES or 3DES encryption for this module to decrypt it. You can use openssl to convert your password protected keys if they do not use DES or 3DES. ex) C(openssl rsa -in current_key -out new_key -des3).

		key_passphrase?: string

		// Whether or not to wait for the password to be available before returning.

		wait?: bool

		// Number of seconds to wait before giving up.

		wait_timeout?: int

		// The instance id to get the password data from.

		instance_id: string

		// The private key (usually stored in vault).
		// Conflicts with I(key_file),

		key_data?: string

		// Path to the file containing the key pair used on the instance.
		// Conflicts with I(key_data).

		key_file?: string
	}
}

elasticache_parameter_group :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elasticache_parameter_group: {

		// A user-specified description for the cache parameter group.

		description?: string

		// The name of the cache parameter group family that the cache parameter group can be used with. Required when creating a cache parameter group.

		group_family?: string

		// A user-specified name for the cache parameter group.

		name: string

		// Idempotent actions that will create/modify, destroy, or reset a cache parameter group as needed.

		state: string

		// A user-specified dictionary of parameters to reset or modify for the cache parameter group.

		values?: {...}
	}
}

iam_policy_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam_policy_info: {

		// Name of IAM resource you wish to retrieve inline policies for. In other words, the user name, group name or role name.

		iam_name: string

		// Type of IAM resource you wish to retrieve inline policies for.

		iam_type: string

		// Name of a specific IAM inline policy you with to retrieve.

		policy_name?: string
	}
}

route53 :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	route53: {

		// In the case that route53 is still servicing a prior request, this module will wait and try again after this many seconds. If you have many domain names, the default of 500 seconds may be too long.

		retry_interval?: int

		// Wait until the changes have been replicated to all Amazon Route 53 DNS servers.

		wait?: bool

		// Failover resource record sets only. Whether this is the primary or secondary resource record set. Allowed values are PRIMARY and SECONDARY

		failover?: string

		// Health check to associate with this record

		health_check?: string

		// The Hosted Zone ID of the DNS zone to modify.
		// This is a required parameter, if parameter I(zone) is not supplied.

		hosted_zone_id?: string

		// When used in conjunction with private_zone: true, this will only modify records in the private hosted zone attached to this VPC.
		// This allows you to have multiple private hosted zones, all with the same name, attached to different VPCs.

		vpc_id?: string

		// The hosted zone identifier.

		alias_hosted_zone_id?: string

		// Specifies the state of the resource record. As of Ansible 2.4, the I(command) option has been changed to I(state) as default and the choices 'present' and 'absent' have been added, but I(command) still works as well.

		state: string

		// The type of DNS record to create.

		type: string

		// Latency-based resource record sets only Among resource record sets that have the same combination of DNS name and type, a value that determines which region this should be associated with for the latency-based routing

		region?: string

		// The TTL, in second, to give the new record.

		ttl?: int

		// Weighted resource record sets only. Among resource record sets that have the same combination of DNS name and type, a value that determines what portion of traffic for the current resource record set is routed to the associated location.

		weight?: int

		// The DNS zone to modify.
		// This is a required parameter, if parameter I(hosted_zone_id) is not supplied.

		zone?: string

		// Indicates if this is an alias record.

		alias?: bool

		// Have to be specified for Weighted, latency-based and failover resource record sets only. An identifier that differentiates among multiple resource record sets that have the same combination of DNS name and type.

		identifier?: string

		// The full DNS record to create or delete.

		record: string

		// The new value when creating a DNS record.  YAML lists or multiple comma-spaced values are allowed for non-alias records.
		// When deleting a record all values for the record must be specified or Route53 will not delete it.

		value?: [..._]

		// How long to wait for the changes to be replicated, in seconds.

		wait_timeout?: int

		// Whether or not to evaluate an alias target health. Useful for aliases to Elastic Load Balancers.

		alias_evaluate_target_health?: bool

		// Whether an existing record should be overwritten on create if values do not match.

		overwrite?: bool

		// If set to C(yes), the private zone matching the requested name within the domain will be used if there are both public and private zones. The default is to use the public zone.

		private_zone?: bool
	}
}

aws_config_aggregation_authorization :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_config_aggregation_authorization: {

		// The 12-digit account ID of the account authorized to aggregate data.

		authorized_account_id?: string

		// The region authorized to collect aggregated data.

		authorized_aws_region?: string

		// Whether the Config rule should be present or absent.

		state?: string
	}
}

aws_netapp_cvs_pool :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_netapp_cvs_pool: {

		// A vendor ID for the Pool. E.g. an ID allocated by a vendor service for the Pool.
		// can be used with pool create, update operations
		// must be unique

		vendorID?: string

		// rename the existing pool name ( The human readable name of the Pool )
		// I(from_name) is the existing name, and I(name) the new name
		// can be used with update operation

		from_name?: string

		// pool name ( The human readable name of the Pool )
		// name can be used for create, update and delete operations

		name: string

		// The region to which the Pool is associated.

		region: string

		// The service level of the Pool
		// can be used with pool create, update operations

		serviceLevel?: string

		// Size of the Pool in bytes
		// can be used with pool create, update operations
		// minimum value is 4000000000000 bytes

		sizeInBytes?: int

		// Whether the specified pool should exist or not.

		state: string
	}
}

cloudfront_origin_access_identity :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	cloudfront_origin_access_identity: {

		// The origin_access_identity_id of the CloudFront distribution.

		origin_access_identity_id?: string

		// If the named resource should exist.

		state?: string

		// A unique identifier to reference the origin access identity by.

		caller_reference?: string

		// A comment to describe the CloudFront origin access identity.

		comment?: string
	}
}

ec2_instance :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_instance: {

		// Specify an availability zone to use the default subnet it. Useful if not specifying the I(vpc_subnet_id) parameter.
		// If no subnet, ENI, or availability zone is provided, the default subnet in the default VPC will be used in the first AZ (alphabetically sorted).

		availability_zone?: string

		// Either a dictionary containing the key 'interfaces' corresponding to a list of network interface IDs or containing specifications for a single network interface.
		// Use the ec2_eni module to create ENIs with special settings.

		network?: {...}

		// A list of security group IDs or names (strings). Mutually exclusive with I(security_group).

		security_groups?: [..._]

		// Opaque blob of data which is made available to the ec2 instance

		user_data?: string

		// An image to use for the instance. The M(ec2_ami_info) module may be used to retrieve images. One of I(image) or I(image_id) are required when instance is not already present.

		image?: {...}

		// If you specify one or more instance IDs, only instances that have the specified IDs are returned.

		instance_ids?: [..._]

		// Whether to allow detailed cloudwatch metrics to be collected, enabling more detailed alerting.

		detailed_monitoring?: bool

		// The ARN or name of an EC2-enabled instance role to be used. If a name is not provided in arn format then the ListInstanceProfiles permission must also be granted. U(https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListInstanceProfiles.html) If no full ARN is provided, the role with a matching name will be used from the active AWS account.

		instance_role?: string

		// Instance type to use for the instance, see U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) Only required when instance is not already present.

		instance_type?: string

		// Name of the SSH access key to assign to the instance - must exist in the region the instance is created.

		key_name?: string

		// The EC2 launch template to base instance configuration on.

		launch_template?: {...}

		// A list of block device mappings, by default this will always use the AMI root device so the volumes option is primarily for adding more storage.
		// A mapping contains the (optional) keys device_name, virtual_name, ebs.volume_type, ebs.volume_size, ebs.kms_key_id, ebs.iops, and ebs.delete_on_termination.
		// For more information about each parameter, see U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html).

		volumes?: [..._]

		// Whether or not to wait for the desired state (use wait_timeout to customize this).

		wait?: bool

		// I(ami) ID to use for the instance. One of I(image) or I(image_id) are required when instance is not already present.
		// This is an alias for I(image.id).

		image_id?: string

		// The Name tag for the instance.

		name?: string

		// Goal state for the instances.

		state?: string

		// For T series instances, choose whether to allow increased charges to buy CPU credits if the default pool is depleted.
		// Choose I(unlimited) to enable buying additional CPU credits.

		cpu_credit_specification?: string

		// A security group ID or name. Mutually exclusive with I(security_groups).

		security_group?: string

		// A hash/dictionary of tags to add to the new instance or to add/remove from an existing one.

		tags?: {...}

		// Preconfigured user-data to enable an instance to perform a Tower callback (Linux only).
		// Mutually exclusive with I(user_data).
		// For Windows instances, to enable remote access via Ansible set I(tower_callback.windows) to true, and optionally set an admin password.
		// If using 'windows' and 'set_password', callback to Tower will not be performed but the instance will be ready to receive winrm connections from Ansible.

		tower_callback?: {...}

		// The subnet ID in which to launch the instance (VPC) If none is provided, ec2_instance will chose the default zone of the default VPC.

		vpc_subnet_id?: string

		// Reduce the number of vCPU exposed to the instance.
		// Those parameters can only be set at instance launch. The two suboptions threads_per_core and core_count are mandatory.
		// See U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html) for combinations available.
		// Requires botocore >= 1.10.16

		cpu_options?: {...}

		// Whether instance is should use optimized EBS volumes, see U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html).

		ebs_optimized?: bool

		// A dict of filters to apply when deciding whether existing instances match and should be altered. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html). for possible filters. Filter names and values are case sensitive.
		// By default, instances are filtered for counting by their "Name" tag, base AMI, state (running, by default), and subnet ID. Any queryable filter can be used. Good candidates are specific tags, SSH keys, or security groups.

		filters?: {...}

		// How long to wait (in seconds) for the instance to finish booting/terminating.

		wait_timeout?: int

		// Whether to stop or terminate an instance upon shutdown.

		instance_initiated_shutdown_behavior?: string

		// The placement group that needs to be assigned to the instance

		placement_group?: string

		// Delete any tags not specified in the task that are on the instance. This means you have to specify all the desired tags on each task affecting an instance.

		purge_tags?: bool

		// What type of tenancy to allow an instance to use. Default is shared tenancy. Dedicated tenancy will incur additional charges.

		tenancy?: string

		// Whether to enable termination protection. This module will not terminate an instance with termination protection active, it must be turned off first.

		termination_protection?: bool
	}
}

ec2_snapshot :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_snapshot: {

		// Volume from which to take the snapshot.

		volume_id?: string

		// Wait for the snapshot to be ready.

		wait?: bool

		// How long before wait gives up, in seconds.
		// Specify 0 to wait forever.

		wait_timeout?: int

		// Description to be applied to the snapshot.

		description?: string

		// If the volume's most recent snapshot has started less than `last_snapshot_min_age' minutes ago, a new snapshot will not be created.

		last_snapshot_min_age?: int

		// Snapshot id to remove.

		snapshot_id?: string

		// A dictionary of tags to add to the snapshot.

		snapshot_tags?: {...}

		// Device name of a mounted volume to be snapshotted.

		device_name?: string

		// Instance that has the required volume to snapshot mounted.

		instance_id?: string

		// Whether to add or create a snapshot.

		state?: string
	}
}

ec2_vol_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vol_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value.
		// See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVolumes.html) for possible filters.

		filters?: {...}
	}
}

route53_zone :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	route53_zone: {

		// The VPC ID the zone should be a part of (if this is going to be a private zone).

		vpc_id?: string

		// The VPC Region the zone should be a part of (if this is going to be a private zone).

		vpc_region?: string

		// The DNS zone record (eg: foo.com.)

		zone: string

		// Comment associated with the zone.

		comment?: string

		// The reusable delegation set ID to be associated with the zone.
		// Note that you can't associate a reusable delegation set with a private hosted zone.

		delegation_set_id?: string

		// The unique zone identifier you want to delete or "all" if there are many zones with the same domain name.
		// Required if there are multiple zones identified with the above options.

		hosted_zone_id?: string

		// Whether or not the zone should exist or not.

		state?: string
	}
}

aws_batch_compute_environment :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_batch_compute_environment: {

		// The desired number of EC2 vCPUS in the compute environment.

		desiredv_cpus?: int

		// The Amazon Machine Image (AMI) ID used for instances launched in the compute environment.

		image_id?: string

		// The maximum number of EC2 vCPUs that an environment can reach.

		maxv_cpus: int

		// The VPC subnets into which the compute resources are launched.

		subnets: [...string]

		// The state of the compute environment. If the state is ENABLED, then the compute environment accepts jobs from a queue and can scale out automatically based on queues.

		compute_environment_state?: string

		// The Amazon ECS instance role applied to Amazon EC2 instances in a compute environment.

		instance_role: string

		// The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.

		service_role: string

		// Key-value pair tags to be applied to resources that are launched in the compute environment.

		tags?: {...}

		// The minimum percentage that a Spot Instance price must be when compared with the On-Demand price for that instance type before instances are launched. For example, if your bid percentage is 20%, then the Spot price must be below 20% of the current On-Demand price for that EC2 instance.

		bid_percentage?: int

		// The EC2 key pair that is used for instances launched in the compute environment.

		ec2_key_pair?: string

		// The minimum number of EC2 vCPUs that an environment should maintain.

		minv_cpus: int

		// The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role applied to a SPOT compute environment.

		spot_iam_fleet_role?: string

		// The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, and underscores are allowed.

		compute_environment_name: string

		// The type of compute resource.

		compute_resource_type: string

		// The instance types that may be launched.

		instance_types: [...string]

		// The EC2 security groups that are associated with instances launched in the compute environment.

		security_group_ids: [...string]

		// Describes the desired state.

		state?: string

		// The type of the compute environment.

		type: string
	}
}

ec2_vpc_dhcp_option :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_vpc_dhcp_option: {

		// The resource_id of an existing DHCP options set. If this is specified, then it will override other settings, except tags (which will be updated to match)

		dhcp_options_id?: string

		// For any DHCP options not specified in these parameters, whether to inherit them from the options set already applied to vpc_id, or to reset them to be empty.

		inherit_existing?: bool

		// List of hosts to advertise as NetBIOS servers.

		netbios_name_servers?: [...string]

		// create/assign or remove the DHCP options. If state is set to absent, then a DHCP options set matched either by id, or tags and options will be removed if possible.

		state?: string

		// VPC ID to associate with the requested DHCP option set. If no vpc id is provided, and no matching option set is found then a new DHCP option set is created.

		vpc_id?: string

		// Tags to be applied to a VPC options set if a new one is created, or if the resource_id is provided. (options must match)

		tags?: {...}

		// Whether to delete the old VPC DHCP option set when associating a new one. This is primarily useful for debugging/development purposes when you want to quickly roll back to the old option set. Note that this setting will be ignored, and the old DHCP option set will be preserved, if it is in use by any other VPC. (Otherwise, AWS will return an error.)

		delete_old?: bool

		// A list of hosts to set the DNS servers for the VPC to. (Should be a list of IP addresses rather than host names.)

		dns_servers?: [...string]

		// The domain name to set in the DHCP option sets

		domain_name?: string

		// NetBIOS node type to advertise in the DHCP options. The AWS recommendation is to use 2 (when using netbios name services) U(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html)

		netbios_node_type?: int

		// List of hosts to advertise as NTP servers for the VPC.

		ntp_servers?: [...string]
	}
}

elb_target_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elb_target_info: {

		// Whether or not to get target groups not used by any load balancers.

		get_unused_target_groups?: bool

		// What instance ID to get information for.

		instance_id: string
	}
}

aws_waf_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_waf_info: {

		// The name of a Web Application Firewall.

		name?: string

		// Whether to use the waf-regional module.

		waf_regional?: bool
	}
}

aws_direct_connect_link_aggregation_group :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_direct_connect_link_aggregation_group: {

		// Whether or not to wait for the operation to complete. May be useful when waiting for virtual interfaces to be deleted. May modify the time of waiting with C(wait_timeout).

		wait?: bool

		// To be used with I(state=absent) to delete connections after disassociating them with the LAG.

		delete_with_disassociation?: bool

		// The minimum number of physical connections that must be operational for the LAG itself to be operational.

		min_links?: int

		// This allows the minimum number of links to be set to 0, any hosted connections disassociated, and any virtual interfaces associated to the LAG deleted.

		force_delete?: bool

		// The ID of the Direct Connect link aggregation group.

		link_aggregation_group_id?: string

		// The location of the link aggregation group.

		location?: string

		// The name of the Direct Connect link aggregation group.

		name?: string

		// The number of connections with which to initialize the link aggregation group.

		num_connections?: int

		// The state of the Direct Connect link aggregation group.

		state?: string

		// The bandwidth of the link aggregation group.

		bandwidth?: string

		// A connection ID to link with the link aggregation group upon creation.

		connection_id?: string

		// The duration in seconds to wait if I(wait) is True.

		wait_timeout?: int
	}
}

cloudfront_invalidation :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	cloudfront_invalidation: {

		// The ID of the CloudFront distribution to invalidate paths for. Can be specified instead of the alias.

		distribution_id?: string

		// A list of paths on the distribution to invalidate. Each path should begin with '/'. Wildcards are allowed. eg. '/foo/bar/*'

		target_paths: [...string]

		// The alias of the CloudFront distribution to invalidate paths for. Can be specified instead of distribution_id.

		alias?: string

		// A unique reference identifier for the invalidation paths.
		// Defaults to current datetime stamp.

		caller_reference?: string
	}
}

ec2_transit_gateway_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_transit_gateway_info: {

		// A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGateways.html) for filters.

		filters?: {...}

		// A list of transit gateway IDs to gather information for.

		transit_gateway_ids?: [..._]
	}
}

iam_role_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam_role_info: {

		// Prefix of role to restrict IAM role search for.
		// Mutually exclusive with I(name).

		path_prefix?: string

		// Name of a role to search for.
		// Mutually exclusive with I(path_prefix).

		name?: string
	}
}

rds_instance_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	rds_instance_info: {

		// The RDS instance's unique identifier.

		db_instance_identifier?: string

		// A filter that specifies one or more DB instances to describe. See U(https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html)

		filters?: {...}
	}
}

aws_codepipeline :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_codepipeline: {

		// Location information where artifacts are stored (on S3). Dictionary with fields type and location.

		artifact_store: {...}

		// Name of the pipeline

		name: string

		// ARN of the IAM role to use when executing the pipeline

		role_arn: string

		// List of stages to perform in the CodePipeline. List of dictionaries containing name and actions for each stage.

		stages: [...{...}]

		// Create or remove code pipeline

		state?: string

		// Version number of the pipeline. This number is automatically incremented when a pipeline is updated.

		version?: int
	}
}

aws_waf_web_acl :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_waf_web_acl: {

		// Whether to use waf-regional module.

		waf_regional?: bool

		// The action that you want AWS WAF to take when a request doesn't match the criteria specified in any of the Rule objects that are associated with the WebACL.

		default_action?: string

		// A friendly name or description for the metrics for this WebACL.
		// The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace.
		// You can't change I(metric_name) after you create the WebACL.
		// Metric name will default to I(name) with disallowed characters stripped out.

		metric_name?: string

		// Name of the Web Application Firewall ACL to manage.

		name: string

		// Whether to remove rules that aren't passed with I(rules).

		purge_rules?: bool

		// A list of rules that the Web ACL will enforce.

		rules?: [...{...}]

		// Whether the Web ACL should be present or absent.

		state?: string
	}
}

cloudfront_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	cloudfront_info: {

		// Get information about an invalidation.
		// Requires I(invalidation_id) to be specified.

		invalidation?: bool

		// The id of the invalidation to get information about.
		// Used with I(invalidation).

		invalidation_id?: string

		// Get a list of CloudFront distributions.

		list_distributions?: bool

		// Get a list of distributions using web acl id as a filter.
		// Requires I(web_acl_id) to be set.

		list_distributions_by_web_acl_id?: bool

		// Get the configuration information about a specified RTMP distribution.
		// Requires I(distribution_id) or I(domain_name_alias) to be specified.

		streaming_distribution_config?: bool

		// Get the configuration information about a distribution.
		// Requires I(distribution_id) or I(domain_name_alias) to be specified.

		distribution_config?: bool

		// Can be used instead of I(distribution_id) - uses the aliased CNAME for the CloudFront distribution to get the distribution id where required.

		domain_name_alias?: string

		// The id of the CloudFront origin access identity to get information about.

		origin_access_identity_id?: string

		// Get information about a distribution.
		// Requires I(distribution_id) or I(domain_name_alias) to be specified.

		distribution?: bool

		// Get a list of streaming distributions.

		list_streaming_distributions?: bool

		// Get information about an origin access identity.
		// Requires I(origin_access_identity_id) to be specified.

		origin_access_identity?: bool

		// Get information about a specified RTMP distribution.
		// Requires I(distribution_id) or I(domain_name_alias) to be specified.

		streaming_distribution?: bool

		// Returns a summary of all distributions, streaming distributions and origin_access_identities.
		// This is the default behaviour if no option is selected.

		summary?: bool

		// Get all CloudFront lists that do not require parameters.

		all_lists?: bool

		// The id of the CloudFront distribution. Used with I(distribution), I(distribution_config), I(invalidation), I(streaming_distribution), I(streaming_distribution_config), I(list_invalidations).

		distribution_id?: string

		// Get a list of invalidations.
		// Requires I(distribution_id) or I(domain_name_alias) to be specified.

		list_invalidations?: bool

		// Get a list of CloudFront origin access identities.
		// Requires I(origin_access_identity_id) to be set.

		list_origin_access_identities?: bool

		// Get the configuration information about an origin access identity.
		// Requires I(origin_access_identity_id) to be specified.

		origin_access_identity_config?: bool
	}
}

ec2_key :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ec2_key: {

		// Name of the key pair.

		name: string

		// create or delete keypair

		state?: string

		// This option has no effect since version 2.5 and will be removed in 2.14.

		wait?: bool

		// This option has no effect since version 2.5 and will be removed in 2.14.

		wait_timeout?: int

		// Force overwrite of already existing key pair if key has changed.

		force?: bool

		// Public key material.

		key_material?: string
	}
}

ecs_cluster :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	ecs_cluster: {

		// Number of seconds to wait.

		delay?: int

		// The cluster name.

		name: string

		// The number of times to wait for the cluster to have an instance.

		repeat?: int

		// The desired state of the cluster.

		state: string
	}
}

elb_network_lb :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	elb_network_lb: {

		// Indicates whether cross-zone load balancing is enabled.

		cross_zone_load_balancing?: bool

		// A list of dicts containing listeners to attach to the ELB. See examples for detail of the dict required. Note that listener keys are CamelCased.

		listeners?: [..._]

		// If yes, existing tags will be purged from the resource to match exactly what is defined by I(tags) parameter. If the I(tags) parameter is not set then tags will not be modified.

		purge_tags?: bool

		// Create or destroy the load balancer.

		state: string

		// A list of dicts containing the IDs of the subnets to attach to the load balancer. You can also specify the allocation ID of an Elastic IP to attach to the load balancer. You can specify one Elastic IP address per subnet. This parameter is mutually exclusive with I(subnets)

		subnet_mappings?: [..._]

		// Whether or not to wait for the network load balancer to reach the desired state.

		wait?: bool

		// The duration in seconds to wait, used in conjunction with I(wait).

		wait_timeout?: int

		// Indicates whether deletion protection for the ELB is enabled.

		deletion_protection?: bool

		// The name of the load balancer. This name must be unique within your AWS account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.

		name: string

		// If yes, existing listeners will be purged from the ELB to match exactly what is defined by I(listeners) parameter. If the I(listeners) parameter is not set then listeners will not be modified

		purge_listeners?: bool

		// Internet-facing or internal load balancer. An ELB scheme can not be modified after creation.

		scheme?: string

		// A list of the IDs of the subnets to attach to the load balancer. You can specify only one subnet per Availability Zone. You must specify subnets from at least two Availability Zones. Required if state=present. This parameter is mutually exclusive with I(subnet_mappings)

		subnets?: [..._]

		// A dictionary of one or more tags to assign to the load balancer.

		tags?: {...}
	}
}

iam_managed_policy :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	iam_managed_policy: {

		// Should this managed policy be present or absent. Set to absent to detach all entities from this policy and remove it if found.

		state?: string

		// The I(fail_on_delete) option does nothing and will be removed in Ansible 2.14.

		fail_on_delete?: bool

		// Make this revision the default revision.

		make_default?: bool

		// Remove all other non default revisions, if this is used with C(make_default) it will result in all other versions of this policy being deleted.

		only_version?: bool

		// A properly json formatted policy

		policy?: string

		// A helpful description of this policy, this value is immutable and only set when creating a new policy.

		policy_description?: string

		// The name of the managed policy.

		policy_name: string
	}
}

redshift_info :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	redshift_info: {

		// A dictionary/hash of tags in the format { tag1_name: 'tag1_value', tag2_name: 'tag2_value' } to match against the security group(s) you are searching for.

		tags?: {...}

		// The prefix of cluster identifier of the Redshift cluster you are searching for.
		// This is a regular expression match with implicit '^'. Append '$' for a complete match.

		cluster_identifier?: string
	}
}

aws_secret :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	aws_secret: {

		// Friendly name for the secret you are creating.

		name: string

		// Specifies the ARN of the Lambda function that can rotate the secret.

		rotation_lambda?: string

		// Specifies string or binary data that you want to encrypt and store in the new version of the secret.

		secret?: string

		// Whether the secret should be exist or not.

		state?: string

		// Specifies a list of user-defined tags that are attached to the secret.

		tags?: {...}

		// Specifies a user-provided description of the secret.

		description?: string

		// Only used if state is absent.
		// Specifies the number of days that Secrets Manager waits before it can delete the secret.
		// If set to 0, the deletion is forced without recovery.

		recovery_window?: int

		// Specifies the number of days between automatic scheduled rotations of the secret.

		rotation_interval?: int

		// Specifies the type of data that you want to encrypt.

		secret_type?: string

		// Specifies the ARN or alias of the AWS KMS customer master key (CMK) to be used to encrypt the `secret_string` or `secret_binary` values in the versions stored in this secret.

		kms_key_id?: string
	}
}

sts_assume_role :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	sts_assume_role: {

		// The Amazon Resource Name (ARN) of the role that the caller is assuming U(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html#Identifiers_ARNs).

		role_arn: string

		// Name of the role's session - will be used by CloudTrail.

		role_session_name: string

		// The duration, in seconds, of the role session. The value can range from 900 seconds (15 minutes) to 43200 seconds (12 hours).
		// The max depends on the IAM role's sessions duration setting.
		// By default, the value is set to 3600 seconds.

		duration_seconds?: int

		// A unique identifier that is used by third parties to assume a role in their customers' accounts.

		external_id?: string

		// The identification number of the MFA device that is associated with the user who is making the AssumeRole call.

		mfa_serial_number?: string

		// The value provided by the MFA device, if the trust policy of the role being assumed requires MFA.

		mfa_token?: string

		// Supplemental policy to use in addition to assumed role's policies.

		policy?: string
	}
}

redshift_subnet_group :: {
	when?:     string
	tags?:     [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?:     {...}
	redshift_subnet_group: {

		// Database subnet group description.

		group_description?: string

		// Cluster subnet group name.

		group_name: string

		// List of subnet IDs that make up the cluster subnet group.

		group_subnets?: [...string]

		// Specifies whether the subnet should be present or absent.

		state?: string
	}
}
