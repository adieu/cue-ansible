package ansible

module: ec2_tag: {
	module:            "ec2_tag"
	short_description: "create and remove tags on ec2 resources"
	description: [
		"Creates, removes and lists tags for any EC2 resource.  The resource is referenced by its resource id (e.g. an instance being i-XXXXXXX). It is designed to be used with complex args (tags), see the examples.",
	]

	version_added: "1.3"
	requirements: ["boto3", "botocore"]
	options: {
		resource: {
			description: [
				"The EC2 resource id.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Whether the tags should be present or absent on the resource. Use list to interrogate the tags of an instance.",
			]
			default: "present"
			choices: ["present", "absent", "list"]
			type: "str"
		}
		tags: {
			description: [
				"A dictionary of tags to add or remove from the resource.",
				"If the value provided for a tag is null and I(state=absent), the tag will be removed regardless of its current value.",
			]
			required: true
			type:     "dict"
		}
		purge_tags: {
			description: [
				"Whether unspecified tags should be removed from the resource.",
				"Note that when combined with I(state=absent), specified tags with non-matching values are not purged.",
			]
			type:          "bool"
			default:       false
			version_added: "2.7"
		}
	}

	author: [
		"Lester Wade (@lwade)",
		"Paul Arthur (@flowerysong)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
