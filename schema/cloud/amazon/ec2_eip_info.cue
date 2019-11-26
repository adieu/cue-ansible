package ansible

module: ec2_eip_info: {
	module:            "ec2_eip_info"
	short_description: "List EC2 EIP details"
	description: [
		"List details of EC2 Elastic IP addresses.",
		"This module was called C(ec2_eip_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.6"
	author:        "Brad Macpherson (@iiibrad)"
	options: filters: {
		description: [
			"A dict of filters to apply. Each dict item consists of a filter key and filter value.  See U(https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-addresses.html#options) for possible filters. Filter names and values are case sensitive.",
		]

		required: false
		default: {}
		type: "dict"
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
