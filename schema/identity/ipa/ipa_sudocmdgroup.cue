package ansible

module: ipa_sudocmdgroup: {
	module:            "ipa_sudocmdgroup"
	author:            "Thomas Krahn (@Nosmoht)"
	short_description: "Manage FreeIPA sudo command group"
	description: [
		"Add, modify or delete sudo command group within IPA server using IPA API.",
	]
	options: {
		cn: {
			description: [
				"Sudo Command Group.",
			]
			aliases: ["name"]
			required: true
		}
		description: description: [
			"Group description.",
		]
		state: {
			description: "State to ensure"
			default:     "present"
			choices: ["present", "absent", "enabled", "disabled"]
		}
		sudocmd: description: [
			"List of sudo commands to assign to the group.",
			"If an empty list is passed all assigned commands will be removed from the group.",
			"If option is omitted sudo commands will not be checked or changed.",
		]
	}
	extends_documentation_fragment: "ipa.documentation"
	version_added:                  "2.3"
}
