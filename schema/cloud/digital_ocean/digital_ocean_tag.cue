package ansible

module: digital_ocean_tag: {
	module:            "digital_ocean_tag"
	short_description: "Create and remove tag(s) to DigitalOcean resource."
	description: [
		"Create and remove tag(s) to DigitalOcean resource.",
	]
	author:        "Victor Volle (@kontrafiktion)"
	version_added: "2.2"
	options: {
		name: {
			description: [
				"The name of the tag. The supported characters for names include alphanumeric characters, dashes, and underscores.",
			]

			required: true
		}
		resource_id: {
			description: [
				"The ID of the resource to operate on.",
				"The data type of resource_id is changed from integer to string, from version 2.5.",
			]
			aliases: ["droplet_id"]
		}
		resource_type: {
			description: [
				"The type of resource to operate on. Currently, only tagging of droplets is supported.",
			]

			default: "droplet"
			choices: ["droplet"]
		}
		state: {
			description: [
				"Whether the tag should be present or absent on the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "digital_ocean.documentation"
	notes: [
		"Two environment variables can be used, DO_API_KEY and DO_API_TOKEN. They both refer to the v2 token.",
		"As of Ansible 2.0, Version 2 of the DigitalOcean API is used.",
	]

	requirements: ["python >= 2.6"]
}
