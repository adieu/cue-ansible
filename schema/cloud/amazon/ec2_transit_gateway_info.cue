package ansible

module: ec2_transit_gateway_info: {
	module:            "ec2_transit_gateway_info"
	short_description: "Gather information about ec2 transit gateways in AWS"
	description: [
		"Gather information about ec2 transit gateways in AWS",
	]
	version_added: "2.8"
	author:        "Bob Boldin (@BobBoldin)"
	requirements: [
		"botocore",
		"boto3",
	]
	options: {
		transit_gateway_ids: {
			description: [
				"A list of transit gateway IDs to gather information for.",
			]
			version_added: "2.8"
			aliases: ["transit_gateway_id"]
			type: "list"
		}
		filters: {
			description: [
				"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGateways.html) for filters.",
			]

			type: "dict"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
