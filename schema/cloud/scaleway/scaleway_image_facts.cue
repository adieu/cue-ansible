package ansible

module: scaleway_image_facts: {
	module: "scaleway_image_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(scaleway_image_info) instead."
	}
	short_description: "Gather facts about the Scaleway images available."
	description: [
		"Gather facts about the Scaleway images available.",
	]
	version_added: "2.7"
	author: [
		"Yanis Guenane (@Spredzy)",
		"Remy Leone (@sieben)",
	]
	extends_documentation_fragment: "scaleway"

	options: region: {
		version_added: "2.7"
		description: [
			"Scaleway compute zone",
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
