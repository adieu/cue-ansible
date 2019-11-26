package ansible

module: vultr_dns_domain_info: {
	module:            "vultr_dns_domain_info"
	short_description: "Gather information about the Vultr DNS domains available."
	description: [
		"Gather information about DNS domains available in Vultr.",
	]
	version_added:                  "2.9"
	author:                         "Yanis Guenane (@Spredzy)"
	extends_documentation_fragment: "vultr"
}
