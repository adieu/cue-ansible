package ansible

module: elb_classic_lb: {
	module: "elb_classic_lb"
	description: [
		"Returns information about the load balancer.",
		"Will be marked changed when called only if state is changed.",
	]
	short_description: "Creates or destroys Amazon ELB."
	version_added:     "2.4"
	author: [
		"Jim Dalton (@jsdalton)",
	]
	options: {
		state: {
			description: [
				"Create or destroy the ELB",
			]
			choices: ["present", "absent"]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"The name of the ELB",
			]
			required: true
			type:     "str"
		}
		listeners: {
			description: [
				"List of ports/protocols for this ELB to listen on (see example)",
			]
			type: "list"
		}
		purge_listeners: {
			description: [
				"Purge existing listeners on ELB that are not found in listeners",
			]
			type:    "bool"
			default: "yes"
		}
		instance_ids: {
			description: [
				"List of instance ids to attach to this ELB",
			]
			version_added: "2.1"
			type:          "list"
		}
		purge_instance_ids: {
			description: [
				"Purge existing instance ids on ELB that are not found in instance_ids",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
		zones: {
			description: [
				"List of availability zones to enable on this ELB",
			]
			type: "list"
		}
		purge_zones: {
			description: [
				"Purge existing availability zones on ELB that are not found in zones",
			]
			type:    "bool"
			default: "no"
		}
		security_group_ids: {
			description: [
				"A list of security groups to apply to the elb",
			]
			version_added: "1.6"
			type:          "list"
		}
		security_group_names: {
			description: [
				"A list of security group names to apply to the elb",
			]
			version_added: "2.0"
			type:          "list"
		}
		health_check: {
			description: [
				"An associative array of health check configuration settings (see example)",
			]
			type: "dict"
		}
		access_logs: {
			description: [
				"An associative array of access logs configuration settings (see example)",
			]
			version_added: "2.0"
			type:          "dict"
		}
		subnets: {
			description: [
				"A list of VPC subnets to use when creating ELB. Zones should be empty if using this.",
			]
			version_added: "1.7"
			type:          "list"
		}
		purge_subnets: {
			description: [
				"Purge existing subnet on ELB that are not found in subnets",
			]
			type:          "bool"
			default:       "no"
			version_added: "1.7"
		}
		scheme: {
			description: [
				"The scheme to use when creating the ELB. For a private VPC-visible ELB use 'internal'. If you choose to update your scheme with a different value the ELB will be destroyed and recreated. To update scheme you must use the option wait.",
			]

			choices: ["internal", "internet-facing"]
			default:       "internet-facing"
			version_added: "1.7"
			type:          "str"
		}
		validate_certs: {
			description: [
				"When set to C(no), SSL certificates will not be validated for boto versions >= 2.6.0.",
			]
			type:          "bool"
			default:       "yes"
			version_added: "1.5"
		}
		connection_draining_timeout: {
			description: [
				"Wait a specified timeout allowing connections to drain before terminating an instance",
			]
			version_added: "1.8"
			type:          "int"
		}
		idle_timeout: {
			description: [
				"ELB connections from clients and to servers are timed out after this amount of time",
			]
			version_added: "2.0"
			type:          "int"
		}
		cross_az_load_balancing: {
			description: [
				"Distribute load across all configured Availability Zones",
			]
			type:          "bool"
			default:       "no"
			version_added: "1.8"
		}
		stickiness: {
			description: [
				"An associative array of stickiness policy settings. Policy will be applied to all listeners ( see example )",
			]
			version_added: "2.0"
			type:          "dict"
		}
		wait: {
			description: [
				"When specified, Ansible will check the status of the load balancer to ensure it has been successfully removed from AWS.",
			]

			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
		wait_timeout: {
			description: [
				"Used in conjunction with wait. Number of seconds to wait for the elb to be terminated. A maximum of 600 seconds (10 minutes) is allowed.",
			]

			default:       60
			version_added: "2.1"
			type:          "int"
		}
		tags: {
			description: [
				"An associative array of tags. To delete all tags, supply an empty dict.",
			]
			version_added: "2.1"
			type:          "dict"
		}
	}

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
