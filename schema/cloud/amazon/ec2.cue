package ansible

module: ec2: {
	module:            "ec2"
	short_description: "create, terminate, start or stop an instance in ec2"
	description: [
		"Creates or terminates ec2 instances.",
	]
	version_added: "0.9"
	options: {
		key_name: {
			description: [
				"key pair to use on the instance. The SSH key must exist on AWS in order to use this argument. If you want to generate keys from Ansible, take a look at `ec2_key` module.",
			]

			aliases: ["keypair"]
			type: "str"
		}
		id: {
			version_added: "1.1"
			description: [
				"Identifier for this instance or set of instances, so that the module will be idempotent with respect to EC2 instances.",
				"This identifier is valid for at least 24 hours after the termination of the instance, and should not be reused for another call later on.",
				"For details, see the description of client token at U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).",
			]
			type: "str"
		}
		group: {
			description: [
				"Security group (or list of groups) to use with the instance.",
			]
			aliases: ["groups"]
			type: "list"
		}
		group_id: {
			version_added: "1.1"
			description: [
				"Security group id (or list of ids) to use with the instance.",
			]
			type: "list"
		}
		region: {
			version_added: "1.2"
			description: [
				"The AWS region to use.  Must be specified if ec2_url is not used.",
				"If not specified then the value of the C(AWS_REGION) or C(EC2_REGION) environment variable, if any, is used.",
				"See U(https://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region).",
			]
			aliases: ["aws_region", "ec2_region"]
			type: "str"
		}
		zone: {
			version_added: "1.2"
			description: [
				"AWS availability zone in which to launch the instance.",
			]
			aliases: ["aws_zone", "ec2_zone"]
			type: "str"
		}
		instance_type: {
			description: [
				"Instance type to use for the instance, see U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).",
			]
			required: true
			type:     "str"
			aliases: ["type"]
		}
		tenancy: {
			version_added: "1.9"
			description: [
				"An instance with a tenancy of \"dedicated\" runs on single-tenant hardware and can only be launched into a VPC.",
				"Note that to use dedicated tenancy you MUST specify a I(vpc_subnet_id) as well.",
				"Dedicated tenancy is not available for EC2 \"micro\" instances.",
			]
			default: "default"
			choices: ["default", "dedicated"]
			type: "str"
		}
		spot_price: {
			version_added: "1.5"
			description: [
				"Maximum spot price to bid. If not set, a regular on-demand instance is requested.",
				"A spot request is made with this maximum bid. When it is filled, the instance is started.",
			]
			type: "str"
		}
		spot_type: {
			version_added: "2.0"
			description: [
				"Type of spot request; one of \"one-time\" or \"persistent\". Defaults to \"one-time\" if not supplied.",
			]
			default: "one-time"
			choices: ["one-time", "persistent"]
			type: "str"
		}
		image: {
			description: [
				"I(ami) ID to use for the instance.",
			]
			required: true
			type:     "str"
		}
		kernel: {
			description: [
				"Kernel I(eki) to use for the instance.",
			]
			type: "str"
		}
		ramdisk: {
			description: [
				"Ramdisk I(eri) to use for the instance.",
			]
			type: "str"
		}
		wait: {
			description: [
				"Wait for the instance to reach its desired state before returning.",
				"Does not wait for SSH, see 'wait_for_connection' example for details.",
			]
			type:    "bool"
			default: "no"
		}
		wait_timeout: {
			description: [
				"How long before wait gives up, in seconds.",
			]
			default: 300
			type:    "int"
		}
		spot_wait_timeout: {
			version_added: "1.5"
			description: [
				"How long to wait for the spot instance request to be fulfilled. Affects 'Request valid until' for setting spot request lifespan.",
			]
			default: 600
			type:    "int"
		}
		count: {
			description: [
				"Number of instances to launch.",
			]
			default: 1
			type:    "int"
		}
		monitoring: {
			version_added: "1.1"
			description: [
				"Enable detailed monitoring (CloudWatch) for instance.",
			]
			type:    "bool"
			default: "no"
		}
		user_data: {
			version_added: "0.9"
			description: [
				"Opaque blob of data which is made available to the EC2 instance.",
			]
			type: "str"
		}
		instance_tags: {
			version_added: "1.0"
			description: [
				"A hash/dictionary of tags to add to the new instance or for starting/stopping instance by tag; '{\"key\":\"value\"}' and '{\"key\":\"value\",\"key\":\"value\"}'.",
			]
			type: "dict"
		}
		placement_group: {
			version_added: "1.3"
			description: [
				"Placement group for the instance when using EC2 Clustered Compute.",
			]
			type: "str"
		}
		vpc_subnet_id: {
			version_added: "1.1"
			description: [
				"the subnet ID in which to launch the instance (VPC).",
			]
			type: "str"
		}
		assign_public_ip: {
			version_added: "1.5"
			description: [
				"When provisioning within vpc, assign a public IP address. Boto library must be 2.13.0+.",
			]
			type: "bool"
		}
		private_ip: {
			version_added: "1.2"
			description: [
				"The private ip address to assign the instance (from the vpc subnet).",
			]
			type: "str"
		}
		instance_profile_name: {
			version_added: "1.3"
			description: [
				"Name of the IAM instance profile (i.e. what the EC2 console refers to as an \"IAM Role\") to use. Boto library must be 2.5.0+.",
			]
			type: "str"
		}
		instance_ids: {
			version_added: "1.3"
			description: [
				"list of instance ids, currently used for states: absent, running, stopped",
			]
			aliases: ["instance_id"]
			type: "list"
		}
		source_dest_check: {
			version_added: "1.6"
			description: [
				"Enable or Disable the Source/Destination checks (for NAT instances and Virtual Routers). When initially creating an instance the EC2 API defaults this to True.",
			]

			type: "bool"
		}
		termination_protection: {
			version_added: "2.0"
			description: [
				"Enable or Disable the Termination Protection.",
			]
			type:    "bool"
			default: "no"
		}
		instance_initiated_shutdown_behavior: {
			version_added: "2.2"
			description: [
				"Set whether AWS will Stop or Terminate an instance on shutdown. This parameter is ignored when using instance-store. images (which require termination on shutdown).",
			]

			default: "stop"
			choices: ["stop", "terminate"]
			type: "str"
		}
		state: {
			version_added: "1.3"
			description: [
				"Create, terminate, start, stop or restart instances. The state 'restarted' was added in Ansible 2.2.",
				"When 'absent', I(instance_ids) is required.",
				"When 'running', 'stopped' and 'restarted', I(instance_ids) or I(instance_tags) is required.",
			]
			default: "present"
			choices: ["absent", "present", "restarted", "running", "stopped"]
			type: "str"
		}
		volumes: {
			version_added: "1.5"
			description: [
				"a list of hash/dictionaries of volumes to add to the new instance; '[{\"key\":\"value\", \"key\":\"value\"}]'; keys allowed are - device_name (str; required), delete_on_termination (bool; False), ephemeral (str), encrypted (bool; False), snapshot (str), volume_type (str), volume_size (int, GiB), iops (int) - iops must be set when volume_type='io1', ephemeral and snapshot are mutually exclusive.",
			]

			type: "list"
		}
		ebs_optimized: {
			version_added: "1.6"
			description: [
				"whether instance is using optimized EBS volumes, see U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html).",
			]
			default: "no"
			type:    "bool"
		}
		exact_count: {
			version_added: "1.5"
			description: [
				"An integer value which indicates how many instances that match the 'count_tag' parameter should be running. Instances are either created or terminated based on this value.",
			]

			type: "int"
		}
		count_tag: {
			version_added: "1.5"
			description: [
				"Used with 'exact_count' to determine how many nodes based on a specific tag criteria should be running. This can be expressed in multiple ways and is shown in the EXAMPLES section.  For instance, one can request 25 servers that are tagged with \"class=webserver\". The specified tag must already exist or be passed in as the 'instance_tags' option.",
			]

			type: "raw"
		}
		network_interfaces: {
			version_added: "2.0"
			description: [
				"A list of existing network interfaces to attach to the instance at launch. When specifying existing network interfaces, none of the assign_public_ip, private_ip, vpc_subnet_id, group, or group_id parameters may be used. (Those parameters are for creating a new network interface at launch.)",
			]

			aliases: ["network_interface"]
			type: "list"
		}
		spot_launch_group: {
			version_added: "2.1"
			description: [
				"Launch group for spot request, see U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/how-spot-instances-work.html#spot-launch-group).",
			]
			type: "str"
		}
	}
	author: [
		"Tim Gerla (@tgerla)",
		"Lester Wade (@lwade)",
		"Seth Vidal (@skvidal)",
	]
	extends_documentation_fragment: "aws"
}
