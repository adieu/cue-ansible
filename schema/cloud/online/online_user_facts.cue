package ansible

module: online_user_facts: {
	module: "online_user_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(online_user_info) instead."
	}
	short_description: "Gather facts about Online user."
	description: [
		"Gather facts about the user.",
	]
	version_added: "2.7"
	author: [
		"Remy Leone (@sieben)",
	]
	extends_documentation_fragment: "online"
}
