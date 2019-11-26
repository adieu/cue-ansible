package ansible

module: efs_info: {
	module:            "efs_info"
	short_description: "Get information about Amazon EFS file systems"
	description: [
		"This module can be used to search Amazon EFS file systems.",
		"This module was called C(efs_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(efs_info) module no longer returns C(ansible_facts)!",
	]

	version_added: "2.2"
	requirements: ["boto3"]
	author: [
		"Ryan Sydnor (@ryansydnor)",
	]
	options: {
		name: {
			description: [
				"Creation Token of Amazon EFS file system.",
			]
			aliases: ["creation_token"]
			type: "str"
		}
		id: {
			description: [
				"ID of Amazon EFS.",
			]
			type: "str"
		}
		tags: {
			description: [
				"List of tags of Amazon EFS. Should be defined as dictionary.",
			]
			type: "dict"
		}
		targets: {
			description: [
				"List of targets on which to filter the returned results.",
				"Result must match all of the specified targets, each of which can be a security group ID, a subnet ID or an IP address.",
			]
			type:     "list"
			elements: "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
