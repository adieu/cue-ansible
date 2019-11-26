package ansible

module: ipa_hostgroup: {
	module:            "ipa_hostgroup"
	author:            "Thomas Krahn (@Nosmoht)"
	short_description: "Manage FreeIPA host-group"
	description: [
		"Add, modify and delete an IPA host-group using IPA API",
	]
	options: {
		cn: {
			description: [
				"Name of host-group.",
				"Can not be changed as it is the unique identifier.",
			]
			required: true
			aliases: ["name"]
		}
		description: description: [
			"Description",
		]
		host: description: [
			"List of hosts that belong to the host-group.",
			"If an empty list is passed all hosts will be removed from the group.",
			"If option is omitted hosts will not be checked or changed.",
			"If option is passed all assigned hosts that are not passed will be unassigned from the group.",
		]
		hostgroup: description: [
			"List of host-groups than belong to that host-group.",
			"If an empty list is passed all host-groups will be removed from the group.",
			"If option is omitted host-groups will not be checked or changed.",
			"If option is passed all assigned hostgroups that are not passed will be unassigned from the group.",
		]
		state: {
			description: [
				"State to ensure.",
			]
			default: "present"
			choices: ["present", "absent", "enabled", "disabled"]
		}
	}
	extends_documentation_fragment: "ipa.documentation"
	version_added:                  "2.3"
}
