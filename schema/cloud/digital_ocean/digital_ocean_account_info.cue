package ansible

module: digital_ocean_account_info: {
	module:            "digital_ocean_account_info"
	short_description: "Gather information about DigitalOcean User account"
	description: [
		"This module can be used to gather information about User account.",
		"This module was called C(digital_ocean_account_facts) before Ansible 2.9. The usage did not change.",
	]
	author:        "Abhijeet Kasurde (@Akasurde)"
	version_added: "2.6"

	requirements: [
		"python >= 2.6",
	]

	extends_documentation_fragment: "digital_ocean.documentation"
}
