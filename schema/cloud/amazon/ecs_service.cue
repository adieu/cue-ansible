package ansible

module: ecs_service: {
	module:            "ecs_service"
	short_description: "Create, terminate, start or stop a service in ECS"
	description: [
		"Creates or terminates ECS. services.",
	]
	notes: [
		"The service role specified must be assumable. (i.e. have a trust relationship for the ecs service, ecs.amazonaws.com)",
		"For details of the parameters and returns see U(https://boto3.readthedocs.io/en/latest/reference/services/ecs.html).",
		"An IAM role must have been previously created.",
	]
	version_added: "2.1"
	author: [
		"Mark Chance (@Java1Guy)",
		"Darek Kaczynski (@kaczynskid)",
		"Stephane Maarek (@simplesteph)",
		"Zac Blazic (@zacblazic)",
	]

	requirements: ["json", "botocore", "boto3"]
	options: {
		state: {
			description: [
				"The desired state of the service.",
			]
			required: true
			choices: ["present", "absent", "deleting"]
			type: "str"
		}
		name: {
			description: [
				"The name of the service.",
			]
			required: true
			type:     "str"
		}
		cluster: {
			description: [
				"The name of the cluster in which the service exists.",
			]
			required: false
			type:     "str"
		}
		task_definition: {
			description: [
				"The task definition the service will run.",
				"This parameter is required when I(state=present).",
			]
			required: false
			type:     "str"
		}
		load_balancers: {
			description: [
				"The list of ELBs defined for this service.",
			]
			required: false
			type:     "list"
			elements: "str"
		}
		desired_count: {
			description: [
				"The count of how many instances of the service.",
				"This parameter is required when I(state=present).",
			]
			required: false
			type:     "int"
		}
		client_token: {
			description: [
				"Unique, case-sensitive identifier you provide to ensure the idempotency of the request. Up to 32 ASCII characters are allowed.",
			]
			required: false
			type:     "str"
		}
		role: {
			description: [
				"The name or full Amazon Resource Name (ARN) of the IAM role that allows your Amazon ECS container agent to make calls to your load balancer on your behalf.",
				"This parameter is only required if you are using a load balancer with your service in a network mode other than C(awsvpc).",
			]
			required: false
			type:     "str"
		}
		delay: {
			description: [
				"The time to wait before checking that the service is available.",
			]
			required: false
			default:  10
			type:     "int"
		}
		repeat: {
			description: [
				"The number of times to check that the service is available.",
			]
			required: false
			default:  10
			type:     "int"
		}
		force_new_deployment: {
			description: [
				"Force deployment of service even if there are no changes.",
			]
			required:      false
			version_added: 2.8
			type:          "bool"
		}
		deployment_configuration: {
			description: [
				"Optional parameters that control the deployment_configuration.",
				"Format is '{\"maximum_percent\":<integer>, \"minimum_healthy_percent\":<integer>}",
			]
			required:      false
			version_added: 2.3
			type:          "dict"
			suboptions: {
				maximum_percent: {
					type:        "int"
					description: "Upper limit on the number of tasks in a service that are allowed in the RUNNING or PENDING state during a deployment."
				}
				minimum_healthy_percent: {
					type:        "int"
					description: "A lower limit on the number of tasks in a service that must remain in the RUNNING state during a deployment."
				}
			}
		}
		placement_constraints: {
			description: [
				"The placement constraints for the tasks in the service.",
			]
			required:      false
			version_added: 2.4
			type:          "list"
			elements:      "dict"
			suboptions:    null
		}
		placement_strategy: {
			description: [
				"The placement strategy objects to use for tasks in your service. You can specify a maximum of 5 strategy rules per service.",
			]
			required:      false
			version_added: 2.4
			type:          "list"
			elements:      "dict"
			suboptions: {
				type: {
					description: "The type of placement strategy."
					type:        "str"
				}
				field: {
					description: "The field to apply the placement strategy against."
					type:        "str"
				}
			}
		}
		network_configuration: {
			description: [
				"Network configuration of the service. Only applicable for task definitions created with I(network_mode=awsvpc).",
				"I(assign_public_ip) requires botocore >= 1.8.4",
			]
			type: "dict"
			suboptions: {
				subnets: {
					description: [
						"A list of subnet IDs to associate with the task",
					]
					version_added: 2.6
					type:          "list"
					elements:      "str"
				}
				security_groups: {
					description: [
						"A list of security group names or group IDs to associate with the task",
					]
					version_added: 2.6
					type:          "list"
					elements:      "str"
				}
				assign_public_ip: {
					description: [
						"Whether the task's elastic network interface receives a public IP address.",
						"This option requires botocore >= 1.8.4.",
					]
					type:          "bool"
					version_added: 2.7
				}
			}
		}
		launch_type: {
			description: [
				"The launch type on which to run your service.",
			]
			required:      false
			version_added: 2.7
			choices: ["EC2", "FARGATE"]
			type: "str"
		}
		health_check_grace_period_seconds: {
			description: [
				"Seconds to wait before health checking the freshly added/updated services.",
				"This option requires botocore >= 1.8.20.",
			]
			required:      false
			version_added: 2.8
			type:          "int"
		}
		service_registries: {
			description: [
				"Describes service discovery registries this service will register with.",
			]
			type:          "list"
			elements:      "dict"
			required:      false
			version_added: 2.8
			suboptions: {
				container_name: {
					description: [
						"container name for service discovery registration",
					]
					type: "str"
				}
				container_port: {
					description: [
						"container port for service discovery registration",
					]
					type: "int"
				}
				arn: {
					description: [
						"Service discovery registry ARN",
					]
					type: "str"
				}
			}
		}
		scheduling_strategy: {
			description: [
				"The scheduling strategy, defaults to \"REPLICA\" if not given to preserve previous behavior",
			]
			required:      false
			version_added: 2.8
			choices: ["DAEMON", "REPLICA"]
			type: "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
