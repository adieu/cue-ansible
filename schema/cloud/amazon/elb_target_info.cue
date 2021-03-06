package ansible

module: elb_target_info: {
	module:            "elb_target_info"
	short_description: "Gathers which target groups a target is associated with."
	description: [
		"This module will search through every target group in a region to find which ones have registered a given instance ID or IP.",
		"This module was called C(elb_target_facts) before Ansible 2.9. The usage did not change.",
	]

	version_added: "2.7"
	author:        "Yaakov Kuperman (@yaakov-github)"
	options: {
		instance_id: {
			description: [
				"What instance ID to get information for.",
			]
			type:     "str"
			required: true
		}
		get_unused_target_groups: {
			description: [
				"Whether or not to get target groups not used by any load balancers.",
			]
			type:    "bool"
			default: true
		}
	}

	requirements: [
		"boto3",
		"botocore",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
