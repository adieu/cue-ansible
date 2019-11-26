package ansible

module: scaleway_server_facts: {
	module: "scaleway_server_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(scaleway_server_info) instead."
	}
	short_description: "Gather facts about the Scaleway servers available."
	description: [
		"Gather facts about the Scaleway servers available.",
	]
	version_added: "2.7"
	author: [
		"Yanis Guenane (@Spredzy)",
		"Remy Leone (@sieben)",
	]
	extends_documentation_fragment: "scaleway"
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
}
