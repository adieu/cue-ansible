package ansible

module: elb_target_group_info: {
	module:            "elb_target_group_info"
	short_description: "Gather information about ELB target groups in AWS"
	description: [
		"Gather information about ELB target groups in AWS",
		"This module was called C(elb_target_group_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.4"
	requirements: ["boto3"]
	author: "Rob White (@wimnat)"
	options: {
		load_balancer_arn: {
			description: [
				"The Amazon Resource Name (ARN) of the load balancer.",
			]
			required: false
			type:     "str"
		}
		target_group_arns: {
			description: [
				"The Amazon Resource Names (ARN) of the target groups.",
			]
			required: false
			type:     "list"
		}
		names: {
			description: [
				"The names of the target groups.",
			]
			required: false
			type:     "list"
		}
		collect_targets_health: {
			description: [
				"When set to \"yes\", output contains targets health description",
			]
			required:      false
			default:       false
			type:          "bool"
			version_added: 2.8
		}
	}

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
