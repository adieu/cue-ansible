package ansible

module: iam_role_info: {
	module:            "iam_role_info"
	short_description: "Gather information on IAM roles"
	description: [
		"Gathers information about IAM roles.",
		"This module was called C(iam_role_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.5"
	requirements: ["boto3"]
	author: [
		"Will Thames (@willthames)",
	]
	options: {
		name: {
			description: [
				"Name of a role to search for.",
				"Mutually exclusive with I(path_prefix).",
			]
			aliases: [
				"role_name",
			]
			type: "str"
		}
		path_prefix: {
			description: [
				"Prefix of role to restrict IAM role search for.",
				"Mutually exclusive with I(name).",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
