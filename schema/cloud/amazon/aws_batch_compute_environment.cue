package ansible

module: aws_batch_compute_environment: {
	module:            "aws_batch_compute_environment"
	short_description: "Manage AWS Batch Compute Environments"
	description: [
		"This module allows the management of AWS Batch Compute Environments. It is idempotent and supports \"Check\" mode.  Use module M(aws_batch_compute_environment) to manage the compute environment, M(aws_batch_job_queue) to manage job queues, M(aws_batch_job_definition) to manage job definitions.",
	]

	version_added: "2.5"

	author: "Jon Meran (@jonmer85)"
	options: {
		compute_environment_name: {
			description: [
				"The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, and underscores are allowed.",
			]

			required: true
			type:     "str"
		}
		type: {
			description: [
				"The type of the compute environment.",
			]
			required: true
			choices: ["MANAGED", "UNMANAGED"]
			type: "str"
		}
		state: {
			description: [
				"Describes the desired state.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		compute_environment_state: {
			description: [
				"The state of the compute environment. If the state is ENABLED, then the compute environment accepts jobs from a queue and can scale out automatically based on queues.",
			]

			default: "ENABLED"
			choices: ["ENABLED", "DISABLED"]
			type: "str"
		}
		service_role: {
			description: [
				"The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.",
			]

			required: true
			type:     "str"
		}
		compute_resource_type: {
			description: [
				"The type of compute resource.",
			]
			required: true
			choices: ["EC2", "SPOT"]
			type: "str"
		}
		minv_cpus: {
			description: [
				"The minimum number of EC2 vCPUs that an environment should maintain.",
			]
			required: true
			type:     "int"
		}
		maxv_cpus: {
			description: [
				"The maximum number of EC2 vCPUs that an environment can reach.",
			]
			required: true
			type:     "int"
		}
		desiredv_cpus: {
			description: [
				"The desired number of EC2 vCPUS in the compute environment.",
			]
			type: "int"
		}
		instance_types: {
			description: [
				"The instance types that may be launched.",
			]
			required: true
			type:     "list"
			elements: "str"
		}
		image_id: {
			description: [
				"The Amazon Machine Image (AMI) ID used for instances launched in the compute environment.",
			]
			type: "str"
		}
		subnets: {
			description: [
				"The VPC subnets into which the compute resources are launched.",
			]
			required: true
			type:     "list"
			elements: "str"
		}
		security_group_ids: {
			description: [
				"The EC2 security groups that are associated with instances launched in the compute environment.",
			]
			required: true
			type:     "list"
			elements: "str"
		}
		ec2_key_pair: {
			description: [
				"The EC2 key pair that is used for instances launched in the compute environment.",
			]
			type: "str"
		}
		instance_role: {
			description: [
				"The Amazon ECS instance role applied to Amazon EC2 instances in a compute environment.",
			]
			required: true
			type:     "str"
		}
		tags: {
			description: [
				"Key-value pair tags to be applied to resources that are launched in the compute environment.",
			]
			type: "dict"
		}
		bid_percentage: {
			description: [
				"The minimum percentage that a Spot Instance price must be when compared with the On-Demand price for that instance type before instances are launched. For example, if your bid percentage is 20%, then the Spot price must be below 20% of the current On-Demand price for that EC2 instance.",
			]

			type: "int"
		}
		spot_iam_fleet_role: {
			description: [
				"The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role applied to a SPOT compute environment.",
			]
			type: "str"
		}
	}

	requirements: [
		"boto3",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
