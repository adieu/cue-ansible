package ansible

module: elb_network_lb: {
	module:            "elb_network_lb"
	short_description: "Manage a Network Load Balancer"
	description: [
		"Manage an AWS Network Elastic Load Balancer. See U(https://aws.amazon.com/blogs/aws/new-network-load-balancer-effortless-scaling-to-millions-of-requests-per-second/) for details.",
	]

	version_added: "2.6"
	requirements: ["boto3"]
	author: "Rob White (@wimnat)"
	options: {
		cross_zone_load_balancing: {
			description: [
				"Indicates whether cross-zone load balancing is enabled.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		deletion_protection: {
			description: [
				"Indicates whether deletion protection for the ELB is enabled.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		listeners: {
			description: [
				"A list of dicts containing listeners to attach to the ELB. See examples for detail of the dict required. Note that listener keys are CamelCased.",
			]

			required: false
			type:     "list"
			suboptions: {
				Port: {
					description: "The port on which the load balancer is listening."
					type:        "int"
				}
				Protocol: {
					description: "The protocol for connections from clients to the load balancer."
					type:        "str"
				}
				Certificates: {
					description: "The SSL server certificate."
					type:        "list"
					suboptions: CertificateArn: {
						description: "The Amazon Resource Name (ARN) of the certificate."
						type:        "str"
					}
				}
				SslPolicy: {
					description: "The security policy that defines which ciphers and protocols are supported."
					type:        "str"
				}
				DefaultActions: {
					description: "The default actions for the listener."
					type:        "list"
					suboptions: {
						Type: {
							description: "The type of action."
							type:        "str"
						}
						TargetGroupArn: {
							description: "The Amazon Resource Name (ARN) of the target group."
							type:        "str"
						}
					}
				}
			}
		}
		name: {
			description: [
				"The name of the load balancer. This name must be unique within your AWS account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.",
			]

			required: true
			type:     "str"
		}
		purge_listeners: {
			description: [
				"If yes, existing listeners will be purged from the ELB to match exactly what is defined by I(listeners) parameter. If the I(listeners) parameter is not set then listeners will not be modified",
			]

			default: true
			type:    "bool"
		}
		purge_tags: {
			description: [
				"If yes, existing tags will be purged from the resource to match exactly what is defined by I(tags) parameter. If the I(tags) parameter is not set then tags will not be modified.",
			]

			required: false
			default:  true
			type:     "bool"
		}
		subnet_mappings: {
			description: [
				"A list of dicts containing the IDs of the subnets to attach to the load balancer. You can also specify the allocation ID of an Elastic IP to attach to the load balancer. You can specify one Elastic IP address per subnet. This parameter is mutually exclusive with I(subnets)",
			]

			required: false
			type:     "list"
		}
		subnets: {
			description: [
				"A list of the IDs of the subnets to attach to the load balancer. You can specify only one subnet per Availability Zone. You must specify subnets from at least two Availability Zones. Required if state=present. This parameter is mutually exclusive with I(subnet_mappings)",
			]

			required: false
			type:     "list"
		}
		scheme: {
			description: [
				"Internet-facing or internal load balancer. An ELB scheme can not be modified after creation.",
			]
			required: false
			default:  "internet-facing"
			choices: ["internet-facing", "internal"]
			type: "str"
		}
		state: {
			description: [
				"Create or destroy the load balancer.",
			]
			required: true
			choices: ["present", "absent"]
			type: "str"
		}
		tags: {
			description: [
				"A dictionary of one or more tags to assign to the load balancer.",
			]
			required: false
			type:     "dict"
		}
		wait: {
			description: [
				"Whether or not to wait for the network load balancer to reach the desired state.",
			]
			type: "bool"
		}
		wait_timeout: {
			description: [
				"The duration in seconds to wait, used in conjunction with I(wait).",
			]
			type: "int"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	notes: [
		"Listeners are matched based on port. If a listener's port is changed then a new listener will be created.",
		"Listener rules are matched based on priority. If a rule's priority is changed then a new rule will be created.",
	]
}
