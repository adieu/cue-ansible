package ansible

module: ec2_vpc_vpn_info: {
	module:            "ec2_vpc_vpn_info"
	short_description: "Gather information about VPN Connections in AWS."
	description: [
		"Gather information about VPN Connections in AWS.",
		"This module was called C(ec2_vpc_vpn_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.6"
	requirements: ["boto3"]
	author: "Madhura Naniwadekar (@Madhura-CSI)"
	options: {
		filters: {
			description: [
				"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html) for possible filters.",
			]

			required: false
			type:     "dict"
		}
		vpn_connection_ids: {
			description: [
				"Get details of a specific VPN connections using vpn connection ID/IDs. This value should be provided as a list.",
			]
			required: false
			type:     "list"
			elements: "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
