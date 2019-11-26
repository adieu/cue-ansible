package ansible

module: scaleway_image_info: {
	module:            "scaleway_image_info"
	short_description: "Gather information about the Scaleway images available."
	description: [
		"Gather information about the Scaleway images available.",
	]
	version_added: "2.9"
	author: [
		"Yanis Guenane (@Spredzy)",
		"Remy Leone (@sieben)",
	]
	extends_documentation_fragment: "scaleway"

	options: region: {
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
