package ansible

module: iam_policy_info: {
	module:            "iam_policy_info"
	short_description: "Retrieve inline IAM policies for users, groups, and roles"
	description: [
		"Supports fetching of inline IAM policies for IAM users, groups and roles.",
	]
	version_added: "2.10"
	options: {
		iam_type: {
			description: [
				"Type of IAM resource you wish to retrieve inline policies for.",
			]
			required: true
			choices: ["user", "group", "role"]
			type: "str"
		}
		iam_name: {
			description: [
				"Name of IAM resource you wish to retrieve inline policies for. In other words, the user name, group name or role name.",
			]
			required: true
			type:     "str"
		}
		policy_name: {
			description: [
				"Name of a specific IAM inline policy you with to retrieve.",
			]
			required: false
			type:     "str"
		}
	}

	author: [
		"Mark Chappell (@tremble)",
	]

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
