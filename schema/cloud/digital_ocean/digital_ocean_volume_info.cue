package ansible

module: digital_ocean_volume_info: {
	module:            "digital_ocean_volume_info"
	short_description: "Gather information about DigitalOcean volumes"
	description: [
		"This module can be used to gather information about DigitalOcean provided volumes.",
		"This module was called C(digital_ocean_volume_facts) before Ansible 2.9. The usage did not change.",
	]
	author:        "Abhijeet Kasurde (@Akasurde)"
	version_added: "2.6"
	options: region_name: {
		description: [
			"Name of region to restrict results to volumes available in a specific region.",
			"Please use M(digital_ocean_region_info) for getting valid values related regions.",
		]
		required: false
	}

	requirements: [
		"python >= 2.6",
	]

	extends_documentation_fragment: "digital_ocean.documentation"
}
