package ansible

module: ec2_elb_lb: {
	module: "ec2_elb_lb"
	description: [
		"Returns information about the load balancer.",
		"Will be marked changed when called only if state is changed.",
	]
	short_description: "Creates, updates or destroys an Amazon ELB."
	version_added:     "1.5"
	author: [
		"Jim Dalton (@jsdalton)",
	]
	options: {
		state: {
			description: [
				"Create or destroy the ELB",
			]
			type: "str"
			choices: ["absent", "present"]
			required: true
		}
		name: {
			description: [
				"The name of the ELB",
			]
			type:     "str"
			required: true
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
			default: true
		}
		instance_ids: {
			description: [
				"List of instance ids to attach to this ELB",
			]
			type:          "list"
			version_added: "2.1"
		}
		purge_instance_ids: {
			description: [
				"Purge existing instance ids on ELB that are not found in instance_ids",
			]
			type:          "bool"
			default:       false
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
			default: false
		}
		security_group_ids: {
			description: [
				"A list of security groups to apply to the elb",
			]
			type:          "list"
			version_added: "1.6"
		}
		security_group_names: {
			description: [
				"A list of security group names to apply to the elb",
			]
			type:          "list"
			version_added: "2.0"
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
			type:          "dict"
			version_added: "2.0"
		}
		subnets: {
			description: [
				"A list of VPC subnets to use when creating ELB. Zones should be empty if using this.",
			]
			type:          "list"
			version_added: "1.7"
		}
		purge_subnets: {
			description: [
				"Purge existing subnet on ELB that are not found in subnets",
			]
			type:          "bool"
			default:       false
			version_added: "1.7"
		}
		scheme: {
			description: [
				"The scheme to use when creating the ELB. For a private VPC-visible ELB use 'internal'. If you choose to update your scheme with a different value the ELB will be destroyed and recreated. To update scheme you must use the option wait.",
			]

			type: "str"
			choices: ["internal", "internet-facing"]
			default:       "internet-facing"
			version_added: "1.7"
		}
		validate_certs: {
			description: [
				"When set to C(no), SSL certificates will not be validated for boto versions >= 2.6.0.",
			]
			type:          "bool"
			default:       true
			version_added: "1.5"
		}
		connection_draining_timeout: {
			description: [
				"Wait a specified timeout allowing connections to drain before terminating an instance",
			]
			type:          "int"
			version_added: "1.8"
		}
		idle_timeout: {
			description: [
				"ELB connections from clients and to servers are timed out after this amount of time",
			]
			type:          "int"
			version_added: "2.0"
		}
		cross_az_load_balancing: {
			description: [
				"Distribute load across all configured Availability Zones",
			]
			type:          "bool"
			default:       false
			version_added: "1.8"
		}
		stickiness: {
			description: [
				"An associative array of stickiness policy settings. Policy will be applied to all listeners ( see example )",
			]
			type:          "dict"
			version_added: "2.0"
		}
		wait: {
			description: [
				"When specified, Ansible will check the status of the load balancer to ensure it has been successfully removed from AWS.",
			]

			type:          "bool"
			default:       false
			version_added: "2.1"
		}
		wait_timeout: {
			description: [
				"Used in conjunction with wait. Number of seconds to wait for the elb to be terminated. A maximum of 600 seconds (10 minutes) is allowed.",
			]

			type:          "int"
			default:       60
			version_added: "2.1"
		}
		tags: {
			description: [
				"An associative array of tags. To delete all tags, supply an empty dict.",
			]
			type:          "dict"
			version_added: "2.1"
		}
	}

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
