package ansible

module: ec2_eni_info: {
	module:            "ec2_eni_info"
	short_description: "Gather information about ec2 ENI interfaces in AWS"
	description: [
		"Gather information about ec2 ENI interfaces in AWS.",
		"This module was called C(ec2_eni_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.0"
	author:        "Rob White (@wimnat)"
	requirements: ["boto3"]
	options: filters: {
		description: [
			"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkInterfaces.html) for possible filters.",
		]

		type: "dict"
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
