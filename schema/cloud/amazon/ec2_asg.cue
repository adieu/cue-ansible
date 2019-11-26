package ansible

module: ec2_asg: {
	module:            "ec2_asg"
	short_description: "Create or delete AWS AutoScaling Groups (ASGs)"
	description: [
		"Can create or delete AWS AutoScaling Groups.",
		"Can be used with the M(ec2_lc) module to manage Launch Configurations.",
	]
	version_added: "1.6"
	author:        "Gareth Rushgrove (@garethr)"
	requirements: ["boto3", "botocore"]
	options: {
		state: {
			description: [
				"Register or deregister the instance.",
			]
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
		name: {
			description: [
				"Unique name for group to be created or deleted.",
			]
			required: true
			type:     "str"
		}
		load_balancers: {
			description: [
				"List of ELB names to use for the group. Use for classic load balancers.",
			]
			type:     "list"
			elements: "str"
		}
		target_group_arns: {
			description: [
				"List of target group ARNs to use for the group. Use for application load balancers.",
			]
			version_added: "2.4"
			type:          "list"
			elements:      "str"
		}
		availability_zones: {
			description: [
				"List of availability zone names in which to create the group.",
				"Defaults to all the availability zones in the region if I(vpc_zone_identifier) is not set.",
			]
			type:     "list"
			elements: "str"
		}
		launch_config_name: {
			description: [
				"Name of the Launch configuration to use for the group. See the M(ec2_lc) module for managing these.",
				"If unspecified then the current group value will be used.  One of I(launch_config_name) or I(launch_template) must be provided.",
			]
			type: "str"
		}
		launch_template: {
			description: [
				"Dictionary describing the Launch Template to use",
			]
			suboptions: {
				version: {
					description: [
						"The version number of the launch template to use.",
						"Defaults to latest version if not provided.",
					]
					type: "str"
				}
				launch_template_name: {
					description: [
						"The name of the launch template. Only one of I(launch_template_name) or I(launch_template_id) is required.",
					]
					type: "str"
				}
				launch_template_id: {
					description: [
						"The id of the launch template. Only one of I(launch_template_name) or I(launch_template_id) is required.",
					]
					type: "str"
				}
			}
			type:          "dict"
			version_added: "2.8"
		}
		min_size: {
			description: [
				"Minimum number of instances in group, if unspecified then the current group value will be used.",
			]
			type: "int"
		}
		max_size: {
			description: [
				"Maximum number of instances in group, if unspecified then the current group value will be used.",
			]
			type: "int"
		}
		placement_group: {
			description: [
				"Physical location of your cluster placement group created in Amazon EC2.",
			]
			version_added: "2.3"
			type:          "str"
		}
		desired_capacity: {
			description: [
				"Desired number of instances in group, if unspecified then the current group value will be used.",
			]
			type: "int"
		}
		replace_all_instances: {
			description: [
				"In a rolling fashion, replace all instances that used the old launch configuration with one from the new launch configuration. It increases the ASG size by I(replace_batch_size), waits for the new instances to be up and running. After that, it terminates a batch of old instances, waits for the replacements, and repeats, until all old instances are replaced. Once that's done the ASG size is reduced back to the expected size.",
			]

			version_added: "1.8"
			default:       false
			type:          "bool"
		}
		replace_batch_size: {
			description: [
				"Number of instances you'd like to replace at a time.  Used with I(replace_all_instances).",
			]
			required:      false
			version_added: "1.8"
			default:       1
			type:          "int"
		}
		replace_instances: {
			description: [
				"List of I(instance_ids) belonging to the named AutoScalingGroup that you would like to terminate and be replaced with instances matching the current launch configuration.",
			]

			version_added: "1.8"
			type:          "list"
			elements:      "str"
		}
		lc_check: {
			description: [
				"Check to make sure instances that are being replaced with I(replace_instances) do not already have the current I(launch_config).",
			]
			version_added: "1.8"
			default:       true
			type:          "bool"
		}
		lt_check: {
			description: [
				"Check to make sure instances that are being replaced with I(replace_instances) do not already have the current I(launch_template or I(launch_template) I(version).",
			]

			version_added: "2.8"
			default:       true
			type:          "bool"
		}
		vpc_zone_identifier: {
			description: [
				"List of VPC subnets to use",
			]
			type:     "list"
			elements: "str"
		}
		tags: {
			description: [
				"A list of tags to add to the Auto Scale Group.",
				"Optional key is I(propagate_at_launch), which defaults to true.",
				"When I(propagate_at_launch) is true the tags will be propagated to the Instances created.",
			]
			version_added: "1.7"
			type:          "list"
			elements:      "dict"
		}
		health_check_period: {
			description: [
				"Length of time in seconds after a new EC2 instance comes into service that Auto Scaling starts checking its health.",
			]
			required:      false
			default:       300
			version_added: "1.7"
			type:          "int"
		}
		health_check_type: {
			description: [
				"The service you want the health status from, Amazon EC2 or Elastic Load Balancer.",
			]
			required:      false
			default:       "EC2"
			version_added: "1.7"
			choices: ["EC2", "ELB"]
			type: "str"
		}
		default_cooldown: {
			description: [
				"The number of seconds after a scaling activity completes before another can begin.",
			]
			default:       300
			version_added: "2.0"
			type:          "int"
		}
		wait_timeout: {
			description: [
				"How long to wait for instances to become viable when replaced.  If you experience the error \"Waited too long for ELB instances to be healthy\", try increasing this value.",
			]

			default:       300
			type:          "int"
			version_added: "1.8"
		}
		wait_for_instances: {
			description: [
				"Wait for the ASG instances to be in a ready state before exiting.  If instances are behind an ELB, it will wait until the ELB determines all instances have a lifecycle_state of  \"InService\" and  a health_status of \"Healthy\".",
			]

			version_added: "1.9"
			default:       true
			type:          "bool"
		}
		termination_policies: {
			description: [
				"An ordered list of criteria used for selecting instances to be removed from the Auto Scaling group when reducing capacity.",
				"Using I(termination_policies=Default) when modifying an existing AutoScalingGroup will result in the existing policy being retained instead of changed to C(Default).",
				"Valid values include: C(Default), C(OldestInstance), C(NewestInstance), C(OldestLaunchConfiguration), C(ClosestToNextInstanceHour)",
				"Full documentation of valid values can be found in the AWS documentation:",
				"U(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#custom-termination-policy)",
			]
			default:       "Default"
			version_added: "2.0"
			type:          "list"
			elements:      "str"
		}
		notification_topic: {
			description: [
				"A SNS topic ARN to send auto scaling notifications to.",
			]
			version_added: "2.2"
			type:          "str"
		}
		notification_types: {
			description: [
				"A list of auto scaling events to trigger notifications on.",
			]
			default: [
				"autoscaling:EC2_INSTANCE_LAUNCH",
				"autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
				"autoscaling:EC2_INSTANCE_TERMINATE",
				"autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
			]
			required:      false
			version_added: "2.2"
			type:          "list"
			elements:      "str"
		}
		suspend_processes: {
			description: [
				"A list of scaling processes to suspend.",
				"Valid values include:",
				"C(Launch), C(Terminate), C(HealthCheck), C(ReplaceUnhealthy), C(AZRebalance), C(AlarmNotification), C(ScheduledActions), C(AddToLoadBalancer)",
				"Full documentation of valid values can be found in the AWS documentation:",
				"U(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html)",
			]
			default: []
			version_added: "2.3"
			type:          "list"
			elements:      "str"
		}
		metrics_collection: {
			description: [
				"Enable ASG metrics collection.",
			]
			type:          "bool"
			default:       false
			version_added: "2.6"
		}
		metrics_granularity: {
			description: [
				"When I(metrics_collection=true) this will determine the granularity of metrics collected by CloudWatch.",
			]
			default:       "1Minute"
			version_added: "2.6"
			type:          "str"
		}
		metrics_list: {
			description: [
				"List of autoscaling metrics to collect when I(metrics_collection=true).",
			]
			default: [
				"GroupMinSize",
				"GroupMaxSize",
				"GroupDesiredCapacity",
				"GroupInServiceInstances",
				"GroupPendingInstances",
				"GroupStandbyInstances",
				"GroupTerminatingInstances",
				"GroupTotalInstances",
			]
			version_added: "2.6"
			type:          "list"
			elements:      "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
