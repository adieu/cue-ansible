package ansible

module: vultr_network_info: {
	module:            "vultr_network_info"
	short_description: "Gather information about the Vultr networks available."
	description: [
		"Gather information about networks available in Vultr.",
	]
	version_added:                  "2.9"
	author:                         "Yanis Guenane (@Spredzy)"
	extends_documentation_fragment: "vultr"
}
