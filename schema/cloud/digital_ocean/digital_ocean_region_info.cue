package ansible

module: digital_ocean_region_info: {
	module:            "digital_ocean_region_info"
	short_description: "Gather information about DigitalOcean regions"
	description: [
		"This module can be used to gather information about regions.",
		"This module was called C(digital_ocean_region_facts) before Ansible 2.9. The usage did not change.",
	]
	author:                         "Abhijeet Kasurde (@Akasurde)"
	version_added:                  "2.6"
	extends_documentation_fragment: "digital_ocean.documentation"
	requirements: ["python >= 2.6"]
}
