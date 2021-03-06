package ansible

module: iam_user: {
	module:            "iam_user"
	short_description: "Manage AWS IAM users"
	description: [
		"Manage AWS IAM users",
	]
	version_added: "2.5"
	author:        "Josh Souza (@joshsouza)"
	options: {
		name: {
			description: [
				"The name of the user to create.",
			]
			required: true
			type:     "str"
		}
		managed_policy: {
			description: [
				"A list of managed policy ARNs or friendly names to attach to the user. To embed an inline policy, use M(iam_policy).",
			]
			required: false
			type:     "list"
		}
		state: {
			description: [
				"Create or remove the IAM user",
			]
			required: true
			choices: ["present", "absent"]
			type: "str"
		}
		purge_policy: {
			description: [
				"Detach policies which are not included in managed_policy list",
			]
			required: false
			default:  false
			type:     "bool"
		}
	}
	requirements: ["botocore", "boto3"]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
