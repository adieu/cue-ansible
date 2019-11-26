package ansible

module: iam_policy: {
	module:            "iam_policy"
	short_description: "Manage inline IAM policies for users, groups, and roles"
	description: [
		"Allows uploading or removing inline IAM policies for IAM users, groups or roles.",
		"To administer managed policies please see M(iam_user), M(iam_role), M(iam_group) and M(iam_managed_policy)",
	]

	version_added: "2.0"
	options: {
		iam_type: {
			description: [
				"Type of IAM resource.",
			]
			required: true
			choices: ["user", "group", "role"]
			type: "str"
		}
		iam_name: {
			description: [
				"Name of IAM resource you wish to target for policy actions. In other words, the user name, group name or role name.",
			]
			required: true
			type:     "str"
		}
		policy_name: {
			description: [
				"The name label for the policy to create or remove.",
			]
			required: true
			type:     "str"
		}
		policy_document: {
			description: [
				"The path to the properly json formatted policy file.",
				"Mutually exclusive with I(policy_json).",
			]
			type: "str"
		}
		policy_json: {
			description: [
				"A properly json formatted policy as string.",
				"Mutually exclusive with I(policy_document).",
				"See U(https://github.com/ansible/ansible/issues/7005#issuecomment-42894813) on how to use it properly.",
			]
			type: "json"
		}
		state: {
			description: [
				"Whether to create or delete the IAM policy.",
			]
			required: true
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
		skip_duplicates: {
			description: [
				"By default the module looks for any policies that match the document you pass in, if there is a match it will not make a new policy object with the same rules. You can override this by specifying false which would allow for two policy objects with different names but same rules.",
			]

			default: true
			type:    "bool"
		}
	}

	author: [
		"Jonathan I. Davila (@defionscode)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
