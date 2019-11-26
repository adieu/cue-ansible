package ansible

module: digital_ocean_image_info: {
	module:            "digital_ocean_image_info"
	short_description: "Gather information about DigitalOcean images"
	description: [
		"This module can be used to gather information about DigitalOcean provided images.",
		"These images can be either of type C(distribution), C(application) and C(private).",
		"This module was called C(digital_ocean_image_facts) before Ansible 2.9. The usage did not change.",
	]
	author:        "Abhijeet Kasurde (@Akasurde)"
	version_added: "2.6"
	options: image_type: {
		description: [
			"Specifies the type of image information to be retrieved.",
			"If set to C(application), then information are gathered related to all application images.",
			"If set to C(distribution), then information are gathered related to all distribution images.",
			"If set to C(private), then information are gathered related to all private images.",
			"If not set to any of above, then information are gathered related to all images.",
		]
		default: "all"
		choices: ["all", "application", "distribution", "private"]
		required: false
	}
	requirements: [
		"python >= 2.6",
	]
	extends_documentation_fragment: "digital_ocean.documentation"
}
