package ansible

module: manageiq_tags: {
	module: "manageiq_tags"

	short_description:              "Management of resource tags in ManageIQ."
	extends_documentation_fragment: "manageiq"
	version_added:                  "2.5"
	author:                         "Daniel Korn (@dkorn)"
	description: [
		"The manageiq_tags module supports adding, updating and deleting tags in ManageIQ.",
	]

	options: {
		state: {
			description: [
				"absent - tags should not exist,",
				"present - tags should exist,",
				"list - list current tags.",
			]
			choices: ["absent", "present", "list"]
			default: "present"
		}
		tags: description: [
			"tags - list of dictionaries, each includes 'name' and 'category' keys.",
			"required if state is present or absent.",
		]
		resource_type: {
			description: [
				"the relevant resource type in manageiq",
			]
			required: true
			choices: [
				"provider",
				"host",
				"vm",
				"blueprint",
				"category",
				"cluster",
				"data store",
				"group",
				"resource pool",
				"service",
				"service template",
				"template",
				"tenant",
				"user",
			]
		}
		resource_name: {
			description: [
				"the relevant resource name in manageiq",
			]
			required: true
		}
	}
}
