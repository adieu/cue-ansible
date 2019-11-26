package ansible

module: aws_direct_connect_link_aggregation_group: {
	module:            "aws_direct_connect_link_aggregation_group"
	short_description: "Manage Direct Connect LAG bundles."
	description: [
		"Create, delete, or modify a Direct Connect link aggregation group.",
	]
	version_added: "2.4"
	author:        "Sloane Hertel (@s-hertel)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	requirements: [
		"boto3",
		"botocore",
	]
	options: {
		state: {
			description: [
				"The state of the Direct Connect link aggregation group.",
			]
			choices: [
				"present",
				"absent",
			]
			type: "str"
		}
		name: {
			description: [
				"The name of the Direct Connect link aggregation group.",
			]
			type: "str"
		}
		link_aggregation_group_id: {
			description: [
				"The ID of the Direct Connect link aggregation group.",
			]
			type: "str"
		}
		num_connections: {
			description: [
				"The number of connections with which to initialize the link aggregation group.",
			]
			type: "int"
		}
		min_links: {
			description: [
				"The minimum number of physical connections that must be operational for the LAG itself to be operational.",
			]
			type: "int"
		}
		location: {
			description: [
				"The location of the link aggregation group.",
			]
			type: "str"
		}
		bandwidth: {
			description: [
				"The bandwidth of the link aggregation group.",
			]
			type: "str"
		}
		force_delete: {
			description: [
				"This allows the minimum number of links to be set to 0, any hosted connections disassociated, and any virtual interfaces associated to the LAG deleted.",
			]

			type: "bool"
		}
		connection_id: {
			description: [
				"A connection ID to link with the link aggregation group upon creation.",
			]
			type: "str"
		}
		delete_with_disassociation: {
			description: [
				"To be used with I(state=absent) to delete connections after disassociating them with the LAG.",
			]
			type: "bool"
		}
		wait: {
			description: [
				"Whether or not to wait for the operation to complete. May be useful when waiting for virtual interfaces to be deleted. May modify the time of waiting with C(wait_timeout).",
			]

			type: "bool"
		}
		wait_timeout: {
			description: [
				"The duration in seconds to wait if I(wait) is True.",
			]
			default: 120
			type:    "int"
		}
	}
}
