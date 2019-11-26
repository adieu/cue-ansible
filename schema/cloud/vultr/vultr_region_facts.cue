package ansible

module: vultr_region_facts: {
	module: "vultr_region_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(vultr_region_info) instead."
	}
	short_description: "Gather facts about the Vultr regions available."
	description: [
		"Gather facts about regions available to boot servers.",
	]
	version_added:                  "2.7"
	author:                         "Yanis Guenane (@Spredzy)"
	extends_documentation_fragment: "vultr"
}
