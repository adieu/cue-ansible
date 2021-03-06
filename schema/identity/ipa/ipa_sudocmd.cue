package ansible

module: ipa_sudocmd: {
	module:            "ipa_sudocmd"
	author:            "Thomas Krahn (@Nosmoht)"
	short_description: "Manage FreeIPA sudo command"
	description: [
		"Add, modify or delete sudo command within FreeIPA server using FreeIPA API.",
	]
	options: {
		sudocmd: {
			description: [
				"Sudo Command.",
			]
			aliases: ["name"]
			required: true
		}
		description: description: [
			"A description of this command.",
		]
		state: {
			description: "State to ensure"
			default:     "present"
			choices: ["present", "absent", "enabled", "disabled"]
		}
	}
	extends_documentation_fragment: "ipa.documentation"
	version_added:                  "2.3"
}
