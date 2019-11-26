package ansible

module: digital_ocean_sshkey_info: {
	module:            "digital_ocean_sshkey_info"
	short_description: "Gather information about DigitalOcean SSH keys"
	description: [
		"This module can be used to gather information about DigitalOcean SSH keys.",
		"This module replaces the C(digital_ocean_sshkey_facts) module.",
	]
	version_added:                  "2.9"
	author:                         "Patrick Marques (@pmarques)"
	extends_documentation_fragment: "digital_ocean.documentation"
	notes: [
		"Version 2 of DigitalOcean API is used.",
	]
	requirements: ["python >= 2.6"]
}
