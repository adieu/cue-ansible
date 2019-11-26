package ansible

module: iam_role: {
	module:            "iam_role"
	short_description: "Manage AWS IAM roles"
	description: [
		"Manage AWS IAM roles",
	]
	version_added: "2.3"
	author:        "Rob White (@wimnat)"
	options: {
		path: {
			description: [
				"The path to the role. For more information about paths, see U(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html).",
			]
			default: "/"
			type:    "str"
		}
		name: {
			description: [
				"The name of the role to create.",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"Provide a description of the new role.",
			]
			version_added: "2.5"
			type:          "str"
		}
		boundary: {
			description: [
				"The ARN of an IAM managed policy to use to restrict the permissions this role can pass on to IAM roles/users that it creates.",
				"Boundaries cannot be set on Instance Profiles, so if this option is specified then I(create_instance_profile) must be false.",
				"This is intended for roles/users that have permissions to create new IAM objects.",
				"For more information on boundaries, see U(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html)",
				"Requires botocore 1.10.57 or above.",
			]
			aliases: ["boundary_policy_arn"]
			version_added: "2.7"
			type:          "str"
		}
		assume_role_policy_document: {
			description: [
				"The trust relationship policy document that grants an entity permission to assume the role.",
				"This parameter is required when I(state=present).",
			]
			type: "json"
		}
		managed_policy: {
			description: [
				"A list of managed policy ARNs or, since Ansible 2.4, a list of either managed policy ARNs or friendly names. To embed an inline policy, use M(iam_policy). To remove existing policies, use an empty list item.",
			]

			aliases: ["managed_policies"]
			type: "list"
		}
		max_session_duration: {
			description: [
				"The maximum duration (in seconds) of a session when assuming the role.",
				"Valid values are between 1 and 12 hours (3600 and 43200 seconds).",
			]
			version_added: "2.10"
			type:          "int"
		}
		purge_policies: {
			description: [
				"Detaches any managed policies not listed in the I(managed_policy) option. Set to false if you want to attach policies elsewhere.",
			]
			default:       true
			version_added: "2.5"
			type:          "bool"
		}
		state: {
			description: [
				"Create or remove the IAM role.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		create_instance_profile: {
			description: [
				"Creates an IAM instance profile along with the role.",
			]
			default:       true
			version_added: "2.5"
			type:          "bool"
		}
		delete_instance_profile: {
			description: [
				"When deleting a role will also delete the instance profile created with the same name as the role.",
				"Only applies when I(state=absent).",
			]
			default:       false
			version_added: "2.10"
			type:          "bool"
		}
		tags: {
			description: [
				"Tag dict to apply to the queue.",
				"Requires botocore 1.12.46 or above.",
			]
			version_added: "2.10"
			type:          "dict"
		}
		purge_tags: {
			description: [
				"Remove tags not listed in I(tags) when tags is specified.",
			]
			default:       true
			version_added: "2.10"
			type:          "bool"
		}
	}
	requirements: ["botocore", "boto3"]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
