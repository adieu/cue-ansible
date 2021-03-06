package ansible

module: ec2_placement_group: {
	module:            "ec2_placement_group"
	short_description: "Create or delete an EC2 Placement Group"
	description: [
		"Create an EC2 Placement Group; if the placement group already exists, nothing is done. Or, delete an existing placement group. If the placement group is absent, do nothing. See also U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)",
	]

	version_added: "2.5"
	author:        "Brad Macpherson (@iiibrad)"
	options: {
		name: {
			description: [
				"The name for the placement group.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Create or delete placement group.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
			type: "str"
		}
		strategy: {
			description: [
				"Placement group strategy. Cluster will cluster instances into a low-latency group in a single Availability Zone, while Spread spreads instances across underlying hardware.",
			]

			required: false
			default:  "cluster"
			choices: ["cluster", "spread"]
			type: "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
