package ansible

module: elasticache_info: {
	module:            "elasticache_info"
	short_description: "Retrieve information for AWS ElastiCache clusters"
	description: [
		"Retrieve information from AWS ElastiCache clusters",
		"This module was called C(elasticache_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.5"
	options: name: {
		description: [
			"The name of an ElastiCache cluster.",
		]
		type: "str"
	}

	author: [
		"Will Thames (@willthames)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
