package ansible

module: vultr_user_facts: {
	module:            "vultr_user_facts"
	short_description: "Gather facts about the Vultr user available."
	description: [
		"Gather facts about users available in Vultr.",
	]
	version_added: "2.7"
	author:        "Yanis Guenane (@Spredzy)"
	deprecated: {
		removed_in:  "2.12"
		why:         "Transformed into an info module."
		alternative: "Use M(vultr_user_info) instead."
	}
	extends_documentation_fragment: "vultr"
}
