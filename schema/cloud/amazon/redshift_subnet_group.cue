package ansible

module: redshift_subnet_group: {
	author: [
		"Jens Carl (@j-carl), Hothead Games Inc.",
	]
	module:            "redshift_subnet_group"
	version_added:     "2.2"
	short_description: "manage Redshift cluster subnet groups"
	description: [
		"Create, modifies, and deletes Redshift cluster subnet groups.",
	]
	options: {
		state: {
			description: [
				"Specifies whether the subnet should be present or absent.",
			]
			choices: ["present", "absent"]
			type: "str"
		}
		group_name: {
			description: [
				"Cluster subnet group name.",
			]
			required: true
			aliases: ["name"]
			type: "str"
		}
		group_description: {
			description: [
				"Database subnet group description.",
			]
			aliases: ["description"]
			type: "str"
		}
		group_subnets: {
			description: [
				"List of subnet IDs that make up the cluster subnet group.",
			]
			aliases: ["subnets"]
			type:     "list"
			elements: "str"
		}
	}
	requirements: ["boto"]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
