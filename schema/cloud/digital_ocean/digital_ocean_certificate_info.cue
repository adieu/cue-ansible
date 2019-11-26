package ansible

module: digital_ocean_certificate_info: {
	module:            "digital_ocean_certificate_info"
	short_description: "Gather information about DigitalOcean certificates"
	description: [
		"This module can be used to gather information about DigitalOcean provided certificates.",
		"This module was called C(digital_ocean_certificate_facts) before Ansible 2.9. The usage did not change.",
	]
	author:        "Abhijeet Kasurde (@Akasurde)"
	version_added: "2.6"
	options: certificate_id: {
		description: [
			"Certificate ID that can be used to identify and reference a certificate.",
		]
		required: false
	}
	requirements: [
		"python >= 2.6",
	]
	extends_documentation_fragment: "digital_ocean.documentation"
}
