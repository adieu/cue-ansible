package ansible

module: elasticache_subnet_group: {
	module:            "elasticache_subnet_group"
	version_added:     "2.0"
	short_description: "manage ElastiCache subnet groups"
	description: [
		"Creates, modifies, and deletes ElastiCache subnet groups. This module has a dependency on python-boto >= 2.5.",
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
				"ElastiCache subnet group description. Only set when a new group is added.",
			]
			type: "str"
		}
		subnets: {
			description: [
				"List of subnet IDs that make up the ElastiCache subnet group.",
			]
			type:     "list"
			elements: "str"
		}
	}
	author: "Tim Mahoney (@timmahoney)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
