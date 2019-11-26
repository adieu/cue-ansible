package ansible

module: azure_rm_image_info: {
	module: "azure_rm_image_info"

	version_added: "2.9"

	short_description: "Get facts about azure custom images"

	description: [
		"List azure custom images. The images can be listed where scope of listing can be based on subscription, resource group, name or tags.",
	]

	options: {
		resource_group: description: [
			"Name of resource group.",
		]
		name: description: [
			"Name of the image to filter from existing images.",
		]
		tags: description: [
			"List of tags to be matched.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: ["Madhura Naniwadekar (@Madhura-CSI)"]
}
