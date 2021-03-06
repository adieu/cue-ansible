package ansible

module: elb_application_lb: {
	module:            "elb_application_lb"
	short_description: "Manage an Application load balancer"
	description: [
		"Manage an AWS Application Elastic Load Balancer. See U(https://aws.amazon.com/blogs/aws/new-aws-application-load-balancer/) for details.",
	]
	version_added: "2.4"
	requirements: ["boto3"]
	author: "Rob White (@wimnat)"
	options: {
		access_logs_enabled: {
			description: [
				"Whether or not to enable access logs. When true, I(access_logs_s3_bucket) must be set.",
			]
			required: false
			type:     "bool"
		}
		access_logs_s3_bucket: {
			description: [
				"The name of the S3 bucket for the access logs.",
				"Required if access logs in Amazon S3 are enabled.",
				"The bucket must exist in the same region as the load balancer and have a bucket policy that grants Elastic Load Balancing permission to write to the bucket.",
			]

			required: false
			type:     "str"
		}
		access_logs_s3_prefix: {
			description: [
				"The prefix for the log location in the S3 bucket.",
				"If you don't specify a prefix, the access logs are stored in the root of the bucket.",
				"Cannot begin or end with a slash.",
			]
			required: false
			type:     "str"
		}
		deletion_protection: {
			description: [
				"Indicates whether deletion protection for the ELB is enabled.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		http2: {
			description: [
				"Indicates whether to enable HTTP2 routing.",
			]
			required:      false
			default:       false
			type:          "bool"
			version_added: 2.6
		}
		idle_timeout: {
			description: [
				"The number of seconds to wait before an idle connection is closed.",
			]
			required: false
			type:     "int"
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
				Rules: {
					type: "list"
					description: [
						"A list of ALB Listener Rules.",
						"For the complete documentation of possible Conditions and Actions please see the boto3 documentation:",
						"https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/elbv2.html#ElasticLoadBalancingv2.Client.create_rule",
					]
					suboptions: {
						Conditions: {
							type:        "list"
							description: "Conditions which must be met for the actions to be applied."
						}
						Priority: {
							type:        "int"
							description: "The rule priority."
						}
						Actions: {
							type:        "list"
							description: "Actions to apply if all of the rule's conditions are met."
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
		subnets: {
			description: [
				"A list of the IDs of the subnets to attach to the load balancer. You can specify only one subnet per Availability Zone. You must specify subnets from at least two Availability Zones. Required if state=present.",
			]

			required: false
			type:     "list"
		}
		security_groups: {
			description: [
				"A list of the names or IDs of the security groups to assign to the load balancer. Required if state=present.",
			]
			required: false
			default: []
			type: "list"
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
			default: "present"
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
				"Wait for the load balancer to have a state of 'active' before completing. A status check is performed every 15 seconds until a successful state is reached. An error is returned after 40 failed checks.",
			]

			default:       false
			type:          "bool"
			version_added: 2.6
		}
		wait_timeout: {
			description: [
				"The time in seconds to use in conjunction with I(wait).",
			]
			version_added: 2.6
			type:          "int"
		}
		purge_rules: {
			description: [
				"When set to no, keep the existing load balancer rules in place. Will modify and add, but will not delete.",
			]
			default:       true
			type:          "bool"
			version_added: 2.7
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
