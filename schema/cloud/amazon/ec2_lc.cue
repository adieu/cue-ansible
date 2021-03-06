package ansible

module: ec2_lc: {
	module: "ec2_lc"

	short_description: "Create or delete AWS Autoscaling Launch Configurations"

	description: [
		"Can create or delete AWS Autoscaling Configurations.",
		"Works with the ec2_asg module to manage Autoscaling Groups.",
	]

	notes: [
		"Amazon ASG Autoscaling Launch Configurations are immutable once created, so modifying the configuration after it is changed will not modify the launch configuration on AWS. You must create a new config and assign it to the ASG instead.",
		"encrypted volumes are supported on versions >= 2.4",
	]

	version_added: "1.6"

	author: [
		"Gareth Rushgrove (@garethr)",
		"Willem van Ketwich (@wilvk)",
	]

	options: {
		state: {
			description: [
				"Register or deregister the instance.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		name: {
			description: [
				"Unique name for configuration.",
			]
			required: true
			type:     "str"
		}
		instance_type: {
			description: [
				"Instance type to use for the instance.",
			]
			required: true
			type:     "str"
		}
		image_id: {
			description: [
				"The AMI unique identifier to be used for the group.",
			]
			type: "str"
		}
		key_name: {
			description: [
				"The SSH key name to be used for access to managed instances.",
			]
			type: "str"
		}
		security_groups: {
			description: [
				"A list of security groups to apply to the instances. Since version 2.4 you can specify either security group names or IDs or a mix.  Previous to 2.4, for VPC instances, specify security group IDs and for EC2-Classic, specify either security group names or IDs.",
			]

			type:     "list"
			elements: "str"
		}
		volumes: {
			description: [
				"A list of volume dicts, each containing device name and optionally ephemeral id or snapshot id. Size and type (and number of iops for io device type) must be specified for a new volume or a root volume, and may be passed for a snapshot volume. For any volume, a volume size less than 1 will be interpreted as a request not to create the volume.",
			]

			type:     "list"
			elements: "dict"
		}
		user_data: {
			description: [
				"Opaque blob of data which is made available to the ec2 instance. Mutually exclusive with I(user_data_path).",
			]
			type: "str"
		}
		user_data_path: {
			description: [
				"Path to the file that contains userdata for the ec2 instances. Mutually exclusive with I(user_data).",
			]
			version_added: "2.3"
			type:          "path"
		}
		kernel_id: {
			description: [
				"Kernel id for the EC2 instance.",
			]
			type: "str"
		}
		spot_price: {
			description: [
				"The spot price you are bidding. Only applies for an autoscaling group with spot instances.",
			]
			type: "float"
		}
		instance_monitoring: {
			description: [
				"Specifies whether instances are launched with detailed monitoring.",
			]
			type:    "bool"
			default: false
		}
		assign_public_ip: {
			description: [
				"Used for Auto Scaling groups that launch instances into an Amazon Virtual Private Cloud. Specifies whether to assign a public IP address to each instance launched in a Amazon VPC.",
			]

			version_added: "1.8"
			type:          "bool"
		}
		ramdisk_id: {
			description: [
				"A RAM disk id for the instances.",
			]
			version_added: "1.8"
			type:          "str"
		}
		instance_profile_name: {
			description: [
				"The name or the Amazon Resource Name (ARN) of the instance profile associated with the IAM role for the instances.",
			]
			version_added: "1.8"
			type:          "str"
		}
		ebs_optimized: {
			description: [
				"Specifies whether the instance is optimized for EBS I/O (true) or not (false).",
			]
			default:       false
			version_added: "1.8"
			type:          "bool"
		}
		classic_link_vpc_id: {
			description: [
				"Id of ClassicLink enabled VPC",
			]
			version_added: "2.0"
			type:          "str"
		}
		classic_link_vpc_security_groups: {
			description: [
				"A list of security group IDs with which to associate the ClassicLink VPC instances.",
			]
			version_added: "2.0"
			type:          "list"
			elements:      "str"
		}
		vpc_id: {
			description: [
				"VPC ID, used when resolving security group names to IDs.",
			]
			version_added: "2.4"
			type:          "str"
		}
		instance_id: {
			description: [
				"The Id of a running instance to use as a basis for a launch configuration. Can be used in place of I(image_id) and I(instance_type).",
			]
			version_added: "2.4"
			type:          "str"
		}
		placement_tenancy: {
			description: [
				"Determines whether the instance runs on single-tenant hardware or not.",
				"When not set AWS will default to C(default).",
			]
			version_added: "2.4"
			type:          "str"
			choices: ["default", "dedicated"]
		}
		associate_public_ip_address: {
			description: [
				"The I(associate_public_ip_address) option does nothing and will be removed in Ansible 2.14.",
			]
			type: "bool"
		}
	}

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]

	requirements: [
		"boto3 >= 1.4.4",
	]
}
