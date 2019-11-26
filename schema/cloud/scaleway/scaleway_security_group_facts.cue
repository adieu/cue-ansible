package ansible

module: scaleway_security_group_facts: {
	module: "scaleway_security_group_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(scaleway_security_group_info) instead."
	}
	short_description: "Gather facts about the Scaleway security groups available."
	description: [
		"Gather facts about the Scaleway security groups available.",
	]
	version_added: "2.7"
	author: [
		"Yanis Guenane (@Spredzy)",
		"Remy Leone (@sieben)",
	]
	options: region: {
		version_added: "2.8"
		description: [
			"Scaleway region to use (for example par1).",
		]
		required: true
		choices: [
			"ams1",
			"EMEA-NL-EVS",
			"par1",
			"EMEA-FR-PAR1",
		]
	}
	extends_documentation_fragment: "scaleway"
}
