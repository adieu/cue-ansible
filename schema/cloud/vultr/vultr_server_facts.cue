package ansible

module: vultr_server_facts: {
	module: "vultr_server_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(vultr_server_info) instead."
	}
	short_description: "Gather facts about the Vultr servers available."
	description: [
		"Gather facts about servers available.",
	]
	version_added:                  "2.7"
	author:                         "Yanis Guenane (@Spredzy)"
	extends_documentation_fragment: "vultr"
}
