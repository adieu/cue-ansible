package ansible

module: rds_subnet_group: {
	module:            "rds_subnet_group"
	version_added:     "1.5"
	short_description: "manage RDS database subnet groups"
	description: [
		"Creates, modifies, and deletes RDS database subnet groups. This module has a dependency on python-boto >= 2.5.",
	]
	options: {
		state: {
			description: [
				"Specifies whether the subnet should be present or absent.",
			]
			required: true
			choices: ["present", "absent"]
			type: "str"
		}
		name: {
			description: [
				"Database subnet group identifier.",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"Database subnet group description.",
				"Required when I(state=present).",
			]
			type: "str"
		}
		subnets: {
			description: [
				"List of subnet IDs that make up the database subnet group.",
				"Required when I(state=present).",
			]
			type: "list"
		}
	}
	author: "Scott Anderson (@tastychutney)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
