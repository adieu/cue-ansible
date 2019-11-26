package ansible

module: vultr_network_facts: {
	module: "vultr_network_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(vultr_network_info) instead."
	}
	short_description: "Gather facts about the Vultr networks available."
	description: [
		"Gather facts about networks available in Vultr.",
	]
	version_added:                  "2.7"
	author:                         "Yanis Guenane (@Spredzy)"
	extends_documentation_fragment: "vultr"
}
