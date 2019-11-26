package ansible

module: ec2_instance_info: {
	module:            "ec2_instance_info"
	short_description: "Gather information about ec2 instances in AWS"
	description: [
		"Gather information about ec2 instances in AWS",
		"This module was called C(ec2_instance_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.4"
	author: [
		"Michael Schuett (@michaeljs1990)",
		"Rob White (@wimnat)",
	]
	requirements: ["boto3", "botocore"]
	options: {
		instance_ids: {
			description: [
				"If you specify one or more instance IDs, only instances that have the specified IDs are returned.",
			]
			required:      false
			version_added: 2.4
			type:          "list"
		}
		filters: {
			description: [
				"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html) for possible filters. Filter names and values are case sensitive.",
			]

			required: false
			default: {}
			type: "dict"
		}
	}

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
