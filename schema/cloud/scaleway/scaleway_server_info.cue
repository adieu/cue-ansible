package ansible

module: scaleway_server_info: {
	module:            "scaleway_server_info"
	short_description: "Gather information about the Scaleway servers available."
	description: [
		"Gather information about the Scaleway servers available.",
	]
	version_added: "2.9"
	author: [
		"Yanis Guenane (@Spredzy)",
		"Remy Leone (@sieben)",
	]
	extends_documentation_fragment: "scaleway"
	options: region: {
		description: [
			"Scaleway region to use (for example C(par1)).",
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
