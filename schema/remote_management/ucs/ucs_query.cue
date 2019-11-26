package ansible

module: ucs_query: {
	module: "ucs_query"

	short_description: "Queries UCS Manager objects by class or distinguished name"

	description:
		"-Queries UCS Manager objects by class or distinguished name. - Examples can be used with the UCS Platform Emulator U(https://cs.co/ucspe)."

	extends_documentation_fragment: "ucs"

	options: {
		class_ids: {
			description: [
				"One or more UCS Manager Class IDs to query.",
				"As a comma separated list",
			]
			type: "str"
		}

		distinguished_names: {
			description: [
				"One or more UCS Manager Distinguished Names to query.",
				"As a comma separated list",
			]
			type: "str"
		}

		delegate_to: {
			description: [
				"Where the module will be run",
			]
			default: "localhost"
			type:    "str"
		}
	}

	requirements: [
		"ucsmsdk",
	]

	author: [
		"John McDonough (@movinalot)",
		"CiscoUcs (@CiscoUcs)",
	]
	version_added: "2.10"
}
