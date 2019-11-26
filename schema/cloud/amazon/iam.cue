package ansible

module: iam: {
	module:            "iam"
	short_description: "Manage IAM users, groups, roles and keys"
	description: [
		"Allows for the management of IAM users, user API keys, groups, roles.",
	]
	version_added: "2.0"
	options: {
		iam_type: {
			description: [
				"Type of IAM resource",
			]
			choices: ["user", "group", "role"]
			type: "str"
		}
		name: {
			description: [
				"Name of IAM resource to create or identify",
			]
			required: true
			type:     "str"
		}
		new_name: {
			description: [
				"When state is update, will replace name with new_name on IAM resource",
			]
			type: "str"
		}
		new_path: {
			description: [
				"When state is update, will replace the path with new_path on the IAM resource",
			]
			type: "str"
		}
		state: {
			description: [
				"Whether to create, delete or update the IAM resource. Note, roles cannot be updated.",
			]
			required: true
			choices: ["present", "absent", "update"]
			type: "str"
		}
		path: {
			description: [
				"When creating or updating, specify the desired path of the resource. If state is present, it will replace the current path to match what is passed in when they do not match.",
			]

			default: "/"
			type:    "str"
		}
		trust_policy: {
			description: [
				"The inline (JSON or YAML) trust policy document that grants an entity permission to assume the role. Mutually exclusive with C(trust_policy_filepath).",
			]
			version_added: "2.2"
			type:          "dict"
		}
		trust_policy_filepath: {
			description: [
				"The path to the trust policy document that grants an entity permission to assume the role. Mutually exclusive with C(trust_policy).",
			]
			version_added: "2.2"
			type:          "str"
		}
		access_key_state: {
			description: [
				"When type is user, it creates, removes, deactivates or activates a user's access key(s). Note that actions apply only to keys specified.",
			]
			choices: ["create", "remove", "active", "inactive", "Create", "Remove", "Active", "Inactive"]
			type: "str"
		}
		key_count: {
			description: [
				"When access_key_state is create it will ensure this quantity of keys are present. Defaults to 1.",
			]
			default: 1
			type:    "int"
		}
		access_key_ids: {
			description: [
				"A list of the keys that you want impacted by the access_key_state parameter.",
			]
			type: "list"
		}
		groups: {
			description: [
				"A list of groups the user should belong to. When update, will gracefully remove groups not listed.",
			]
			type: "list"
		}
		password: {
			description: [
				"When type is user and state is present, define the users login password. Also works with update. Note that always returns changed.",
			]
			type: "str"
		}
		update_password: {
			default: "always"
			choices: ["always", "on_create"]
			description: [
				"C(always) will update passwords if they differ.  C(on_create) will only set the password for newly created users.",
			]
			type: "str"
		}
	}
	notes: [
		"Currently boto does not support the removal of Managed Policies, the module will error out if your user/group/role has managed policies when you try to do state=absent. They will need to be removed manually.",
	]

	author: [
		"Jonathan I. Davila (@defionscode)",
		"Paul Seiffert (@seiffert)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
